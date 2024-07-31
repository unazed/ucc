#include "common.h"
#include "tokenizer.h"

#include <assert.h>
#include <errno.h>

impln(bytestream_t)
new_bytestream (void* data, size_t size)
{
  auto stream = new_object(bytestream_t);
  thunk_public_attr(stream, data) = data;
  thunk_public_attr(stream, size) = size;
  return stream;
}

declare_thunk_method(tokenizer_t, load_file) (
  thunk_self_ty(tokenizer_t) self, const char* const path)
{
#define FILE_MEMBSIZE (sizeof (char))
  auto fp = fopen (path, "r");
  if (fp == NULL)
    {
      file_exception exc = {.msg = "fopen() failed",.errcode = errno };
      return thunk_error_t(tokenizer_t, load_file, exc);
    }

  struct translation_unit* tru = calloc (1, sizeof (struct translation_unit));
  tru->io.path = path;

  fseek (fp, 0, SEEK_END);
  auto file_size = ftell (fp);
  rewind (fp);

  char* data = calloc (file_size, FILE_MEMBSIZE);
  auto nread = fread (data, sizeof (char), file_size, fp);
  assert (nread == file_size / FILE_MEMBSIZE);
  fclose (fp);

  tru->io.stream = new_bytestream (data, FILE_MEMBSIZE);
  ucc_log("%s: created bytestream (%zu bytes) @ %p\n", path,
          nread, tru->io.stream);
  thunk_public_attr(self, context).translation_units->append (tru);
  return thunk_result_t(tokenizer_t, load_file, true);
}

impln(list_t)
lex_translation_unit (thunk_self_ty(tokenizer_t) self,
                      struct translation_unit* unit)
{
  auto stream = unit->io.stream;
  auto lexemes = new_object(list_t);
  // __builtin_unimplemented();
  return lexemes;
}

void
tokenize_translation_unit (thunk_self_ty(tokenizer_t) self,
                           struct translation_unit* unit)
{
  ucc_log("%s: lexing translation unit\n", unit->io.path);
  auto lexemes = lex_translation_unit (self, unit);
  free_object (lexemes);
}

declare_thunk_method(tokenizer_t, tokenize) (thunk_self_ty(tokenizer_t) self)
{
  list_for_each_entry(
    thunk_public_attr(self, context).translation_units, iter)
  {
    struct translation_unit* unit = iter->val;
    ucc_log("%s: tokenizing translation unit\n", unit->io.path);
    tokenize_translation_unit (self, unit);
  }
  return true;
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
    auto stream = tru->io.stream;
    ucc_log ("%p: finalizing bytestream object and data\n", stream);
    free (thunk_public_attr(stream, data));
    free_object(stream);
    ucc_log ("%s: freeing translation unit\n", tru->io.path);
    free (tru);
  }
  free_object(thunk_public_attr(self, context).translation_units);
}
