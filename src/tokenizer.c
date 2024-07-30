#include "../include/common.h"
#include "../include/tokenizer.h"

#include <errno.h>

void
parse_external_declaration (thunk_self_ty(tokenizer_t) self)
{
  
}

declare_thunk_method(tokenizer_t, open_file)(
  thunk_self_ty(tokenizer_t) self, InArg const char* const path,
  InArg const char* const modes)
{
  auto fp = thunk_public_attr(self, fp) = fopen (path, modes);
  if (fp == NULL)
    {
      file_exception exc = { .msg = "fopen() failed", .errcode = errno };
      return thunk_error_t(tokenizer_t, open_file, exc);
    }
  return thunk_result_t(tokenizer_t, open_file, true);
}

declare_thunk_method(tokenizer_t, tokenize)(
  thunk_self_ty(tokenizer_t) self)
{
  auto fp = thunk_public_attr(self, fp);
  
}
