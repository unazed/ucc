#pragma once

#include "list.h"
#include "thunk.h"
#include "map.h"
#include "bytestream.h"

#include <stdint.h>

enum lexeme_ty
{
  IntegerConstant,
  FloatingConstant,
  CharacterConstant,
  LeftParen, RightParen,
  LeftBracket, RightBracket,
  LeftBrace, RightBrace,
  Identifier,
  Dot, Ellipsis,
  Plus, PlusPlus, PlusAssign,
  Minus, MinusMinus, MinusAssign, Arrow,
  Star, StarAssign,
  Div, DivAssign,
  Mod, ModAssign,
  Or, OrAssign,
  OrOr,
  And, AndAssign,
  AndAnd,
  Caret, CaretAssign,
  Colon,
  Comma,
  Semi,
  Not, NotEqual,
  Question,
  Tilde,
  Assign, Equal,
  Less, LessEqual, LeftShift, LeftShiftAssign,
  Greater, GreaterEqual, RightShift, RightShiftAssign,
};

struct ctx_floating_constant
{
  enum
  {
    DecimalFloatingConstant,
    HexadecimalFloatingConstant,
  } base;
  enum
  {
    NoFloatSuffix,
    FloatSuffix,
    LongDoubleSuffix
  } suffix;
};

struct ctx_integer_constant
{
  enum
  {
    DecimalConstant,
    OctalConstant,
    HexadecimalConstant
  } base;
  enum
  {
    NoIntegerSuffix,
    LongSuffix,
    LongLongSuffix
  } suffix;
  bool is_unsigned;
};

struct lexeme
{
  enum lexeme_ty type;
  union
  {
    struct ctx_integer_constant integer_constant;
    struct ctx_floating_constant floating_constant;
  } ctx_for;
  const char* raw;
  size_t length;
};

struct translation_unit
{ 
  struct
  {
    impln(bytestream_t) stream;
    const char* path;
  } io;
  impln(list_t) token_stream;
};

struct compilation_context
{
  impln(list_t) translation_units;
};
