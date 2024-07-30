#pragma once

#include "common.h"
#include "thunk.h"
#include "list.h"

#include <stddef.h>
#include <stdio.h>
#include <stdbool.h>
#include <errno.h>

struct translation_unit
{
/*
 * translation_unit
 *    : external_declaration
 *    | translation_unit external_declaration
 *    ;
 */
  FILE* fp;
};

struct compilation_context
{
  impln(list_t) translation_units;
};

define_thunk_method_maythrow(tokenizer_t, bool, load_file)(InArg char* path)
  __attribute__((nonnull));

define_thunk_object(tokenizer_t, {
  thunk_attr_public({
    struct compilation_context context;
  })

  thunk_attr_private({
  })
  
  thunk_attr_methods({
    thunk_bind_method(tokenizer_t, load_file);
  })
});

typedef thunk_exception_struct({
  typeof (errno) errcode;
}) file_exception;
