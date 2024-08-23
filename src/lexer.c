#include "array.h"
#include "generic.h"
#include "io.h"
#include "lexer.h"
#include "stdio-ext.h"
#include "diagnostics.h"

#include <ctype.h>
#include <stdbool.h>
#include <stdint.h>

#define lex_decl_consume_function(fn_name) \
  static void fn_name (memstream_t, array_t)

#define append_with_consume(lexemes, stream, lex_type, length) \
  { \
    array_append ((lexemes), lex_ctx_create_lexeme ((stream), (lex_type), (length))); \
    fconsume ((stream)->ptr, (long)(length)); \
  }

#define case_unary_op(which, name) \
  case (which): \
    log_verbose ("consuming unary lexeme: " STRINGIZE (name)); \
    lex_type = name; \
    break;

#define case_binary_op(which, name) \
  case (which): \
    lex_type = name; \
    if (next == '=') \
      { \
        log_verbose ("consuming binary lexeme: " STRINGIZE (CONCAT (name, Assign))); \
        lex_type = name##Assign; \
        length++; \
      } \
    else \
      { \
        log_verbose ("consuming binary lexeme: " STRINGIZE (name)); \
      } \
    break;

#define while_noneof(current, stream, length, length_val) \
  uint64_t length = length_val; \
  int current; \
  while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)

#define log_printable_lexeme_offs(stream, stream_offs, length, length_offs, name) \
  log_verbose ("consuming " STRINGIZE (name) ": \"%.*s\"", \
               (int)length + (length_offs), \
               (stream)->buffer + ftell ((stream)->ptr) + (stream_offs));

#define log_printable_lexeme(stream, length, name) \
  log_printable_lexeme_offs (stream, 0, length, 0, name)

static diagn_t g_diagnostics;
static struct compilation_args* g_comp_args;

static lexeme_t
lex_ctx_create_lexeme (const memstream_t stream,
                       enum lexeme_type lexeme_type,
                       uint64_t length)
{
  lexeme_t lexeme = chk_calloc_struct (lexeme_t);
  lexeme->stream_offs = (uint64_t)ftell (stream->ptr);
  lexeme->length = length;
  lexeme->type = lexeme_type;
  return lexeme;
}

static uint64_t
lex_ctx_length_until_eol (memstream_t stream)
{
  while_noneof (current, stream, length, 0)
  {
    if (current == '\n' || current == EOF)
      break;
    length++;
  }
  return length;
}

static void
lex_ctx_consume_comment (memstream_t stream,
                         array_t lexemes)
{
  while_noneof(current, stream, length, 2)
  {
    if (current == '\n')
      break;
    length++;
  }
  log_printable_lexeme_offs (stream, 2, length, -2, "single-line comment");
  if (g_comp_args->parse_flags.tokenize_comments)
    array_append(lexemes, lex_ctx_create_lexeme(stream, Comment, length));
  else
    array_append (lexemes, lex_ctx_create_lexeme (stream, Newline, 1));
  fconsume (stream->ptr, (long)length + 1);
}

static void
lex_ctx_consume_multicomment (memstream_t stream,
                              array_t lexemes)
{
  while_noneof (current, stream, length, 2)
  {
    int next = fpeek (stream->ptr, (long)(length + 1));
    if (current == '*' && next == '/')
      break;
    length++;
  }
  if (current == EOF)
    goto unterminated;
  log_verbose ("consuming multi-line comment of length (tokenize-comments=%s): %" PRIu64,
               (g_comp_args->parse_flags.tokenize_comments)? "yes": "no", length);
  log_minutiae ("multi-line comment: \"%.*s\"",
                (int)length - 2, stream->buffer + ftell (stream->ptr) + 2);
  if (g_comp_args->parse_flags.tokenize_comments)
    array_append (lexemes, lex_ctx_create_lexeme(stream, MultiComment, length));
  else 
    array_append (lexemes, lex_ctx_create_lexeme (stream, Newline, 1));
  fconsume (stream->ptr, (long)length + 2);
  return;
unterminated:
  auto length_to_eol = lex_ctx_length_until_eol (stream);
  auto lexeme = lex_ctx_create_lexeme (stream, MultiComment, length);
  diagn_push (g_diagnostics, NULL, DiagnosticError, lexeme,
              "missing terminating " CTEXT (BWHITE, "*/") " characters from multiline comment");
  fconsume (stream->ptr, (long)length);
  array_append (lexemes, lexeme);
}

static void
lex_ctx_consume_hexadecimal_float (memstream_t stream,
                                   array_t lexemes)
{
  bool past_decimal = false;
  while_noneof(current, stream, length, 2)
  {
    if (!past_decimal && current == '.')
      past_decimal = true;
    else if (!isxdigit (current))
      break;
    length++;
  }
  log_printable_lexeme (stream, length, "hexadecimal float");
  append_with_consume(lexemes, stream, FloatingLiteral, length);
}

