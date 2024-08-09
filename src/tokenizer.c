#include "common.h"
#include "grammar.h"
#include "list.h"
#include "strntol.h"
#include "thunk.h"
#include "tokenizer.h"
#include "richloc.h"
#include "lex-dump.h"

#include <assert.h>
#include <errno.h>
#include <ctype.h>
#include <stdbool.h>
#include <stdio.h>

#define copy_lexeme_into_heap(src) \
  ({ \
    struct lexeme* ret = calloc (1, sizeof (struct lexeme)); \
    memcpy (ret, &(src), sizeof (struct lexeme)); \
    ret; \
  })

#define try_append_lexeme(list, val_) \
  { \
    auto val = val_; \
    if (val != NULL) \
      (list)->append (val); \
  }

#define create_lexeme(stream, type_, length_) \
  ({ \
    struct lexeme lex = { \
      .type = type_, \
      .raw = (stream)->peek (0), \
      .length = length_, \
      .line_no = thunk_public_attr(stream, line_no), \
      .line_offs = thunk_public_attr(stream, line_offs), \
    }; \
    lex; \
  })

#define consume_single_lexeme(list, stream, type_) \
  { \
    struct lexeme lex = create_lexeme(stream, type_, 1); \
    (list)->append (copy_lexeme_into_heap (lex)); \
    (stream)->consume (1); \
  }

static impln(richloc_ctx_t) richloc_ctx;

bool
is_lex_sep (char c)
{
  return isspace (c) || c == ';';
}

bool
is_identifier (char c)
{
  return isalnum (c) || c == '$' || c == '_';
}

bool
quoted_raw_strlen (impln(bytestream_t) stream, char** end, char quote)
{
  size_t prefix_length = 0, length = 0;
  char* current = stream->peek (0);
  while (current != NULL && (current = stream->peek (prefix_length + 1)))
    {
      length++;
      if (*current == '(')
        break;
      if (!isalnum (*current))
      {
        if (isspace (*current))
        {
          richloc_ctx->push (
              NULL, CriticalError,
              "whitespace/new-line in raw-string delimiter");
          return false;
        }
        richloc_ctx->push (
          NULL, CriticalError,
          "non-alphanumeric character in raw-string delimiter");
        return false;
      }
      prefix_length++;
    }

  if (current == NULL)
    {
      richloc_ctx->push (NULL, CriticalError,
                         "expected prefix in raw-string");
      *end = stream->peek (prefix_length - 2);
      return false;
    }
 
  char* prefix_start = stream->peek (1);
  bool terminated = false;

  while (current != NULL && (current = stream->peek (length)))
  {
    char* next = stream->peek (length + 1);
    if (next != NULL && *current == ')'
        && !strncmp (next, prefix_start, prefix_length)
        && *(char *)stream->peek (length + prefix_length + 1) == quote)
    {
      length += prefix_length;
      terminated = true;
      break;
    }
    length++;
  }

  if (!terminated)
    {
      richloc_ctx->push (NULL, CriticalError, "unterminated raw-string");
      *end = stream->peek (length - 2);
      return false;
    }
  ucc_log ("RawString(%zu bytes) with prefix '%.*s'\n",
           length, prefix_length, prefix_start);
  *end = stream->peek (length + 1);
  return true;
}

bool
quoted_strlen (impln(bytestream_t) stream, char** end, char quote,
               bool is_raw)
{
  if (is_raw)
    return quoted_raw_strlen (stream, end, quote);

  size_t length = 1;
  char *current = stream->peek (0),
       *start = stream->peek (0),
       *next = stream->peek (0);
  while (current != NULL && (current = stream->peek (length++)))
    {
      next = stream->peek (length);
      if (next != NULL && *current == '\\' && *next == quote)
      {
        length++;
        continue;
      }
      if (*current == quote)
        {
          *end = current;
          return true;
        }
    }
  richloc_ctx->push (NULL, CriticalError,
                     "unterminated string/character literal");
  *end = stream->peek (length - 2);
  return false;
}

impln(bytestream_t)
new_bytestream (void* data, size_t size, size_t length)
{
  auto stream = new_object(bytestream_t);
  thunk_public_attr(stream, data) = data;
  thunk_public_attr(stream, size) = size;
  thunk_public_attr(stream, length) = length;
  return stream;
}

