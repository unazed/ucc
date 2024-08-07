#include "parser.h"
#include "tokenizer.h"
#include "common.h"
#include "grammar.h"
#include "thunk.h"
#include "ast.h"

#define peek_n_token(tokens, n) \
  ((struct lexeme*)tokens->get (n))
#define peek_token(tokens) \
  peek_n_token(tokens, 1)
#define next_token_is(tokens, token_ty) \
  (peek_token(tokens)->type == token_ty)
#define next_token_is_not(tokens, token_ty) \
  !next_token_is(tokens, token_ty)

void
parse_declarator (impln(list_t) tokens)
{

}

void
parse_function_definition (impln(list_t) tokens)
{

}

void
parse_declaration (impln(list_t) tokens)
{

}

void
parse_external_declaration (impln(list_t) tokens)
{
  struct lexeme* lex;
  bool is_function_definition = false;

  struct lexeme* declspec;
  while (grm_is_decl_specifier (declspec = peek_token(tokens)))
  {
    printf ("declspec: %.*s\n", declspec->length, declspec->raw);
  }

  parse_declarator(tokens);

  lex = peek_token(tokens);
  if (lex->type == LeftBrace)
    is_function_definition = true;

  if (is_function_definition)
    parse_function_definition(tokens);
  else
    parse_declaration(tokens);
  return;
}

declare_thunk_method(parser_t, parse_unit)(thunk_self_ty(parser_t) self,
                                           struct translation_unit* unit)
{
  thunk_public_attr(self, token_list) = unit->token_stream;

  if (next_token_is(unit->token_stream, EndOfFile))
  {
    ucc_info("empty translation unit\n");
    return true;
  }

/*  do
  {
    parse_external_declaration (unit->token_stream);
  } while (next_token_is_not(unit->token_stream, EndOfFile)); */

  return true;
}

declare_thunk_initializer(parser_t)(thunk_self_ty(parser_t) self)
{
  thunk_public_attr(self, symbol_table) = new_object(map_t);
}

declare_thunk_finalizer(parser_t)(thunk_self_ty(parser_t) self)
{
  free_object (thunk_public_attr(self, symbol_table));
}