static void
lex_ctx_consume_decimal_float (memstream_t stream,
                               array_t lexemes)
{
  bool past_point = false;
  while_noneof (current, stream, length, 0)
  {
    if (!past_point && current == '.')
      past_point = true;
    else if (!isdigit (current))
      break;
    length++;
  }
  log_printable_lexeme (stream, length, "decimal float")
  append_with_consume (lexemes, stream, FloatingLiteral, length);
}

static void
lex_ctx_consume_number (memstream_t stream,
                        array_t lexemes)
{
  while_noneof (current, stream, length, 0)
  {
    if (current == '.')
      {
        lex_ctx_consume_decimal_float (stream, lexemes);
        return;
      }
    else if (!isdigit (current))
      break;
    length++;
  }
  log_printable_lexeme (stream, length, "number");
  append_with_consume (lexemes, stream, NumericLiteral, length);
}

static void
lex_ctx_consume_identifier (memstream_t stream,
                           array_t lexemes)
{
  while_noneof (current, stream, length, 0)
  {
    if (!isident (current))
      break;
    length++;
  }
  log_printable_lexeme (stream, length, "identifier");
  append_with_consume (lexemes, stream, Identifier, length);
}

static void
lex_ctx_consume_string (memstream_t stream,
                        array_t lexemes)
{
  while_noneof (current, stream, length, 1)
  {
    int next = fpeek (stream->ptr, (long)(length + 1));
    if (current == '"')
      {
        length++;
        break;
      }
    if (current == '\\' && (next == '\n' || next == '"'))
      length++;
    else if (current == '\n')
      goto unterminated;
    length++;
  }

  if (current == EOF)
    goto unterminated;

  log_printable_lexeme_offs (stream, 1, length, -2, "string literal");
  append_with_consume (lexemes, stream, StringLiteral, length);
  return;
unterminated:
  auto length_to_eol = lex_ctx_length_until_eol (stream);
  auto lexeme = lex_ctx_create_lexeme (stream, StringLiteral, length_to_eol);
  diagn_push (g_diagnostics, NULL, DiagnosticError, lexeme,
              "missing terminating " CTEXT (BWHITE, "\"") " character");
  fconsume (stream->ptr, (long)length_to_eol);
  array_append (lexemes, lexeme);
}

static void
lex_ctx_consume_character (memstream_t stream,
                           array_t lexemes)
{
  while_noneof (current, stream, length, 1)
  {
    int next = fpeek (stream->ptr, (long)(length + 1));
    if (current == '\'')
      {
        length++;
        break;
      }
    if (current == '\\' && (next == '\n' || next == '\''))
      length++;
    else if (current == '\n')
      goto unterminated;
    length++;
  }

  lexeme_t lexeme;
  if (current == EOF)
    goto unterminated;

  lexeme = lex_ctx_create_lexeme(stream, CharacterLiteral, length);
  if (length > 3)
    diagn_push (g_diagnostics, "multichar", DiagnosticWarning, lexeme,
                "multi-character character constant"); 
  log_printable_lexeme_offs(stream, 1, length, -2, "character literal");
  array_append (lexemes, lexeme);
  fconsume (stream->ptr, (long)length);
  return;
unterminated:
  auto length_to_eol = lex_ctx_length_until_eol (stream);
  auto err_lexeme = lex_ctx_create_lexeme (stream, StringLiteral, length_to_eol);
  diagn_push (g_diagnostics, NULL, DiagnosticError, err_lexeme,
              "missing terminating " CTEXT (BWHITE, "'") " character");
  fconsume (stream->ptr, (long)length_to_eol);
  array_append (lexemes, err_lexeme);
}

static void
lex_ctx_consume_octal (memstream_t stream,
                       array_t lexemes)
{
  while_noneof (current, stream, length, 0)
  {
    if (!isoctdigit (current))
      {
        if (isdigit (current) || current == '.')
          {
            /* e.g. `018` is treated as base-10 literal `18` */
            lex_ctx_consume_number (stream, lexemes);
            return;
          }
        break;
      }
    else
      length++;
  }
  log_printable_lexeme (stream, length, "octal number");
  append_with_consume (lexemes, stream, NumericLiteral, length)
}

static void
lex_ctx_consume_hexadecimal (memstream_t stream,
                             array_t lexemes)
{
  while_noneof (current, stream, length, 2)
  {
    if (current == '.')
      {
        lex_ctx_consume_hexadecimal_float (stream, lexemes);
        return;
      }
    else if (!isxdigit (current))
      break;
    length++;
  }
  log_printable_lexeme (stream, length, "hexadecimal number");
  append_with_consume (lexemes, stream, NumericLiteral, length);
}

