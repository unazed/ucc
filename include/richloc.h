#pragma once

#include "list.h"
#include "bytestream.h"
#include "thunk.h"
#include "grammar.h"

#include <stdlib.h>

enum richloc_error_type
{
  CriticalError, Information, Warning
};

struct richloc_error
{
  struct lexeme* lex;
  enum richloc_error_type error_ty;
  const char* message;
};

define_thunk_method(richloc_ctx_t, bool, push)(
    InArg struct lexeme* lex, enum richloc_error_type err,
    InArg const char* msg);
define_thunk_method(richloc_ctx_t, bool, has_errors)(void);
define_thunk_method(richloc_ctx_t, bool, set_stream)(
    InArg impln(bytestream_t) stream);
define_thunk_method(richloc_ctx_t, bool, show_errors)(void);
define_thunk_method(richloc_ctx_t, bool, set_path)(InArg const char* path);

define_thunk_object(richloc_ctx_t, {
  thunk_attr_public({
    impln(list_t) error_list;
    const char* path;
  });

  thunk_attr_private({
    impln(bytestream_t) stream;
  });
  
  thunk_attr_methods({
    thunk_bind_method(richloc_ctx_t, has_errors);
    thunk_bind_method(richloc_ctx_t, set_stream);
    thunk_bind_method(richloc_ctx_t, set_path);
    thunk_bind_method(richloc_ctx_t, push);
    thunk_bind_method(richloc_ctx_t, show_errors);
  });
});
