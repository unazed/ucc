#include "richloc.h"
#include "bytestream.h"
#include "list.h"
#include "thunk.h"
#include "common.h"

#include <stdio.h>

struct error
{
  size_t stream_offs, line_no, line_offs;
  size_t rel_offs, range;
  impln(bytestream_t) stream;
  const char* msg;
};

declare_thunk_method(richloc_ctx_t, push_error)(
  thunk_self_ty(richloc_ctx_t) self, const char* msg, size_t offs,
  size_t range)
{
  struct error* error = calloc (1, sizeof (struct error));
  error->stream = thunk_private_attr(self, stream);
  error->stream_offs = thunk_public_attr(error->stream, pos);
  error->line_no = thunk_public_attr(error->stream, line_no);
  error->line_offs = thunk_public_attr(error->stream, line_offs);
  error->rel_offs = offs;
  error->range = range;
  error->msg = msg;
  thunk_public_attr(self, error_list)->append (error);
  return true;
}

size_t
get_line_length (char* start)
{
  size_t length = 0;
  for (; start[length] != '\n'; ++length);
  return length;
}

static char tilde[] = "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";

declare_thunk_method(richloc_ctx_t, show_errors)(
  thunk_self_ty(richloc_ctx_t) self)
{
  list_for_each_entry(thunk_public_attr(self, error_list), entry)
  {
    struct error* error = entry->val;
    char* line_start
      = (char *)thunk_public_attr(error->stream, data) + error->stream_offs
        - error->line_offs;
    char* line_error_start
      = (char *)thunk_public_attr(error->stream, data) + error->stream_offs;
    char* after_error
      = line_error_start + error->rel_offs + error->range;
    size_t line_length = get_line_length (line_start);
    char* line_end = line_start + line_length;

    printf (CFGBOLDBLACK "%s:%zu:%zu: " CFGRED "error: " CRESET " %s\n",
            thunk_public_attr(error->stream, path),
            error->line_no, error->line_offs,
            error->msg);
    printf ("  | %.*s" CFGBOLDRED "%.*s" CRESET "%.*s\n",
            error->line_offs + error->rel_offs, line_start,
            error->range, line_error_start + error->rel_offs,
            (size_t)(line_end - after_error), after_error);
    printf ("  | %*s", error->line_offs + error->rel_offs, " ");
    printf (CFGBOLDRED "^%.*s " CRESET "\n", error->range - 1, tilde);
  }
  return true;
}

declare_thunk_method(richloc_ctx_t, has_errors)(
  thunk_self_ty(richloc_ctx_t) self)
{
  return thunk_public_attr(thunk_public_attr(self, error_list), length) > 0;
}

declare_thunk_method(richloc_ctx_t, set_stream)(
  thunk_self_ty(richloc_ctx_t) self, impln(bytestream_t) stream)
{
  thunk_private_attr(self, stream) = stream;
  return true;
}

declare_thunk_initializer(richloc_ctx_t)(thunk_self_ty(richloc_ctx_t) self)
{
  thunk_public_attr(self, error_list) = new_object(list_t);
}

declare_thunk_finalizer(richloc_ctx_t)(thunk_self_ty(richloc_ctx_t) self)
{
  list_for_each_entry(thunk_public_attr(self, error_list), entry)
  {
    free (entry->val);
  }
  free_object(thunk_public_attr(self, error_list));
}
