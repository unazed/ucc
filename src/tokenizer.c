#include "common.h"
#include "grammar.h"
#include "thunk.h"
#include "tokenizer.h"

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
    else \
      reject = true; \
  }

#define consume_single_lexeme(list, stream, type_) \
  { \
    ucc_log (#type_ "\n"); \
    struct lexeme lex = { \
      .type = type_, \
      .raw = (stream)->peek (0), \
      .length = 1 \
    }; \
    (list)->append (copy_lexeme_into_heap (lex)); \
    (stream)->consume (1); \
  }

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

char*
quoted_strlen (impln(bytestream_t) stream, char quote)
{
  size_t length = 1;
  char* next = stream->peek (0);
  while (next != NULL && (next = stream->peek (length++)))
    if (*next == quote)
      return next;
  return NULL;
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

  char* data = calloc (file_size, FILE_MEMBSIZE);
  auto nread = fread (data, sizeof (char), file_size, fp);
  assert (nread == file_size / FILE_MEMBSIZE);
  fclose (fp);

  tru->io.stream = new_bytestream (data, FILE_MEMBSIZE, file_size);
  ucc_log("%s: created bytestream (%zu bytes) @ %p\n", path,
          nread, tru->io.stream);
  thunk_public_attr(self, context).translation_units->append (tru);
  return thunk_result_t(tokenizer_t, load_file, true);
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

  if (!strncasecmp (start_suffix, "ull", suffix_length)
      || !strncasecmp (start_suffix, "llu", suffix_length))
    {
      SET_SUFFIX(constant, integer_constant, LongLongSuffix, true);
    }
  else if (!strncasecmp (start_suffix, "ul", suffix_length)
      || !strncasecmp (start_suffix, "lu", suffix_length))
    {
      SET_SUFFIX(constant, integer_constant, LongLongSuffix, true);
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
      ucc_error("invalid suffix for integer '%.*s'\n",
                constant->length + suffix_length, constant->raw);
    }
  ucc_log ("Number(%.*s) [suffix: '%.*s']\n", constant->length,
           stream->peek (0), suffix_length, start_suffix);
  stream->consume (constant->length + suffix_length);
  return copy_lexeme_into_heap(*constant);
}

struct lexeme*
consume_hex_floating_number (impln(bytestream_t) stream)
{
  __builtin_unimplemented ();
}

struct lexeme*
consume_floating_number (impln(bytestream_t) stream)
{
  __builtin_unimplemented ();
}

struct lexeme*
consume_hexadecimal_number (impln(bytestream_t) stream)
{
  char* current;
  struct lexeme hex = {
    .type = IntegerConstant,
    .ctx_for.integer_constant.base = HexadecimalConstant,
    .length = 2,
    .raw = stream->peek (0)
  };

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
  char *current;
  bool maybe_decimal = false;

  struct lexeme octal = {
    .type = IntegerConstant,
    .ctx_for.integer_constant.base = OctalConstant,
    .raw = stream->peek (0),
    .length = 1
  };

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
        ucc_error("invalid digit in octal '%.*s'\n", (int)octal.length,
                  stream->peek (0));
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
  
  struct lexeme decimal_constant = {
    .length = 0,
    .type = IntegerConstant,
    .ctx_for.integer_constant.base = DecimalConstant,
    .raw = current
  };

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
  char *current = stream->peek (0),
       *next = stream->peek (1);

  struct lexeme lex = {
    .type = BlockComment,
    .raw = stream->peek (0),
    .length = 2
  };

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
    ucc_error("unterminated comment");
    return NULL;
  }

  ucc_log("MultiComment(%zu bytes)\n", lex.length);
  stream->consume (lex.length);
  return copy_lexeme_into_heap (lex);
}

struct lexeme*
consume_string (impln(bytestream_t) stream, struct strchr_prefix* prefix)
{
  if (stream->peek (1) == NULL)
    goto err;

  char quote_ty = *(char *)stream->peek (0);
  char *start = stream->peek (0),
       *end = quoted_strlen (stream, quote_ty);

  if (end == NULL)
    {
  err:
      ucc_error ("unterminated string/character literal\n");
      return NULL;
    }

  size_t length = end - start + 1;

  struct lexeme lex = {
    .type = (quote_ty == '"')? StringConstant: CharacterConstant,
    .length = length - 2,
    .ctx_for.character_constant.encoding
      = (prefix != NULL)? prefix->encoding: Ordinary,
    .raw = start + 1
  };
  ucc_log("String/Character(%zu bytes): %.*s\n",
          length, length, stream->peek (0));
  stream->consume (length);
  return copy_lexeme_into_heap (lex);
}

