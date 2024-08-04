#include "richloc.h"
#include "bytestream.h"
#include "list.h"
#include "thunk.h"
#include "common.h"

#include <stdio.h>
#include <string.h>

#define LINE_NO_LPAD (4)

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
line_range (char* start, size_t length)
{
  size_t iter_length = length,
         line_count = 0;
  for (char c = start[0];
       iter_length > 0 && (c = start[length - iter_length]);
       iter_length--)
  {
    if (c == '\n')
      line_count++;
  }
  return line_count;
}

void
print_error_line (const char* path, size_t line_no, size_t offset,
                  const char* msg)
{
  printf (CFGBOLDBLACK "%s:%zu:%zu: " CFGRED "error: " CRESET " %s\n",
          path, line_no, offset, msg);
}

void
print_error (char* line_start, size_t line_length, size_t line_no,
             size_t nonerror_range, size_t error_range)
{
  printf (" %*zu | ", LINE_NO_LPAD, line_no);
  printf ("%.*s", nonerror_range, line_start);
  printf (CFGBOLDRED "%.*s" CRESET, error_range, line_start + nonerror_range);

  ssize_t postamble_length = max(0, line_length - nonerror_range - error_range);
  printf ("%.*s\n", postamble_length,
          line_start + nonerror_range + error_range);

  printf (" ");
  for (size_t i = 0; i < LINE_NO_LPAD; ++i)
    printf (" ");

  size_t clamped_range = min(strlen (line_start + nonerror_range),
                             min(line_length, error_range));

  printf (" | " CFGBOLDRED "%*s", nonerror_range + 1, "^");
  for (size_t i = 0; i < clamped_range - 1; ++i)
    printf ("~");

  printf (CRESET "\n");
}

declare_thunk_method(richloc_ctx_t, show_errors)(
  thunk_self_ty(richloc_ctx_t) self)
{
  list_for_each_entry(thunk_public_attr(self, error_list), entry)
  {
    struct error* error = entry->val;
    char* line_start
      = (char *)thunk_public_attr(error->stream, data) + error->stream_offs
        - error->line_offs;
    char* start_error
      = (char *)thunk_public_attr(error->stream, data)
        + error->stream_offs + error->rel_offs;

    print_error_line(thunk_public_attr(error->stream, path),
                     error->line_no, error->line_offs, error->msg);

    size_t nr_range_lines = max(1, line_range (start_error, error->range));
    char* split_range = strtok (line_start, "\n");

    for (size_t i = 0; i < nr_range_lines; ++i)
    {
      print_error(split_range, strlen (split_range), error->line_no + i,
                  error->line_offs + error->rel_offs,
                  error->range);
      error->line_offs = error->rel_offs = 0;
      split_range = strtok (NULL, "\n");
    }

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
