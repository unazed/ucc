#include "grammar.h"
#include "lex-dump.h"

#include <stdio.h>
#include <errno.h>


void
write_lexer_output_to_file (impln(list_t) lexemes, const char* path)
{
  FILE* fp = fopen (path, "w");
  if (fp == NULL)
  {
    ucc_error("failed to open '%s' (%s)\n", path, strerror (errno));
    return;
  }
  list_for_each_entry(lexemes, entry)
  {
    struct lexeme* lexeme = entry->val;
    switch (lexeme->type)
    {
      case NewLine:
        fprintf (fp, "<EOL>\n");
        break;
      case PreprocessorDirective:
        fprintf (fp, "Directive<%.*s> ", lexeme->length, lexeme->raw);
        break;
      case StringConstant:
      {
        char* string_encoding_ty;
        switch (lexeme->ctx_for.string_constant.encoding)
        {
          case Ordinary: string_encoding_ty = ""; break;
          case WideEncoding: string_encoding_ty = "Wide"; break;
          case Utf8Encoding: string_encoding_ty = "Utf8"; break;
          case Utf16Encoding: string_encoding_ty = "Utf16"; break;
          case Utf32Encoding: string_encoding_ty = "Utf32"; break;
        }
        char* raw_prefix = lexeme->ctx_for.string_constant.is_raw
            ? "Raw": "";
        auto str_length = lexeme->ctx_for.string_constant.length;
        fprintf (fp, "%s%sString<%zu, \"%.*s\"> ",
                 raw_prefix, string_encoding_ty,
                 str_length,
                 str_length, lexeme->ctx_for.string_constant.escaped);
        break;
      }
      case CharacterConstant:
      {
        char* char_encoding_ty;
        switch (lexeme->ctx_for.character_constant.encoding)
        {
          case Ordinary: char_encoding_ty = ""; break;
          case WideEncoding: char_encoding_ty = "Wide"; break;
          case Utf8Encoding: char_encoding_ty = "Utf8"; break;
          case Utf16Encoding: char_encoding_ty = "Utf16"; break;
          case Utf32Encoding: char_encoding_ty = "Utf32"; break;
        }

        fprintf (fp,"%sCharacter<'%.*s'> ", char_encoding_ty,
                 lexeme->ctx_for.character_constant.length,
                 lexeme->ctx_for.character_constant.escaped);
        break;
      }
      case IntegerConstant:
      {
        char *base_ty, *suffix_ty;
        switch (lexeme->ctx_for.integer_constant.base)
        {
          case DecimalConstant: base_ty = "Decimal"; break;
          case HexadecimalConstant: base_ty = "Hex"; break;
          case OctalConstant: base_ty = "Octal"; break;
        }
        switch (lexeme->ctx_for.integer_constant.suffix)
        {
          case NoIntegerSuffix: suffix_ty = "NoSuffix"; break;
          case LongSuffix: suffix_ty = "Long"; break;
          case LongLongSuffix: suffix_ty = "LongLong"; break;
        }
        char* sign_ty = lexeme->ctx_for.integer_constant.is_unsigned
          ? "Unsigned": "Signed";
        fprintf (fp, "%s%sIntegerConstant<%.*s, %s> ", sign_ty, base_ty,
                 lexeme->length, lexeme->raw, suffix_ty);
        break;
      }
      case FloatingConstant:
      {
        char *base_ty, *suffix_ty;
        switch (lexeme->ctx_for.floating_constant.base)
        {
          case DecimalFloatingConstant: base_ty = "Decimal"; break;
          case HexadecimalFloatingConstant: base_ty = "Hex"; break;
        }
        switch (lexeme->ctx_for.integer_constant.suffix)
        {
          case NoFloatSuffix: suffix_ty = "NoSuffix"; break;
          case FloatSuffix: suffix_ty = "Float"; break;
          case LongDoubleSuffix: suffix_ty = "LongDouble"; break;
        }
        fprintf (fp, "%sFloatingConstant<%.*s, %s> ", base_ty,
                 lexeme->length, lexeme->raw, suffix_ty);
        break;
      }
      case BlockComment:
        fprintf (fp, "BlockComment ");
        break;
      case MultiComment:
        fprintf (fp, "MultiComment ");
        break;
      case MultiCommentEnd:
        fprintf (fp, "MultiCommentEnd ");
        break;
      case LeftParen:
        fprintf (fp, "LeftParen ");
        break;
      case RightParen:
        fprintf (fp, "RightParen ");
        break;
      case LeftBracket:
        fprintf (fp, "LeftBracket ");
        break;
      case RightBracket:
        fprintf (fp, "RightBracket ");
        break;
      case LeftBrace:
        fprintf (fp, "LeftBrace ");
        break;
      case RightBrace:
        fprintf (fp, "RightBrace ");
        break;
      case Identifier:
        fprintf (fp, "Identifier<%.*s> ", lexeme->length, lexeme->raw);
        break;
      case Dot:
        fprintf (fp, "Dot ");
        break;
      case Ellipsis:
        fprintf (fp, "Ellipsis ");
        break;
      case Plus:
        fprintf (fp, "Plus ");
        break;
      case PlusPlus:
        fprintf (fp, "PlusPlus ");
        break;
      case PlusAssign:
        fprintf (fp, "PlusAssign ");
        break;
      case Minus:
        fprintf (fp, "Minus ");
        break;
      case MinusMinus:
        fprintf (fp, "MinusMinus ");
        break;
      case MinusAssign:
        fprintf (fp, "MinusAssign ");
        break;
      case Arrow:
        fprintf (fp, "Arrow ");
        break;
      case Star:
        fprintf (fp, "Star ");
        break;
      case StarAssign:
        fprintf (fp, "StarAssign ");
        break;
      case Div:
        fprintf (fp, "Div ");
        break;
      case DivAssign:
        fprintf (fp, "DivAssign ");
        break;
      case Mod:
        fprintf (fp, "Mod ");
        break;
      case ModAssign:
        fprintf (fp, "ModAssign ");
        break;
      case Or:
        fprintf (fp, "Or ");
        break;
      case OrAssign:
        fprintf (fp, "OrAssign ");
        break;
      case OrOr:
        fprintf (fp, "OrOr ");
        break;
      case And:
        fprintf (fp, "And ");
        break;
      case AndAssign:
        fprintf (fp, "AndAssign ");
        break;
      case AndAnd:
        fprintf (fp, "AndAnd ");
        break;
      case Caret:
        fprintf (fp, "Caret ");
        break;
      case CaretAssign:
        fprintf (fp, "CaretAssign ");
        break;
      case Colon:
        fprintf (fp, "Colon ");
        break;
      case Comma:
        fprintf (fp, "Comma ");
        break;
      case Semi:
        fprintf (fp, "Semi ");
        break;
      case Not:
        fprintf (fp, "Not ");
        break;
      case NotEqual:
        fprintf (fp, "NotEqual ");
        break;
      case Question:
        fprintf (fp, "Question ");
        break;
      case Tilde:
        fprintf (fp, "Tilde ");
        break;
      case Assign:
        fprintf (fp, "Assign ");
        break;
      case AssignEqual:
        fprintf (fp, "AssignEqual ");
        break;
      case Less:
        fprintf (fp, "Less ");
        break;
      case LessEqual:
        fprintf (fp, "LessEqual ");
        break;
      case LeftShift:
        fprintf (fp, "LeftShift ");
        break;
      case LeftShiftAssign:
        fprintf (fp, "LeftShiftAssign ");
        break;
      case Greater:
        fprintf (fp, "Greater ");
        break;
      case GreaterEqual:
        fprintf (fp, "GreaterEqual ");
        break;
      case RightShift:
        fprintf (fp, "RightShift ");
        break;
      case RightShiftAssign:
        fprintf (fp, "RightShiftAssign ");
        break;
      case Backslash:
        fprintf (fp, "Backslash ");
        break;
    }
  }
  fclose (fp);
  ucc_info("dumped lexer output to '%s'\n", path);
}