declare_thunk_method(tokenizer_t, load_file) (
  thunk_self_ty(tokenizer_t) self, const char* const path)
{
#define FILE_MEMBSIZE (sizeof (char))
  auto fp = fopen (path, "r");
  if (fp == NULL)
    {
      file_exception exc = {.msg = "fopen() failed",.errcode = errno };
      return thunk_error_t(tokenizer_t, load_file, exc);
    }

  struct translation_unit* tru = calloc (1, sizeof (struct translation_unit));
  tru->io.path = path;

  fseek (fp, 0, SEEK_END);
  auto file_size = ftell (fp);
  rewind (fp);

  char* data = calloc (file_size + 1, FILE_MEMBSIZE);
  auto nread = fread (data, sizeof (char), file_size, fp);
  assert (nread == file_size / FILE_MEMBSIZE);
  fclose (fp);

  tru->io.stream = new_bytestream (data, FILE_MEMBSIZE, file_size);
  thunk_public_attr(tru->io.stream, path) = path;
  ucc_log("%s: created bytestream (%zu bytes)\n", path, nread);
  auto tr = thunk_public_attr(self, context).translation_units->append (tru);
  return thunk_result_t(tokenizer_t, load_file, tr);
}

struct lexeme*
consume_integer_suffix (struct lexeme* constant,
                        impln(bytestream_t) stream)
{
#define SET_SUFFIX(lexeme, ctx, type, unsigned) \
  { \
    (lexeme)->ctx_for.ctx.suffix = type; \
    (lexeme)->ctx_for.ctx.is_unsigned = unsigned; \
  }

  char *current;
  size_t suffix_length = 0;

  while ((current = stream->peek (constant->length + suffix_length))
         != NULL && isalpha (*current))
    suffix_length++;

  char* start_suffix = stream->peek (constant->length);
  SET_SUFFIX(constant, integer_constant, NoIntegerSuffix, false);

  if (!strncasecmp (start_suffix, "ull", suffix_length)
      || !strncasecmp (start_suffix, "llu", suffix_length))
    {
      SET_SUFFIX(constant, integer_constant, LongLongSuffix, true);
    }
  else if (!strncasecmp (start_suffix, "ul", suffix_length)
      || !strncasecmp (start_suffix, "lu", suffix_length))
    {
      SET_SUFFIX(constant, integer_constant, LongSuffix, true);
    }
  else if (!strncasecmp (start_suffix, "l", suffix_length))
    {
      SET_SUFFIX(constant, integer_constant, LongSuffix, false);
    }
  else if (!strncasecmp (start_suffix, "u", suffix_length))
    {
      SET_SUFFIX(constant, integer_constant, NoIntegerSuffix, true);
    }
  else
    {
      richloc_ctx->push (constant, CriticalError,
                         "invalid suffix for integer");
    }
  ucc_log ("Number(%.*s) [suffix: '%.*s']\n", constant->length,
           stream->peek (0), suffix_length, start_suffix);
  stream->consume (constant->length + suffix_length);
  return copy_lexeme_into_heap(*constant);
}

bool
consume_floating_suffix (impln(bytestream_t) stream, struct lexeme* lex)
{
  size_t start = lex->length;
  char *current = stream->peek (lex->length++);
  size_t suffix_length = 1;

  if (tolower (*current) == 'f')
    lex->ctx_for.floating_constant.suffix = FloatSuffix;
  else if (tolower (*current) == 'l')
    lex->ctx_for.floating_constant.suffix = LongDoubleSuffix;

  while (current != NULL && (current = stream->peek (lex->length++)))
    {
      if (!isalnum (*current))
        break;
      suffix_length++;
    }
  lex->length--;

  if (suffix_length != 1)
  {
    richloc_ctx->push (lex, CriticalError,
                       "invalid suffix on floating constant");
    return false;
  }

  char suffix = *(char *)(stream->peek (lex->length) - suffix_length);
  if (suffix == 'f')
    lex->ctx_for.floating_constant.suffix = FloatSuffix;
  else if (suffix == 'l')
    lex->ctx_for.floating_constant.suffix = LongDoubleSuffix;
  else
    {
      richloc_ctx->push (lex, CriticalError,
                         "unknown suffix on floating constant");
      return false;
    }

  ucc_log("Parsed float suffix (%zu bytes): '%.*s'\n",
          suffix_length,
          suffix_length, stream->peek (lex->length) - suffix_length);
  return true;
}

