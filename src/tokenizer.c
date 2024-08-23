#include "tokenizer.h"
#include "generic.h"
#include "array.h"

struct token
{
  lexeme_t lexeme;
};

struct tkn_impl
{
  lexer_t lexer;
  array_t tokens;
};

void
tkn_free (tkn_t self)
{
  log_verbose ("freeing tokenizer: %p", fmt_ptr (self));
  chk_free (self);
}

static void
tkn_process_impl (tkn_t self, array_t lexemes)
{

}

void
tkn_process (tkn_t self)
{
  array_for_each (self->lexer->lexeme_arrays, array_t, lexemes)
    tkn_process_impl (self, lexemes);
}

tkn_t
tkn_new (lexer_t lexer)
{
  tkn_t tokenizer = chk_calloc_struct (tkn_t);
  tokenizer->lexer = lexer;
  log_verbose ("created tokeniser: %p", fmt_ptr (tokenizer));
  return tokenizer;
}
