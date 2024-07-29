#pragma once

#include "../include/common.h"
#include "../include/thunk.h"

#include <stddef.h>
#include <stdio.h>
#include <stdbool.h>
#include <errno.h>

define_thunk_method_maythrow(tokenizer_t, bool, tokenize)(void);
define_thunk_method_maythrow(tokenizer_t, bool, open_file)(InArg char* path,
    InArg char* modes)
  __attribute__((nonnull));

define_thunk_object(tokenizer_t, {
  thunk_attr_public({
    FILE* fp;
  })

  thunk_attr_private({

  })
  
  thunk_attr_methods({
    thunk_bind_method(tokenizer_t, tokenize);
    thunk_bind_method(tokenizer_t, open_file);
  })
});

typedef thunk_exception_struct({
  typeof (errno) errcode;
}) file_exception;
