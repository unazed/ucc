#include "ansi-colors.h"

#include <stdio.h>
#include <stdarg.h>

void
cfprintf (fptr_t file, const char* ccode, const char* fmt, ...)
{
  fprintf (file, "%s", ccode);
  va_list args;
  va_start (args, fmt);
#pragma GCC diagnostic ignored "-Wformat-nonliteral"
#pragma GCC diagnostic push
  vfprintf (file, fmt, args);
#pragma GCC diagnostic pop
  va_end (args);
  fprintf (file, CRESET);
}

void
cprintf (const char* ccode, const char* fmt, ...)
{
  va_list args;
  va_start (args, fmt);
  cfprintf (stdout, ccode, fmt, args);
  va_end (args);
}