bool
consume_number_exponent (impln(bytestream_t) stream, struct lexeme* lex)
{
  char *current = stream->peek (lex->length++),
       *next = stream->peek (lex->length);
  size_t exp_length = 1;

  if (next && (*next == '+' || *next == '-'))
    {
      lex->length++;
      exp_length++;
    }

  while (current != NULL && (current = stream->peek (lex->length)))
    {
      if (!isdigit (*current))
        break;
      lex->length++;
      exp_length++;
    }

  if (lex->length - 1 == 1)
    {
      richloc_ctx->push (lex, CriticalError, "expected numeric exponent");
      return false;
    }
  ucc_log("Parsed exponent (%zu bytes): %.*s\n",
          exp_length, exp_length, stream->peek (lex->length - exp_length));
  return true;
}

struct lexeme*
consume_hex_floating_number (impln(bytestream_t) stream)
{
  struct lexeme lex = create_lexeme(stream, FloatingConstant, 2);
  lex.ctx_for.floating_constant.base = HexadecimalFloatingConstant;

  char* current = stream->peek (0);
  bool has_exponent = false;

  while (current != NULL && (current = stream->peek (lex.length)))
  {
    if (!has_exponent && tolower (*current) == 'p')
      {
        if (!consume_number_exponent (stream, &lex))
          {
            stream->consume (lex.length);
            return NULL;
          }
        has_exponent = true;
        continue;
      }
    if (has_exponent && isalpha (*current))
      {
        if (!consume_floating_suffix (stream, &lex))
          {
            stream->consume (lex.length);
            return NULL;
          }
        break;
      }
    else if (*current != '.' && !isxdigit (*current))
      break;
    lex.length++;
  }

  ucc_log("HexFloat(%zu bytes): '%.*s'\n", lex.length, lex.length, lex.raw);
  stream->consume (lex.length);
  return copy_lexeme_into_heap (lex);
}

struct lexeme*
consume_floating_number (impln(bytestream_t) stream)
{
  struct lexeme lex = create_lexeme(stream, FloatingConstant, 0);
  lex.ctx_for.floating_constant.base = DecimalFloatingConstant;

  char* current = stream->peek (0);
  bool has_exponent = false;

  while (current != NULL && (current = stream->peek (lex.length)))
  {
    if (!has_exponent && tolower (*current) == 'e')
      {
        if (!consume_number_exponent (stream, &lex))
          {
            stream->consume (lex.length);
            return NULL;
          }
        has_exponent = true;
        continue;
      }
    if (isalpha (*current))
      {
        if (!consume_floating_suffix (stream, &lex))
          {
            stream->consume (lex.length);
            return NULL;
          }
        break;
      }
    else if (*current != '.' && !isdigit (*current))
      break;
    lex.length++;
  }

  ucc_log("Float(%zu bytes): '%.*s'\n", lex.length, lex.length, lex.raw);
  stream->consume (lex.length);
  return copy_lexeme_into_heap (lex);
}

struct lexeme*
consume_hexadecimal_number (impln(bytestream_t) stream)
{
  struct lexeme hex = create_lexeme(stream, IntegerConstant, 2);
  hex.ctx_for.integer_constant.base = HexadecimalConstant;

  char* current;
  while ((current = stream->peek (hex.length)) != NULL
        && isxdigit (*current))
    hex.length++;

  if (current && *current == '.')
    return consume_hex_floating_number (stream);  // :(
  if (current && isalpha (*current))
    return consume_integer_suffix (&hex, stream);

  stream->consume (hex.length);
  return copy_lexeme_into_heap (hex);
}

