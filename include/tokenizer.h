#pragma once

#include "lexer.h"

typedef struct tkn_impl* tkn_t;

__attribute__((nonnull))
void tkn_free (tkn_t);

void tkn_process (tkn_t);

__attribute__((malloc (tkn_free), nonnull))
tkn_t tkn_new (lexer_t);
