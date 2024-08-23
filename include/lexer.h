#pragma once

#include "io.h"
#include "array.h"

#include <stdint.h>
#include <stdbool.h>

typedef struct lexer_impl
{
  array_t memstreams;
  array_t lexeme_arrays;
} *lexer_t;

struct compilation_args;

__attribute__((warn_unused_result))
lexer_t lex_ctx_new (struct compilation_args* comp_args);

__attribute__((nonnull))
void lex_ctx_load_file (lexer_t, fptr_t file, const char* const path);

__attribute__((nonnull))
uint64_t lex_ctx_process (lexer_t lexer);

__attribute__((nonnull))
void lex_ctx_free (lexer_t lexer);

enum lexeme_type
{
  NumericLiteral,
  FloatingLiteral,
  StringLiteral,
  CharacterLiteral,
  Identifier,
  LeftParen, RightParen,
  LeftBrace, RightBrace,
  Dot,
  Add, Minus, Div, Star, Modulus,
  AddAssign, MinusAssign, DivAssign, StarAssign, ModulusAssign,
  Increment, Decrement,
  LogicalOr, LogicalAnd,
  Assign, AssignAssign,
  Not, NotAssign,
  BitwiseOr, BitwiseAnd, BitwiseXor,
  BitwiseOrAssign, BitwiseAndAssign, BitwiseXorAssign,
  BitwiseNegate,
  BwdSlash, Newline, Semi, EndOfFile,
  Comment, MultiComment
};

typedef struct
{
  uint64_t length;
  uint64_t stream_offs;
  enum lexeme_type type;
} *lexeme_t;