struct lexeme*
consume_octal_number (impln(bytestream_t) stream)
{
  struct lexeme octal = create_lexeme(stream, IntegerConstant, 1);
  octal.ctx_for.integer_constant.base = OctalConstant;

  char *current;
  bool maybe_decimal = false;
  while ((current = stream->peek (octal.length)) != NULL
        && isdigit (*current))
  {
    if (*current > '7')
      maybe_decimal = true;
    octal.length++;
  }

  ucc_log ("lexed octal (%s) '%.*s'\n", maybe_decimal? "maybe": "definitely",
           octal.length, stream->peek (0));

  if (maybe_decimal)
    {
      /* OctalDigits '.' DigitSequence FloatSuffix?
       * is coerced into a DecimalFloatingConstant
       * on GCC
       */
      if (current == NULL || *current != '.')
      {
        richloc_ctx->push (&octal, CriticalError, "invalid digit in octal");
      }
      else
        return consume_floating_number (stream);
    }

  if (current && isalpha (*current))
    return consume_integer_suffix (&octal, stream);

  stream->consume (octal.length);
  return copy_lexeme_into_heap (octal);
}

struct lexeme*
consume_number (impln(bytestream_t) stream)
{
  char *current = stream->peek (0),
       *next = stream->peek (1);

  if (next != NULL && tolower (*next) == 'x')
    return consume_hexadecimal_number (stream);
  if (*current == '0' && (next != NULL && isdigit (*next)))
    return consume_octal_number (stream);
  if (*current == '.' || (next != NULL && *next == '.'))
    return consume_floating_number (stream);

  struct lexeme decimal_constant = create_lexeme(stream, IntegerConstant, 0);
  decimal_constant.ctx_for.integer_constant.base = DecimalConstant;

  while ((current = stream->peek (decimal_constant.length)) != NULL)
  {
    if (!isdigit (*current))
    {
      if (*current == '.')
        return consume_floating_number (stream);
      if (isalpha (*current))
        return consume_integer_suffix (&decimal_constant, stream);
      break;
    }
    decimal_constant.length++;
  }
  ucc_log("Number(%.*s)\n", decimal_constant.length, decimal_constant.raw);
  stream->consume (decimal_constant.length);
  return copy_lexeme_into_heap(decimal_constant);
}

struct strchr_prefix
{
  enum strchr_encoding encoding;
  size_t length;
  bool is_raw;
};

struct lexeme*
consume_comment (impln(bytestream_t) stream)
{
  struct lexeme lex = create_lexeme(stream, BlockComment, 2);

  char *current = stream->peek (0),
       *next = stream->peek (1);

  if (*next == '/')
  {
    stream->consume (2);
    lex.length += stream->consume_until ("\n");
    ucc_log("BlockComment(%zu bytes)\n", lex.length);
    return copy_lexeme_into_heap(lex);
  }

  /* assume multiline comment */
  while ((current = stream->peek (lex.length)) != NULL)
  {
    next = stream->peek (++lex.length);
    if (*current == '*' && *next == '/')
      {
        lex.length++;
        break;
      }
  }

  if (current == NULL)
  {
    richloc_ctx->push (&lex, CriticalError, "unterminated comment");
    stream->consume (lex.length);
    return NULL;
  }

  ucc_log("MultiComment(%zu bytes)\n", lex.length);
  stream->consume (lex.length);
  return copy_lexeme_into_heap (lex);
}

char*
clone_raw_escaped_sequence (char* start, size_t* out_length, size_t length)
{
  for (; *start != '('; ++start)
    length--;
  start++;
  for (; start[length] != ')'; length--);
  char* alloc = calloc (length + 1, sizeof (char));
  *out_length = length;
  memcpy (alloc, start, length);
  return alloc;
}