struct strchr_prefix
maybe_get_strchar_encoding (impln(bytestream_t) stream, size_t length,
                            bool is_char)
{
  char *current = stream->peek (0),
       *next = stream->peek (0);
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
    if (suffix.encoding != Ordinary)
    {
      stream->consume (suffix.length);
      return consume_string (stream, &suffix);
    }
  }

  struct lexeme ident = {
    .type = Identifier,
    .length = length,
    .raw = stream->peek (0)
  };

  ucc_log("Identifier(%.*s)\n", length, ident.raw);

  stream->consume (length);
  return copy_lexeme_into_heap(ident);
}

impln(list_t)
lex_translation_unit (thunk_self_ty(tokenizer_t) self,
                      struct translation_unit* unit)
{
  auto stream = unit->io.stream;
  auto lexemes = new_object(list_t);

  char *chr, *next, *next2;
  bool reject = false;

  while ((chr = stream->peek (0)) != NULL)
    {
      next = stream->peek (1);
      next2 = stream->peek (2);

      switch (*chr)
      {
#define SINGLE_LEXEME_CASE(c, type) \
    case c: consume_single_lexeme(lexemes, stream, type); break;

#define MULTI_LEXEME_CASE(c1, c2, type_, suffix) \
  case c1: \
  { \
    ucc_log(#type_ "\n"); \
    struct lexeme lex = { \
      .type = type_, \
      .raw = stream->peek (0), \
      .length = 1 \
    }; \
    if (next && *next == c2) \
      { \
        lex.type = type_ ## suffix; \
        lex.length++; \
      } \
    lexemes->append (copy_lexeme_into_heap (lex)); \
    stream->consume (lex.length); \
    break; \
  }
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

        case '!':
        {
          struct lexeme lex = {
            .type = Not,
            .raw = stream->peek (0),
            .length = 1
          };
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
          struct lexeme lex = {
            .type = Or,
            .raw = stream->peek (0),
            .length = 1
          };
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
          struct lexeme lex = {
            .type = Div,
            .length = 1,
            .raw = stream->peek (0)
          };
          if (next && (*next == '='))
            {
              lex.type = DivAssign;
              lex.length++;
            }
          else if (next && (*next == '*' || *next == '/'))
            {
              struct lexeme* lex = consume_comment (stream);
              if (lex == NULL)
              {
                reject = true;
                break;
              }
              if (thunk_public_attr(self, flags).tokenize_comments)
                lexemes->append (lex);
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
          struct lexeme lex = {
            .type = (*chr == '+')? Plus: Minus,
            .raw = stream->peek (0),
            .length = 1
          };
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
          struct lexeme lex = {
            .type = (*chr == '<')? Less: Greater, 
            .raw = stream->peek (0),
            .length = 1
          };
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
          if (next && !isdigit (*next))
            {
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
  if (reject)
  {
    ucc_error("aborting tokenizing process due to lexical errors\n");
    exit (EXIT_FAILURE);
  }
  ucc_log("parsed %zu tokens\n", thunk_public_attr (lexemes, length));
  return lexemes;
}

void
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
  list_for_each_entry(lexemes, lexeme)
  {
    free (lexeme->val);
  }
  free_object (lexemes);
}

declare_thunk_method(tokenizer_t, tokenize)(thunk_self_ty(tokenizer_t) self)
{
  list_for_each_entry(
    thunk_public_attr(self, context).translation_units, iter)
  {
    struct translation_unit* unit = iter->val;
    ucc_log("%s: tokenizing translation unit\n", unit->io.path);
    tokenize_translation_unit (self, unit);
  }
  return true;
}

declare_thunk_method(tokenizer_t, set_flags)(thunk_self_ty(tokenizer_t) self,
                                            struct compiler_flags* flags)
{
  ucc_log("setting compiler flags (tokenize-comments=%s)\n",
          flags->tokenize_comments? "yes": "no");
  memcpy (&thunk_public_attr(self, flags), flags,
          sizeof (struct compiler_flags));
}

declare_thunk_initializer(tokenizer_t)(thunk_self_ty(tokenizer_t) self)
{
  thunk_public_attr(self, context).translation_units = new_object(list_t);
}

declare_thunk_finalizer(tokenizer_t)(thunk_self_ty(tokenizer_t) self)
{
  list_for_each_entry(thunk_public_attr(self, context).translation_units,
                      current)
  {
    struct translation_unit* tru = current->val;
    auto stream = tru->io.stream;
    ucc_log ("%p: finalizing bytestream object and data\n", stream);
    free (thunk_public_attr(stream, data));
    free_object(stream);
    ucc_log ("%s: freeing translation unit\n", tru->io.path);
    free (tru);
  }
  free_object(thunk_public_attr(self, context).translation_units);
}
