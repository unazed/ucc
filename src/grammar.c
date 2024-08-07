#include "grammar.h"
#include "bytestream.h"
#include "tokenizer.h"

#include <stdbool.h>

#define RET_IF_TRUE(x) if (x) return true;
#define RET_WITH_LEXAHEAD(x, lexahead) \
  if (x) \
    { \
      *lexahead = true; \
      return true; \
    }

bool
grm_is_type_specifier (struct lexeme* lex)
{
  bool
  cmp_and_set (const char* cmp, enum type_qualifer type)
  {
    if (!strncmp (lex->raw, cmp, lex->length))
    {
      lex->ctx_for.identifier.type_spec.type = type;
      return true;
    }
    return false;
  }

  RET_IF_TRUE(cmp_and_set ("void", Void));
  RET_IF_TRUE(cmp_and_set ("char", Char));
  RET_IF_TRUE(cmp_and_set ("short", Short));

  RET_IF_TRUE(cmp_and_set ("int", Int));
  RET_IF_TRUE(cmp_and_set ("long", Long));
  RET_IF_TRUE(cmp_and_set ("float", Float));
  RET_IF_TRUE(cmp_and_set ("double", Double));
  RET_IF_TRUE(cmp_and_set ("signed", Signed));
  RET_IF_TRUE(cmp_and_set ("unsigned", Unsigned));
  RET_IF_TRUE(cmp_and_set ("_Bool", Bool));
  RET_IF_TRUE(cmp_and_set ("_Complex", Complex));
  RET_IF_TRUE(cmp_and_set ("__m128", M128));
  RET_IF_TRUE(cmp_and_set ("__m128d", M128d));
  RET_IF_TRUE(cmp_and_set ("__m128i", M128i));

  /* external lexing required */
  RET_IF_TRUE(cmp_and_set ("__extension__", Extension));
  RET_IF_TRUE(cmp_and_set ("__typeof__", Typeof));
  RET_IF_TRUE(cmp_and_set ("_Atomic", AtomicSpec));
  RET_IF_TRUE(cmp_and_set ("struct", Struct));
  RET_IF_TRUE(cmp_and_set ("union", Union));
  RET_IF_TRUE(cmp_and_set ("enum", Enum));
  return false;
}

bool
grm_is_storage_class_specifier (struct lexeme* lex)
{
  bool
  cmp_and_set (const char* cmp, enum type_qualifer type)
  {
    if (!strncmp (lex->raw, cmp, lex->length))
    {
      lex->ctx_for.identifier.storage_class_spec.type = type;
      return true;
    }
    return false;
  }

  RET_IF_TRUE(cmp_and_set("typedef", Typedef));
  RET_IF_TRUE(cmp_and_set("extern", Extern));
  RET_IF_TRUE(cmp_and_set("static", Static));
  RET_IF_TRUE(cmp_and_set("_Thread_local", ThreadLocal));
  RET_IF_TRUE(cmp_and_set("auto", Auto));
  RET_IF_TRUE(cmp_and_set("register", Register));
  return false;
}

bool
grm_is_type_qualifier (struct lexeme* lex)
{
  bool
  cmp_and_set (const char* cmp, enum type_qualifer type)
  {
    if (!strncmp (lex->raw, cmp, lex->length))
    {
      lex->ctx_for.identifier.type_qual.type = type;
      return true;
    }
    return false;
  }

  RET_IF_TRUE(cmp_and_set("const", Const));
  RET_IF_TRUE(cmp_and_set("restrict", Restrict));
  RET_IF_TRUE(cmp_and_set("volatile", Volatile));
  RET_IF_TRUE(cmp_and_set("_Atomic", AtomicQual));
  return false;
}

bool
grm_is_function_specifier (struct lexeme* lex)
{
  bool
  cmp_and_set (const char* cmp, enum type_qualifer type)
  {
    if (!strncmp (lex->raw, cmp, lex->length))
    {
      lex->ctx_for.identifier.func_spec.type = type;
      return true;
    }
    return false;
  }

  RET_IF_TRUE(cmp_and_set("inline", Inline));
  RET_IF_TRUE(cmp_and_set("_Noreturn", NoReturn));
  RET_IF_TRUE(cmp_and_set("__inline__", GNUInline));
  RET_IF_TRUE(cmp_and_set("__stdcall", StdCall));

  /* external lexing required */
  RET_IF_TRUE(cmp_and_set("__declspec", DeclSpec));
  RET_IF_TRUE(cmp_and_set("__attribute__", Attribute));
  return false;
}

bool
grm_is_keyword (struct lexeme* lex)
{
  bool
  cmp(const char* s)
  {
    return !strncmp (lex->raw, s, lex->length);
  }

  RET_IF_TRUE(cmp("auto")); 
  RET_IF_TRUE(cmp("break")); 
  RET_IF_TRUE(cmp("case")); 
  RET_IF_TRUE(cmp("char")); 
  RET_IF_TRUE(cmp("const")); 
  RET_IF_TRUE(cmp("default")); 
  RET_IF_TRUE(cmp("do")); 
  RET_IF_TRUE(cmp("double")); 
  RET_IF_TRUE(cmp("else")); 
  RET_IF_TRUE(cmp("enum")); 
  RET_IF_TRUE(cmp("extern")); 
  RET_IF_TRUE(cmp("float")); 
  RET_IF_TRUE(cmp("for")); 
  RET_IF_TRUE(cmp("goto")); 
  RET_IF_TRUE(cmp("if")); 
  RET_IF_TRUE(cmp("inline")); 
  RET_IF_TRUE(cmp("int")); 
  RET_IF_TRUE(cmp("long")); 
  RET_IF_TRUE(cmp("register")); 
  RET_IF_TRUE(cmp("restrict")); 
  RET_IF_TRUE(cmp("return")); 
  RET_IF_TRUE(cmp("short")); 
  RET_IF_TRUE(cmp("signed")); 
  RET_IF_TRUE(cmp("sizeof")); 
  RET_IF_TRUE(cmp("static")); 
  RET_IF_TRUE(cmp("struct")); 
  RET_IF_TRUE(cmp("switch")); 
  RET_IF_TRUE(cmp("typedef")); 
  RET_IF_TRUE(cmp("union")); 
  RET_IF_TRUE(cmp("unsigned")); 
  RET_IF_TRUE(cmp("void")); 
  RET_IF_TRUE(cmp("volatile")); 
  RET_IF_TRUE(cmp("while")); 
  RET_IF_TRUE(cmp("_Alignas")); 
  RET_IF_TRUE(cmp("_Alignof")); 
  RET_IF_TRUE(cmp("_Atomic")); 
  RET_IF_TRUE(cmp("_Bool")); 
  RET_IF_TRUE(cmp("_Complex")); 
  RET_IF_TRUE(cmp("_Generic")); 
  RET_IF_TRUE(cmp("_Imaginary")); 
  RET_IF_TRUE(cmp("_Noreturn")); 
  RET_IF_TRUE(cmp("_Static_assert")); 
  RET_IF_TRUE(cmp("_Thread_local")); 
  return false;
}

bool
grm_is_decl_specifier (struct lexeme *lex)  
{
  auto ctx = lex->ctx_for.identifier;
  return ctx.is_func_spec || ctx.is_type_spec || ctx.is_type_qual
      || ctx.is_storage_class_spec || ctx.is_align_spec;
}