char*
clone_escaped_sequence (char* start, size_t* out_length, size_t length,
                        bool is_raw)
{
  if (is_raw)
    return clone_raw_escaped_sequence (start, out_length, length);
  char* alloc = calloc (length + 1, sizeof (char));
  size_t dst_i = 0;
  for (size_t i = 0; i < length; ++i)
  {
    char src_char = start[i];
    if (src_char == '\\')
    {
      if (i + 1 >= length)
      {
        richloc_ctx->push (NULL, CriticalError,
                           "stray '\\' in string/character");
        free (alloc);
        return NULL;
      }
      switch (start[i + 1])
      {
      #define SET_ALLOC_CASE(c, to) \
          case c: alloc[dst_i++] = to; i++; break;
        SET_ALLOC_CASE('\'', '\'');
        SET_ALLOC_CASE('"', '"');
        SET_ALLOC_CASE('?', '?');
        SET_ALLOC_CASE('a', '\a');
        SET_ALLOC_CASE('n', '\n');
        SET_ALLOC_CASE('f', '\f');
        SET_ALLOC_CASE('b', '\b');
        SET_ALLOC_CASE('r', '\r');
        SET_ALLOC_CASE('t', '\t');
        SET_ALLOC_CASE('v', '\v');
        SET_ALLOC_CASE('\\', '\\');
        case 'x':
        {
          char* hex_end = &start[i + 2];
          size_t seq_length = 0;
          while (isxdigit (*hex_end))
            {
              hex_end++;
              seq_length++;
            }
          hex_end -= min(2, seq_length);
          alloc[dst_i++]
            = (char)strntol (hex_end, min(2, seq_length), NULL, 16);
          i += seq_length + 1;
          break;
        }
        case '0' ... '7':
        {
          char* octal_end = &start[i + 1];
          size_t octal_length;
          for (octal_length = 0; octal_length < 3; ++octal_length)
          {
            if (*octal_end < '0' || *octal_end > '7')
              break;
            octal_end++;
          }
          alloc[dst_i++] = strntol (
            octal_end - octal_length, octal_length, NULL, 8);
          i += octal_length;
          break;
        }
        default:
          richloc_ctx->push (NULL, CriticalError, "unknown escape sequence");
          free (alloc);
          return NULL;
      }
    }
    else
    {
      alloc[dst_i++] = src_char;
    }
  }
  *out_length = dst_i;
  return alloc;
}

struct lexeme*
consume_string (impln(bytestream_t) stream, struct strchr_prefix* prefix)
{
  if (stream->peek (1) == NULL)
  {
    richloc_ctx->push (NULL, CriticalError,
                       "unterminated string/character literal");
    return NULL;
  }

  char quote_ty = *(char *)stream->peek (0);
  char *start = stream->peek (0), *end;

  if (!quoted_strlen(stream, &end, quote_ty,
                     (prefix != NULL)? prefix->is_raw: false))
    {
      stream->consume (end - start +  1);
      return NULL;
    }

  size_t length = end - start + 1;

  struct lexeme lex = create_lexeme(
    stream, (quote_ty == '"')? StringConstant: CharacterConstant, length - 2);
  lex.raw = start + 1;
  lex.ctx_for.character_constant.encoding
    = (prefix != NULL)? prefix->encoding: Ordinary;

  if (quote_ty == '\'')
    {
      if (!(length - 2))
      {
        lex.raw--;
        lex.length += 2;
        richloc_ctx->push (&lex, CriticalError, "empty character constant");
        stream->consume (length);
        return NULL;
      }
      lex.ctx_for.character_constant.encoding
        = (prefix != NULL)? prefix->encoding: Ordinary;
      size_t* esc_length = &lex.ctx_for.character_constant.length;
      lex.ctx_for.character_constant.escaped
        = clone_escaped_sequence (start + 1, esc_length, length - 2, false);
      char* escaped = lex.ctx_for.character_constant.escaped;
      if (escaped != NULL)
        ucc_log("EscapedCharacter(%zu bytes): '%.*s'\n",
                *esc_length, *esc_length, escaped);
    }
  else
    {
      lex.ctx_for.string_constant.encoding
        = (prefix != NULL)? prefix->encoding: Ordinary;
      lex.ctx_for.string_constant.is_raw
        = (prefix != NULL)? prefix->is_raw: false;
      size_t* esc_length = &lex.ctx_for.string_constant.length;
      lex.ctx_for.string_constant.escaped
        = clone_escaped_sequence (start + 1, esc_length, length - 2,
                                  lex.ctx_for.string_constant.is_raw);
      char* escaped = lex.ctx_for.string_constant.escaped;
      if (escaped != NULL)
        ucc_log("EscapedString(%zu bytes): '%.*s'\n",
                *esc_length, *esc_length, escaped);
    }
  ucc_log("%s(%zu bytes): %.*s\n",
          (quote_ty == '\'')? "Character": "String",
          length, length, stream->peek (0));
  stream->consume (length);
  return copy_lexeme_into_heap (lex);
}

