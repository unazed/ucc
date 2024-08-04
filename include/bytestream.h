#pragma once

#include "thunk.h"
#include "common.h"

#include <stdbool.h>

define_thunk_method(bytestream_t, void*, peek)(InArg size_t lookahead);
define_thunk_method(bytestream_t, size_t, consume)(InArg size_t n);
define_thunk_method(bytestream_t, void*, get)(void);
define_thunk_method(bytestream_t, bool, is_eof)(void);
define_thunk_method(bytestream_t, size_t, consume_until)(InArg char* accept);

define_thunk_object(bytestream_t, {
  thunk_attr_public({
    void* data;
    const char* path;
    size_t pos;
    size_t size;
    size_t length;
    size_t line_no;
    size_t line_offs;
  });

  thunk_attr_private({
  });

  thunk_attr_methods({
    thunk_bind_method(bytestream_t, peek);
    thunk_bind_method(bytestream_t, consume);
    thunk_bind_method(bytestream_t, consume_until);
    thunk_bind_method(bytestream_t, get);
    thunk_bind_method(bytestream_t, is_eof);
  });
})
