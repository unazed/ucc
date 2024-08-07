#pragma once

#include "list.h"
#include "thunk.h"
#include "map.h"
#include "bytestream.h"

#include <stdbool.h>
#include <stdint.h>

enum lexeme_ty
{
  PreprocessorDirective = 0,
  NewLine,
  IntegerConstant,
  FloatingConstant,
  CharacterConstant,
  StringConstant,
  BlockComment, MultiComment, MultiCommentEnd,
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
  Assign, AssignEqual,
  Less, LessEqual, LeftShift, LeftShiftAssign,
  Greater, GreaterEqual, RightShift, RightShiftAssign,
  Backslash,
  EndOfFile
};

enum strchr_encoding
{
  Ordinary,
  WideEncoding,  // L
  Utf8Encoding,  // u8, string only
  Utf16Encoding, // u
  Utf32Encoding  // U
};

struct ctx_string_constant
{
  enum strchr_encoding encoding;
  char* escaped;
  size_t length;
  bool is_raw;
};

struct ctx_character_constant
{
  enum strchr_encoding encoding;
  char* escaped;
  size_t length;
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

struct ctx_identifier
{
  struct
  {
    enum type_specifier
    {
      Void, Char, Short, Int, Long, Float, Double, Signed, Unsigned,
      Bool, Complex, M128, M128d, M128i, Extension, Typeof, AtomicSpec,
      Struct, Union, Enum
    } type;
  } type_spec;
  bool is_type_spec;

  struct
  {
    enum storage_class_specifier
    {
      Typedef, Extern, Static, ThreadLocal, Auto, Register
    } type;
  } storage_class_spec;
  bool is_storage_class_spec;

  struct
  {
    enum type_qualifer
    {
      Const, Restrict, Volatile, AtomicQual
    } type;
  } type_qual;
  bool is_type_qual;

  struct
  {
    enum function_specifier
    {
      Inline, NoReturn, GNUInline, StdCall, DeclSpec, Attribute
    } type;
  } func_spec;
  bool is_func_spec;
  bool is_align_spec;
  bool is_keyword;
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
    struct ctx_string_constant string_constant;
    struct ctx_character_constant character_constant;
    struct ctx_identifier identifier;
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

bool
grm_is_type_specifier (struct lexeme* lex);

bool
grm_is_storage_class_specifier (struct lexeme* lex);

bool
grm_is_type_qualifier (struct lexeme* lex);

bool
grm_is_keyword (struct lexeme* lex);

bool
grm_is_function_specifier (struct lexeme* lex);

bool
grm_is_decl_specifier(struct lexeme* lex);