struct strchr_prefix
maybe_get_strchar_encoding (impln(bytestream_t) stream, size_t length,
                            bool is_char)
{
  char *current = stream->peek (0),
       *next = stream->peek (1);
  struct strchr_prefix prefix = {
    .encoding = Ordinary,
    .is_raw = false
  };

  if (is_char)
    {
      if (length != 1)
        return prefix;
      if (*current == 'L')
        prefix.encoding = WideEncoding;
      else if (*current == 'u')
        prefix.encoding = Utf16Encoding;
      else if (*current == 'U')
        prefix.encoding = Utf32Encoding;
      prefix.length = 1;
      return prefix;
    }

  if (strchr ("uULR", *current) == NULL)
    return prefix;

  size_t index = 0;
  prefix.length++;

  switch (*current)
  {
    case 'u':
      prefix.encoding = Utf16Encoding;
      index++;
      if (next && *next == '8')
        {
          prefix.encoding = Utf8Encoding;
          index++;
        }
      break;
    case 'U':
      prefix.encoding = Utf32Encoding;
      index++;
      break;
    case 'L':
      prefix.encoding = WideEncoding;
      index++;
      break;
    case 'R':
      prefix.is_raw = true;
      return prefix;
  }

  next = stream->peek (index);
  if (next && *next == 'R')
    {
      prefix.is_raw = true;
      prefix.length++;
    }

  return prefix;
}

void
identify_identifier (impln(bytestream_t) stream, struct lexeme* lex)
{
  lex->ctx_for.identifier.is_keyword = grm_is_keyword (lex);
  lex->ctx_for.identifier.is_type_qual = grm_is_type_qualifier (lex);
  lex->ctx_for.identifier.is_type_spec = grm_is_type_specifier(lex);
  lex->ctx_for.identifier.is_func_spec = grm_is_function_specifier(lex);
}

struct lexeme*
consume_identifier (impln(bytestream_t) stream)
{
  size_t length = 1;
  char* current = stream->peek (length);

  while (current && is_identifier (*current))
    current = stream->peek (++length);

  if (current && (*current == '\'' || *current == '"'))
  {
    auto suffix = maybe_get_strchar_encoding(stream, length,
                                             *current == '\'');
    ucc_log("string prefix parsing\n");
    if (suffix.encoding != Ordinary || suffix.is_raw)
    {
      stream->consume (suffix.length);
      return consume_string (stream, &suffix);
    }
  }

  struct lexeme ident = create_lexeme(stream, Identifier, length);

  identify_identifier (stream, &ident);
  ucc_log("Identifier(%.*s)\n", length, ident.raw);

  stream->consume (length);
  return copy_lexeme_into_heap(ident);
}

struct lexeme*
consume_directive (impln(bytestream_t) stream)
{
  ucc_info("Preprocessor directives are not supported in parsing\n");
  struct lexeme lex = create_lexeme(stream, PreprocessorDirective, 0);
  char *current = stream->peek (0),
       *next = stream->peek (1);
  
  while (current != NULL && (current = stream->peek (lex.length)))
  {
    lex.length++;
    next = stream->peek (lex.length);
    if (next != NULL && *current != '\\' && *next == '\n')
      break;
  }
  ucc_log ("Directive(%zu bytes) '%.*s'\n", lex.length, min(16, lex.length),
           lex.raw);
  stream->consume (lex.length);
  return copy_lexeme_into_heap(lex);
}

impln(list_t)
lex_translation_unit (thunk_self_ty(tokenizer_t) self,
                      struct translation_unit* unit)
{
#define SINGLE_LEXEME_CASE(c, type) \
    case c: consume_single_lexeme(lexemes, stream, type); break;
#define MULTI_LEXEME_CASE(c1, c2, type_, suffix) \
  case c1: \
  { \
    struct lexeme lex = create_lexeme(stream, type_, 1); \
    if (next && *next == c2) \
      { \
        lex.type = type_ ## suffix; \
        lex.length++; \
      } \
    lexemes->append (copy_lexeme_into_heap (lex)); \
    stream->consume (lex.length); \
    break; \
  }

  auto stream = unit->io.stream;
  auto lexemes = new_object(list_t);
  richloc_ctx->set_stream (stream);

  char *chr, *next, *next2;

