#pragma once

#include "common.h"
#include "thunk.h"
#include "list.h"
#include "grammar.h"

#include <stddef.h>
#include <stdio.h>
#include <stdbool.h>
#include <errno.h>

define_thunk_method_maythrow(tokenizer_t, bool, load_file)(InArg char* path)
  __attribute__((nonnull));
define_thunk_method(tokenizer_t, bool, tokenize)(void);

define_thunk_object(tokenizer_t, {
  thunk_attr_public({
    struct compilation_context context;
  })

  thunk_attr_private({
  })
  
  thunk_attr_methods({
    thunk_bind_method(tokenizer_t, load_file);
    thunk_bind_method(tokenizer_t, tokenize);
  })
});

typedef thunk_exception_struct({
  typeof (errno) errcode;
}) file_exception;
