#pragma once

#include "list.h"
#include "bytestream.h"
#include "thunk.h"

#include <stdlib.h>

define_thunk_method(richloc_ctx_t, bool, push_error)(
    InArg const char* msg, InArg size_t offs, InArg size_t range);
define_thunk_method(richloc_ctx_t, bool, has_errors)(void);
define_thunk_method(richloc_ctx_t, bool, set_stream)(
    InArg impln(bytestream_t) stream);
define_thunk_method(richloc_ctx_t, bool, show_errors)(void);

define_thunk_object(richloc_ctx_t, {
  thunk_attr_public({
    impln(list_t) error_list;
  });

  thunk_attr_private({
    impln(bytestream_t) stream;
  });
  
  thunk_attr_methods({
    thunk_bind_method(richloc_ctx_t, has_errors);
    thunk_bind_method(richloc_ctx_t, set_stream);
    thunk_bind_method(richloc_ctx_t, push_error);
    thunk_bind_method(richloc_ctx_t, show_errors);
  });
});
