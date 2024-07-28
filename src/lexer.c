#include "../include/common.h"
#include "../include/lexer.h"

#include <ctype.h>

ptrdiff_t
token_read_next (parse_context_t ctx, char* token)
{
  auto nread = 0;
  auto c = fgetc (ctx->fd);
  do
  {
    if (isspace (c))
      break;
    token[nread++] = c;
  } while (!feof (ctx->fd) && (c = fgetc (ctx->fd)));
  token[nread] = '\0';
  ctx->pos += nread;
  return nread;
}
