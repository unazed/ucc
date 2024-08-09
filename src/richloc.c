#include "richloc.h"
#include "bytestream.h"
#include "list.h"
#include "thunk.h"
#include "common.h"

#include <stdio.h>
#include <string.h>

#define select_fp(diagn) \
  (((diagn)->error_ty == CriticalError)? stderr: stdout)

void
print_status_line (const char* src_path, struct richloc_error* diagn)
{
  auto fp = select_fp(diagn); 

  fprintf (fp, CFGBOLDBLACK "%s:%zu:%zu: " CRESET,
           src_path, diagn->lex->line_no, diagn->lex->line_offs);

  switch (diagn->error_ty)
  {
    case CriticalError:
      fprintf (fp, CFGBOLDRED "error: " CRESET);
      break;
    case Warning:
      fprintf (fp, CFGYELL "warning: " CRESET);
      break;
    case Information:
    default:
      fprintf (fp, CFGBOLDWHITE "info: " CRESET);
      break;
  }

  fprintf (fp, "%s\n", diagn->message);
}

void
print_diagnostic (struct richloc_error* diagn)
{
  struct lexeme* lex = diagn->lex;
  if (lex->raw == NULL)
    return;

  size_t lex_length = lex->length + lex->line_offs,
         current_line = lex->line_no;
  size_t line_length = 0,
         skip_offs = 0;
  ssize_t current_offs = lex->line_offs;

  char* current = lex->raw - current_offs;

  char* eol = lex->raw + lex->length;
  size_t length_to_eol = 0;

  while (eol[length_to_eol] != '\0' && eol[length_to_eol] != '\n')
    length_to_eol++;

  auto fp = select_fp(diagn);

  bool put_creset = false;

  while (lex_length > 0)
  {
    fprintf (fp, " %*zu | ", 4, current_line);
    if (current_offs == -1)
    {
      fprintf (fp, CFGBOLDRED);
      put_creset = false;
    }
    while (lex_length > 0)
    {
      if (*current == '\n')
      {
        if (current_offs == -1)
        {
          fprintf (fp, CRESET);
          put_creset = true;
        }
        current_line++;
        current++;
        lex_length--;
        break;
      }
      if (current_offs > 0)
      {
        skip_offs++;
        current_offs--;
      }
      else if (!current_offs)
      {
        fprintf (fp, CFGBOLDRED);
        put_creset = false;
        current_offs = -1;
      }
      fprintf (fp, "%c", *current);
      lex_length--;
      if (!lex_length)
        {
          fprintf (fp, CRESET);
          for (; length_to_eol > 0; --length_to_eol)
            fprintf (fp, "%c", *++current);
        }
      line_length++;
      current++;
    }
    if (!put_creset)
      fprintf (fp, CRESET);
    fprintf (fp, "\n      | ");
    line_length -= skip_offs;
    for (; skip_offs > 0; --skip_offs)
      fprintf (fp, " ");
    fprintf (fp, CFGBOLDRED "^");
    for (; line_length > 1; --line_length)
      fprintf (fp, "~");
    fprintf (fp, CRESET "\n");
    line_length = 0;
  }
  fprintf (fp, CRESET);
  
}

declare_thunk_method(richloc_ctx_t, show_errors)(
  thunk_self_ty(richloc_ctx_t) self)
{
  auto path = thunk_public_attr(self, path);
  list_for_each_entry(thunk_public_attr(self, error_list), entry)
  {
    struct richloc_error* diagn = entry->val;
    print_status_line (path, diagn);
    print_diagnostic (diagn);
  }
  return true;
}

declare_thunk_method(richloc_ctx_t, push)(
  thunk_self_ty(richloc_ctx_t) self, struct lexeme* lex,
  enum richloc_error_type err_ty, const char* msg)
{
  struct richloc_error* diagnostic
    = calloc (1, sizeof (struct richloc_error));
  auto stream = thunk_private_attr(self, stream);

  struct lexeme* copy = calloc (1, sizeof (struct lexeme));
  diagnostic->lex = copy;
  diagnostic->message = msg;
  diagnostic->error_ty = err_ty;

  if (lex == NULL && stream == NULL)
    copy->raw = NULL;
  else if (lex == NULL)
    {
      copy->line_no = thunk_public_attr(stream, line_no);
      copy->line_offs = thunk_public_attr(stream, line_offs);
      copy->raw = stream->peek (0);
    }
  else
    memcpy (copy, lex, sizeof (struct lexeme));

  thunk_public_attr(self, error_list)->append (diagnostic);
  return true;
}

declare_thunk_method(richloc_ctx_t, has_errors)(
  thunk_self_ty(richloc_ctx_t) self)
{
  return thunk_public_attr(thunk_public_attr(self, error_list), length) > 0;
}

declare_thunk_method(richloc_ctx_t, set_path)(
  thunk_self_ty(richloc_ctx_t) self, const char* path)
{
  thunk_public_attr(self, path) = path;
  return true;
}

declare_thunk_method(richloc_ctx_t, set_stream)(
  thunk_self_ty(richloc_ctx_t) self, impln(bytestream_t) stream)
{
  thunk_private_attr(self, stream) = stream;
  thunk_public_attr(self, path) = thunk_public_attr(stream, path);
  return true;
}
  
declare_thunk_initializer(richloc_ctx_t)(thunk_self_ty(richloc_ctx_t) self)
{
  thunk_public_attr(self, error_list) = new_object(list_t);
}

declare_thunk_finalizer(richloc_ctx_t)(thunk_self_ty(richloc_ctx_t) self)
{
  auto error_list = thunk_public_attr(self, error_list);
  list_for_each_entry(error_list, entry)
  {
    struct richloc_error* err = entry->val;
    free (err->lex);
    free (entry->val);
  }
  free_object(error_list);
}
