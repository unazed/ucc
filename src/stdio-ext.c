#include "stdio-ext.h"

#include <stdbool.h>
#include <ctype.h>

int
fpeek (FILE* stream, long lookahead)
{
  fseek (stream, lookahead, SEEK_CUR);
  int c = fgetc (stream);
  ungetc (c, stream);
  fseek (stream, -lookahead, SEEK_CUR);
  return c;
}

int
fconsume (FILE* stream, long offset)
{
  return fseek (stream, offset, SEEK_CUR);
}

int
isoctdigit (int ch)
{
  return '0' <= ch && ch <= '7';
}

int
isident_f (int ch)
{
  return isalpha (ch) || ch == '$' || ch == '_';
}

int
isident (int ch)
{
  return isalnum (ch) || ch == '$' || ch == '_';
}
