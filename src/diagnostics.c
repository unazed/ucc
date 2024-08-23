#include "array.h"
#include "generic.h"
#include "diagnostics.h"

#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <ctype.h>

#define MAX_DIAGN_LINE_COUNT (3)

static void diagn_free_impl (struct diagnostic*);
static const char* diagn_enum_to_string (enum diagn_type type) __attribute__((const));
static const char* diagn_enum_ansi_code (enum diagn_type type) __attribute__((const));

struct diagnostic_impl
{
  uint8_t* src_stream;
  array_t diagns;
  struct compilation_args* comp_args;
  const char* path;
};

struct diagnostic
{
  lexeme_t lexeme;
  enum diagn_type type;
  char* msg;
};

diagn_t
diagn_new (struct compilation_args* comp_args,
           uint8_t* src_stream,
           const char* const path)
{
  diagn_t diagn = chk_calloc_struct (diagn_t);
  diagn->comp_args = comp_args;
  diagn->diagns = array_new ();
  diagn->src_stream = src_stream;
  diagn->path = path;
  return diagn;
}

static bool
diagn_is_warn_enabled (diagn_t self, const char* warn_name)
{
  if (!strcmp (warn_name, "multichar"))
    return self->comp_args->warn_flags.warn_multichar;
  ucc_assert (0, "Unknown warning name \"%s\", maybe you spelled it wrong?",
              warn_name);
}

void
diagn_push (diagn_t self,
            const char* warn_name_opt,
            enum diagn_type type,
            lexeme_t lexeme,
            const char* fmt, ...)
{
  if (warn_name_opt != NULL && !diagn_is_warn_enabled (self, warn_name_opt))
    {
      log_verbose ("ignoring warning \"%s\" because it is disabled", warn_name_opt);
      return;
    }
  struct diagnostic* diagn = chk_calloc (1, sizeof (*diagn));
  diagn->lexeme = lexeme;
  diagn->type = type;

  va_list args;
  va_start (args, fmt);
  ucc_assert ((vasprintf (&diagn->msg, fmt, args) > 0), "vasprintf() failed");
  va_end (args);

  array_append (self->diagns, diagn);
}

static const char*
diagn_enum_ansi_code (enum diagn_type type)
{
  switch (type)
  {
    case DiagnosticNote:
      return BCYAN;
    case DiagnosticWarning:
      return BCYAN;
    case DiagnosticError:
      return BRED;
    default:
      __builtin_unreachable ();
  }
}

static const char*
diagn_enum_to_string (enum diagn_type type)
{
  switch (type)
  {
    case DiagnosticNote:
      return CTEXT (BCYAN, "note:");
    case DiagnosticWarning:
      return CTEXT (BCYAN, "warning:");
    case DiagnosticError:
      return CTEXT (BRED, "error:");
    default:
      __builtin_unreachable ();
  }
}

static uint64_t
diagn_line_start_offset (const uint8_t* start, uint64_t stream_offs)
{
  uint64_t length = 0;
  for (size_t i = 0; i < stream_offs; ++i)
  {
    uint8_t curr = *(start - i);
    if (curr == '\n')
      break;
    length++;
  }

  /* strip left-whitespace */
  while (isspace (*(start - length)))
    length--;

  return length;
}

static uint64_t
diagn_lineno (const uint8_t* start, uint64_t stream_offs)
{
  uint64_t line_no = 1;
  for (size_t i = 0; i < stream_offs; ++i)
    if (start[i] == '\n')
      line_no++;
  return line_no;
}

static void
diagn_flush_single (diagn_t self, fptr_t file, struct diagnostic* diagn)
{
  uint8_t* lexeme_raw = &self->src_stream[diagn->lexeme->stream_offs];
  auto line_start_offset = diagn_line_start_offset (
    lexeme_raw, diagn->lexeme->stream_offs);
  auto line_no = diagn_lineno (self->src_stream, diagn->lexeme->stream_offs);

  fprintf (file, "%s:%" PRIu64 ":%" PRIu64 ": %s %s\n",
           self->path, line_no, line_start_offset,
           diagn_enum_to_string (diagn->type), diagn->msg);
  auto length = diagn->lexeme->length;
  fprintf (file, "%*" PRIu64 " |  %.*s",
           4, line_no,
           (int)line_start_offset,
           lexeme_raw - line_start_offset);
  uint64_t rel_line = 1;
  for (size_t i = 0; i < diagn->lexeme->length; ++i)
  {
    uint8_t current = lexeme_raw[i];
    if (current == '\n')
    {
      if (++rel_line > MAX_DIAGN_LINE_COUNT)
      {
        auto lines_left = diagn_lineno (lexeme_raw, diagn->lexeme->stream_offs + diagn->lexeme->length)
                          - rel_line; 
        if (!lines_left)
          break;
        fprintf (file, "\n%*c |  ", 4, ' ');
        fprintf (file, "(... %" PRIu64 " lines)",
                 lines_left);
        break;
      }
      fprintf (file, "\n%*" PRIu64 " |  ", 4, ++line_no);
      continue;
    }
    cfprintf (file, diagn_enum_ansi_code (diagn->type),
              "%c", current);
  }
  fprintf (file, "\n");
}

uint64_t
diagn_flush (diagn_t self,
             fptr_t file)
{
  uint64_t nr_errors = 0,
           nr_warnings = 0,
           nr_notes = 0;
  array_for_each(self->diagns, struct diagnostic*, diagn)
    {
      nr_errors += diagn->type == DiagnosticError;
      nr_warnings += diagn->type == DiagnosticWarning;
      nr_notes += diagn->type == DiagnosticNote;
      diagn_flush_single (self, file, diagn);
    }
  log_primary ("Dumped %" PRIu64 " error(s), %" PRIu64 " warning(s), and %" PRIu64 " note(s)",
               nr_errors, nr_warnings, nr_notes);
  return nr_errors;
}

static void
diagn_free_impl (struct diagnostic* diagn)
{
  log_minutiae ("\tfreeing diagnostic: %p", fmt_ptr (diagn));
  chk_free (diagn->msg);
  chk_free (diagn);
}

void
diagn_free (diagn_t self)
{
  log_minutiae ("freeing %zu diagnostics: %p",
                array_length (self->diagns), fmt_ptr (self));
  array_free_cb (self->diagns, diagn_free_impl);
  chk_free (self);
}
