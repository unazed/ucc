#include "common.h"
#include "tokenizer.h"

#include <errno.h>

declare_thunk_method(tokenizer_t, load_file) (
  thunk_self_ty(tokenizer_t) self, const char* const path)
{
  auto fp = fopen (path, "r");
  if (fp == NULL)
    {
      file_exception exc = {.msg = "fopen() failed",.errcode = errno };
      return thunk_error_t(tokenizer_t, load_file, exc);
    }

  struct translation_unit* tru = calloc (1, sizeof (struct translation_unit));
  tru->fp = fp;
  thunk_public_attr(self, context).translation_units->append (tru);
  return thunk_result_t(tokenizer_t, load_file, true);
}

declare_thunk_initializer(tokenizer_t)(thunk_self_ty(tokenizer_t) self)
{
  thunk_public_attr(self, context).translation_units = new_object(list_t);
}

declare_thunk_finalizer(tokenizer_t)(thunk_self_ty(tokenizer_t) self)
{
  list_for_each_entry(thunk_public_attr(self, context).translation_units,
                      current)
  {
    struct translation_unit* tru = current->val;
    fclose (tru->fp);
    free (tru);
  }
  free_object(thunk_public_attr(self, context).translation_units);
}
