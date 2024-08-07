#pragma once

#include "thunk.h"
#include "list.h"

#define define_ast_node(name, struct_) \
  struct name \
  { \
    struct ast_base base; \
    struct struct_; \
  }

enum ast_node_type
{
  ExternalDeclaration,
  FunctionDefinition,
  Declaration
};

struct ast_base
{
  enum ast_node_type type;
  struct ast_base *left, *right;
};

define_ast_node(ast_block_statement, {
});

define_ast_node(ast_function_definition, {
  struct ast_block_statement* block_statement;
  char* name;
});

define_ast_node(ast_external_declaration, {
  impln(list_t) function_definitions;
  impln(list_t) declarations;
});

define_thunk_object(ast_t, {
  thunk_attr_public({
    struct ast_base* root;
  });

  thunk_attr_private({});

  thunk_attr_methods({
    //
  });
});
