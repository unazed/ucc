#pragma once

#include "../include/common.h"
#include "../include/thunk.h"

#include <stdio.h>
#include <stdbool.h>

define_thunk_method(map_t, bool, set)(InArg const char* key, InArg void* val)
  __attribute__((nonnull, null_terminated_string_arg (1)));
define_thunk_method(map_t, void*, get)(InArg const char* key)
  __attribute__((nonnull, null_terminated_string_arg (1)));
define_thunk_method(map_t, bool, remove)(InArg const char* key)
  __attribute__((nonnull, null_terminated_string_arg (1)));

define_thunk_object(map_t, {
  thunk_attr_public({});
  thunk_attr_private({
    
  });
  thunk_attr_methods({
    thunk_bind_method(map_t, set); 
    thunk_bind_method(map_t, get);
    thunk_bind_method(map_t, remove);
  });
});