  while ((chr = stream->peek (0)) != NULL)
    {
      next = stream->peek (1);
      next2 = stream->peek (2);

      switch (*chr)
      {
        case '\t':
        case '\v':
        case '\r':
        case ' ':
          stream->consume (1);
          break;

        SINGLE_LEXEME_CASE('\n', NewLine);
        SINGLE_LEXEME_CASE(';', Semi);
        SINGLE_LEXEME_CASE('(', LeftParen);
        SINGLE_LEXEME_CASE(')', RightParen);
        SINGLE_LEXEME_CASE('{', LeftBrace);
        SINGLE_LEXEME_CASE('}', RightBrace);
        SINGLE_LEXEME_CASE('[', LeftBracket);
        SINGLE_LEXEME_CASE(']', RightBracket);
        SINGLE_LEXEME_CASE(',', Comma);
        SINGLE_LEXEME_CASE(':', Colon);
        SINGLE_LEXEME_CASE('~', Tilde);

        MULTI_LEXEME_CASE('%', '=', Mod, Assign);
        MULTI_LEXEME_CASE('^', '=', Caret, Assign);
        MULTI_LEXEME_CASE('&', '=', And, Assign)
        MULTI_LEXEME_CASE('*', '=', Star, Assign);
        MULTI_LEXEME_CASE('=', '=', Assign, Equal);

        case '#':
        {
          try_append_lexeme(lexemes, consume_directive (stream));
          break;
        }
        case '!':
        {
          struct lexeme lex = create_lexeme(stream, Not, 1);
          if (next && (*next == '='))
            {
              lex.type = NotEqual;
              lex.length++;
            }
          lexemes->append (copy_lexeme_into_heap(lex));
          stream->consume (lex.length);
          break;
        }
        case '|':
        {
          struct lexeme lex = create_lexeme(stream, Or, 1);
          if (next && (*next == '='))
            {
              lex.type = OrAssign;
              lex.length++;
            }
          else if (next && (*next == '|'))
            {
              lex.type = OrOr;
              lex.length++;
            }
          lexemes->append (copy_lexeme_into_heap(lex));
          stream->consume (lex.length);
          break;
        }
        case '/':
        {
          struct lexeme lex = create_lexeme(stream, Div, 1);
          if (next && (*next == '='))
            {
              lex.type = DivAssign;
              lex.length++;
            }
          else if (next && (*next == '*' || *next == '/'))
            {
              struct lexeme* lex = consume_comment (stream);
              if (lex == NULL)
                break;
              if (thunk_public_attr(self, flags).tokenize_comments)
                lexemes->append (lex);
              else
                free (lex);
              break;
            }
          lexemes->append (copy_lexeme_into_heap (lex));
          stream->consume (lex.length);
          break;
        }
        case '"':
        case '\'':
          try_append_lexeme(lexemes, consume_string (stream, NULL));
          break;
        case '+':
        case '-':
        {
          struct lexeme lex = create_lexeme(
            stream, (*chr == '+')? Plus: Minus, 1);
          if (next && *next == *chr)
            {
              ucc_log("%screment\n", (*chr == '+')? "In": "De");
              lex.type = (*chr == '+')? PlusPlus: MinusMinus;
              lex.length++;
            }
          else if (next && *next == '=')
            {
              ucc_log("in place %s assign\n",
                      (*chr == '+')? "additive": "subtractive");
              lex.type = (*chr == '+')? PlusAssign: MinusAssign;
              lex.length++;
            }
          else if (next && *chr == '-' && *next == '>')
            {
              ucc_log("Arrow\n");
              lex.type = Arrow;
              lex.length++;
            }
          lexemes->append (copy_lexeme_into_heap (lex));
          stream->consume (lex.length);
          break;
        }
        case '>':
        case '<':
        {
          struct lexeme lex = create_lexeme(
            stream, (*chr == '<')? Less: Greater, 1);
          if (next && *next == *chr)
            {
              lex.type = (*chr == '<')? LeftShift: RightShift;
              lex.length++;
              if (next2 && *next2 == '=')
                {
                  ucc_log("in place assign, %s bit-shift\n",
                          (*chr == '<')? "left": "right");
                  lex.type = (*chr == '<')? LeftShiftAssign: RightShiftAssign;
                  lex.length++;
                }
              else
                {
                  ucc_log("%s bit-shift\n", (*chr == '<')? "Left": "Right");
                }
            }
          else if (next && *next == '=')
            {
              ucc_log ("%s or equal to\n", (*chr == '<')? "Less": "Greater");
              lex.type = (*chr == '<')? LessEqual: GreaterEqual;
              lex.length++;
            }
          lexemes->append (copy_lexeme_into_heap (lex));
          stream->consume (lex.length);
          break;
        }
        case '.':
          if (next != NULL && !isdigit (*next))
            {
              ucc_log ("Dot\n");
              consume_single_lexeme(lexemes, stream, Dot);
              break;
            }
          /* fallthrough */
        case '0' ... '9':
          try_append_lexeme(lexemes, consume_number (stream));
          break;
        case '_':
        case '$':
        case 'a' ... 'z':
        case 'A' ... 'Z':
          try_append_lexeme(lexemes, consume_identifier (stream));
          break;
        default:
          ucc_error("unknown lexing token: '%c'\n", *chr);
          exit (EXIT_FAILURE);
      }
    }

