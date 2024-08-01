#include "common.h"
#include "tokenizer.h"

#include <assert.h>
#include <errno.h>
#include <ctype.h>

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
  return isalpha (c) || c == '$' || c == '_';
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
consume_octal_number (impln(bytestream_t) stream)
{
  ucc_log("consuming octal number\n");
  __builtin_unimplemented();
}

struct lexeme*
consume_floating_number (impln(bytestream_t) stream)
{
  ucc_log("consuming floating point number\n");
  __builtin_unimplemented();
}

struct lexeme*
consume_hexadecimal_number (impln(bytestream_t) stream)
{
  ucc_log("consuming hexadecimal number\n");
  __builtin_unimplemented();
}

struct lexeme*
consume_integer_suffix (struct lexeme* decimal_constant,
                        impln(bytestream_t) stream)
{
#define SET_SUFFIX(lexeme, ctx, type, unsigned) \
  { \
    (lexeme)->ctx_for.ctx.suffix = type; \
    (lexeme)->ctx_for.ctx.is_unsigned = unsigned; \
  }

  char *current;
  size_t suffix_length = 0;

  while ((current = stream->peek (decimal_constant->length + suffix_length))
         != NULL && isalpha (*current))
    suffix_length++;

  char* start_suffix = stream->peek (decimal_constant->length);

  ucc_log("suffix_length %zu, %.*s\n", suffix_length, suffix_length, start_suffix);
  if (!strncasecmp (start_suffix, "ull", suffix_length)
      || !strncasecmp (start_suffix, "llu", suffix_length))
    {
      SET_SUFFIX(decimal_constant, integer_constant, LongLongSuffix, true);
    }
  else if (!strncasecmp (start_suffix, "ul", suffix_length)
      || !strncasecmp (start_suffix, "lu", suffix_length))
    {
      SET_SUFFIX(decimal_constant, integer_constant, LongLongSuffix, true);
    }
  else if (!strncasecmp (start_suffix, "l", suffix_length))
    {
      SET_SUFFIX(decimal_constant, integer_constant, LongSuffix, false);
    }
  else if (!strncasecmp (start_suffix, "u", suffix_length))
    {
      SET_SUFFIX(decimal_constant, integer_constant, NoIntegerSuffix, true);
    }
  else
    {
      ucc_error("invalid suffix for integer '%.*s'\n",
                decimal_constant->length + suffix_length,
                decimal_constant->raw);
    }
  stream->consume (decimal_constant->length + suffix_length);
  return copy_lexeme_into_heap(*decimal_constant);
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
      if (isspace (*current) || *current == ';')
        break;
      ucc_log("number has suffix\n");
      return consume_integer_suffix (&decimal_constant, stream);
    }
    decimal_constant.length++;
  }
  ucc_log("Number(%.*s)\n", decimal_constant.length, decimal_constant.raw);
  stream->consume (decimal_constant.length);
  return copy_lexeme_into_heap(decimal_constant);
}

struct lexeme*
consume_identifier (impln(bytestream_t) stream)
{
  size_t length = 0;
  char* current = stream->peek (length);

  while (current && is_identifier (*current))
    current = stream->peek (++length);

  struct lexeme ident = {
    .type = Identifier,
    .length = length,
    .raw = stream->peek (0)
  };

  ucc_log("Identifier(%.*s): %zu\n", length, ident.raw, length);

  stream->consume (length);
  return copy_lexeme_into_heap(ident);
}

impln(list_t)
lex_translation_unit (thunk_self_ty(tokenizer_t) self,
                      struct translation_unit* unit)
{
  auto stream = unit->io.stream;
  auto lexemes = new_object(list_t);

  char *chr, *next;
  bool reject = false;

  while ((chr = stream->peek (0)) != NULL)
    {
      next = stream->peek (1);
      switch (*chr)
      {
      #define SINGLE_LEXEME_CASE(list, c, stream, type) \
          case c: consume_single_lexeme(list, stream, type); break;
      #define BINARY_LEXEME_CASE(list, c, stream, type_) \
        case c: \
        { \
          struct lexeme lex = { \
            .type = type_, \
            .raw = stream->peek (0), \
            .length = 1 \
          }; \
          if (next && *next == '=') \
            { \
              lex.type = type_ ## Assign; \
              lex.length++; \
            } \
          stream->consume (lex.length); \
          list->append (copy_lexeme_into_heap (lex)); \
          break; \
        }
        case '\n':
          ucc_log("newline\n");
        case '\t':
        case '\v':
        case '\r':
        case ' ':
          stream->consume (1);
          break;

        SINGLE_LEXEME_CASE(lexemes, ';', stream, Semi);
        SINGLE_LEXEME_CASE(lexemes, '(', stream, LeftParen);
        SINGLE_LEXEME_CASE(lexemes, ')', stream, RightParen);
        SINGLE_LEXEME_CASE(lexemes, '{', stream, LeftBrace);
        SINGLE_LEXEME_CASE(lexemes, '}', stream, RightBrace);
        SINGLE_LEXEME_CASE(lexemes, '[', stream, LeftBracket);
        SINGLE_LEXEME_CASE(lexemes, ']', stream, RightBracket);
        SINGLE_LEXEME_CASE(lexemes, ',', stream, Comma);
        SINGLE_LEXEME_CASE(lexemes, ':', stream, Colon);

        BINARY_LEXEME_CASE(lexemes, '+', stream, Plus);
        BINARY_LEXEME_CASE(lexemes, '*', stream, Star);
        BINARY_LEXEME_CASE(lexemes, '-', stream, Minus);
        BINARY_LEXEME_CASE(lexemes, '/', stream, Div);
        BINARY_LEXEME_CASE(lexemes, '%', stream, Mod);
        BINARY_LEXEME_CASE(lexemes, '^', stream, Caret);

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
          ucc_error ("unknown lexing token: '%c'\n", *chr);
          exit (EXIT_FAILURE);
      }
    }
  if (reject)
  {
    ucc_error ("aborting tokenizing process due to lexical errors\n");
    exit (EXIT_FAILURE);
  }
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
    ucc_log("freeing lexeme token\n");
    free (lexeme->val);
  }
  free_object (lexemes);
}

declare_thunk_method(tokenizer_t, tokenize) (thunk_self_ty(tokenizer_t) self)
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