static void
lex_ctx_consume_nonliteral (memstream_t stream,
                            array_t lexemes)
{
  int current = fpeek (stream->ptr, 0),
      next = fpeek (stream->ptr, 1);
  enum lexeme_type lex_type;
  uint64_t length = 1;

  switch (current)
  {
    case_unary_op ('~', BitwiseNegate);
    case_unary_op ('{', LeftBrace);
    case_unary_op ('}', RightBrace);
    case_unary_op ('(', LeftParen);
    case_unary_op (')', RightParen);
    case_unary_op (';', Semi);
    case_unary_op ('.', Dot);

    case_binary_op ('*', Star);
    case_binary_op ('+', Add);
    case_binary_op ('-', Minus);
    case_binary_op ('%', Modulus);
    case_binary_op ('^', BitwiseXor);
    case_binary_op ('!', Not);
    case_binary_op ('=', Assign);

    case '/':
      lex_type = Div;
      if (next == '=')
        {
          lex_type = DivAssign;
          length++;
        }
      else if (next == '*')
        {
          lex_ctx_consume_multicomment (stream, lexemes);
          return;
        }
      else if (next == '/')
        {
          lex_ctx_consume_comment (stream, lexemes);
          return;
        }
      break;
    case '|':
      lex_type = BitwiseOr;
      if (next == '|')
        {
          lex_type = LogicalOr;
          length++;
        }
      else if (next == '=')
        {
          lex_type = BitwiseOrAssign;
          length++;
        }
      break;
    case '&':
      lex_type = BitwiseAnd;
      if (next == '&')
        {
          lex_type = LogicalAnd;
          length++;
        }
      else if (next == '=')
        {
          lex_type = BitwiseAndAssign;
          length++;
        }
      break;
    default:
      ucc_error ("unidentified character: '%c'", current);
      fconsume (stream->ptr, 1);
      return;
  }
  append_with_consume (lexemes, stream, lex_type, length);
}

static uint64_t
lex_ctx_process_impl (lexer_t self,
                      memstream_t stream)
{
  auto lexemes = array_new ();
  g_diagnostics = diagn_new (g_comp_args, stream->buffer, stream->path);
  bool reached_eof = false;
  while (!feof (stream->ptr) && !reached_eof)
    {
      auto current = (int8_t)fpeek (stream->ptr, 0);
      auto next = (int8_t)fpeek (stream->ptr, 1);

      switch (current)
      {
        case EOF:
          log_minutiae ("consumed end of file");
          array_append (lexemes, lex_ctx_create_lexeme (stream, EndOfFile, 0));
          reached_eof = true;
          break;
        case '\n':
          log_minutiae ("consumed end of line");
          array_append (lexemes, lex_ctx_create_lexeme (stream, Newline, 1));
          fconsume (stream->ptr, 1);
          break;
        case '0':
          if (next == 'x')
            {
              lex_ctx_consume_hexadecimal (stream, lexemes);
              break;
            }
          lex_ctx_consume_octal (stream, lexemes);
          break;
        case '1': case '2': case '3': case '4':
        case '5': case '6': case '7': case '8': case '9':
          lex_ctx_consume_number (stream, lexemes);
          break;
        case '"':
          lex_ctx_consume_string (stream, lexemes);
          break;
        case '\'':
          lex_ctx_consume_character (stream, lexemes);
          break;
        default:
          if (isident_f (current))
            {
              lex_ctx_consume_identifier (stream, lexemes);
              break;
            }
          else if (isspace (current))
            {
              fconsume (stream->ptr, 1);
              break;
            }
          lex_ctx_consume_nonliteral (stream, lexemes);
          break;
      }
    }
  log_primary ("Lexed %zu lexemes from \"%s\"", array_length (lexemes), stream->path);
  array_append (self->lexeme_arrays, lexemes);
  auto nr_errors = diagn_flush (g_diagnostics, stdout);
  diagn_free (g_diagnostics);
  return nr_errors;
}

lexer_t
lex_ctx_new (struct compilation_args* comp_args)
{
  lexer_t lexer = chk_calloc_struct (lexer_t);
  lexer->memstreams = array_new ();
  lexer->lexeme_arrays = array_new ();
  g_comp_args = comp_args;
  log_verbose ("created lexer %p", fmt_ptr (lexer));
  return lexer;
}

void
lex_ctx_load_file (lexer_t self,
                   fptr_t file,
                   const char* const path)
{
  array_append (self->memstreams, io_read_file_into_memstream (file, path));
}

uint64_t
lex_ctx_process (lexer_t self)
{
  uint64_t nr_lexing_errors = 0;
  array_for_each (self->memstreams, memstream_t, stream)
  {
    nr_lexing_errors += lex_ctx_process_impl (self, stream);
  }
  return nr_lexing_errors;
}

static void
lex_ctx_free_lexeme_arrays (array_t lexemes)
{
  log_minutiae ("freeing lexeme array at %p", fmt_ptr (lexemes));
  array_free_cb (lexemes, __chk_free_impl_nofn);
}

void
lex_ctx_free (lexer_t self)
{
  array_free_cb (self->memstreams, io_free_memstream);
  array_free_cb (self->lexeme_arrays, lex_ctx_free_lexeme_arrays);
  chk_free (self);
}