  if (richloc_ctx->has_errors ())
  {
    richloc_ctx->show_errors ();
    ucc_error("aborting tokenizing process due to lexical errors\n");
    exit (EXIT_FAILURE);
  }

  struct lexeme eof = create_lexeme(stream, EndOfFile, 0);
  lexemes->append (copy_lexeme_into_heap (eof));
  ucc_log("parsed %zu tokens\n", thunk_public_attr (lexemes, length));
  return lexemes;
}

impln(list_t)
tokenize_translation_unit (thunk_self_ty(tokenizer_t) self,
                           struct translation_unit* unit)
{
  ucc_log("%s: lexing translation unit\n", unit->io.path);
  auto lexemes = lex_translation_unit (self, unit);
  if (lexemes == NULL)
    {
      ucc_error ("lexing source files failed, halting compilation.\n");
      exit (EXIT_FAILURE);
    }

  unit->token_stream = lexemes;

  auto lexer_out_path = thunk_public_attr(self, flags).lexer_output;
  if (lexer_out_path != NULL)
    write_lexer_output_to_file(lexemes, lexer_out_path);

  return lexemes;
}

declare_thunk_method(tokenizer_t, tokenize)(
  thunk_self_ty(tokenizer_t) self, struct translation_unit* unit)
{
  ucc_log("%s: tokenizing translation unit\n", unit->io.path);
  tokenize_translation_unit (self, unit);
  return true;
}

declare_thunk_method(tokenizer_t, set_flags)(thunk_self_ty(tokenizer_t) self,
                                            struct compiler_flags* flags)
{
  ucc_log("setting compiler flags (tokenize-comments=%s)\n",
          flags->tokenize_comments? "yes": "no");
  memcpy (&thunk_public_attr(self, flags), flags,
          sizeof (struct compiler_flags));
  return true;
}

declare_thunk_method(tokenizer_t, get_translation_units)(
  thunk_self_ty(tokenizer_t) self)
{
  return thunk_public_attr(self, context).translation_units;
}

declare_thunk_initializer(tokenizer_t)(thunk_self_ty(tokenizer_t) self)
{
  thunk_public_attr(self, context).translation_units = new_object(list_t);
  richloc_ctx = new_object(richloc_ctx_t);
}

void
free_lexeme (struct lexeme* lexeme)
{
  switch (lexeme->type)
  {
    case StringConstant:
      free (lexeme->ctx_for.string_constant.escaped);
      break;
    case CharacterConstant:
      free (lexeme->ctx_for.character_constant.escaped);
      break;
    default: break;
  }
  free (lexeme);
}

declare_thunk_finalizer(tokenizer_t)(thunk_self_ty(tokenizer_t) self)
{
  list_for_each_entry(thunk_public_attr(self, context).translation_units,
                      current)
  {
    ucc_log("finalizing bytestream object and data\n");
    struct translation_unit* tru = current->val;
    auto stream = tru->io.stream;

    ucc_log("finalizing translation unit lexemes (%zu lexemes)\n",
            thunk_public_attr(tru->token_stream, length));
    list_for_each_entry(tru->token_stream, entry)
    {
      struct lexeme* lexeme = entry->val;
      free_lexeme (lexeme);
    }

    ucc_log("%s: freeing stream object and translation unit\n", tru->io.path);
    free_object (tru->token_stream);

    free (thunk_public_attr(stream, data));
    free_object(stream);

    free (tru);
  }
  free_object(thunk_public_attr(self, context).translation_units);
  free_object(richloc_ctx);
}
