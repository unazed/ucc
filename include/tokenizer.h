#pragma once

#include "common.h"
#include "thunk.h"
#include "grammar.h"

#include <stddef.h>
#include <stdbool.h>
#include <errno.h>

struct compiler_flags
{
  bool tokenize_comments;
};

define_thunk_method_maythrow(tokenizer_t, bool, load_file)(InArg char* path)
  __attribute__((nonnull));
define_thunk_method(tokenizer_t, bool, tokenize)(void);
define_thunk_method(tokenizer_t, bool, set_flags)(
  struct compiler_flags* flags);

define_thunk_object(tokenizer_t, {
  thunk_attr_public({
    struct compilation_context context;
    struct compiler_flags flags;
  })

  thunk_attr_private({
  })
  
  thunk_attr_methods({
    thunk_bind_method(tokenizer_t, load_file);
    thunk_bind_method(tokenizer_t, tokenize);
    thunk_bind_method(tokenizer_t, set_flags);
  })
});

typedef thunk_exception_struct({
  typeof (errno) errcode;
}) file_exception;
