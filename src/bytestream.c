#include "bytestream.h"
#include "common.h"

#include <string.h>

size_t
clamp_to_bounds(thunk_self_ty(bytestream_t) self, size_t n, size_t offs)
{
  if (n == 0)
    return 0;
  return clamp (thunk_public_attr(self, pos),
                thunk_public_attr(self, length) - offs,
                thunk_public_attr(self, pos) + n)
         - thunk_public_attr(self, pos);
}

declare_thunk_method(bytestream_t, peek)(thunk_self_ty(bytestream_t) self,
                                         size_t lookahead)
{
  if (thunk_public_attr(self, pos) >= thunk_public_attr(self, length))
    return NULL;
  size_t byte_offs = (thunk_public_attr(self, pos) + lookahead)
    * thunk_public_attr(self, size);
  if (byte_offs >= thunk_public_attr(self, length))
    return NULL;
  return (char *)thunk_public_attr(self, data) + byte_offs;
}

declare_thunk_method(bytestream_t, consume)(thunk_self_ty(bytestream_t) self,
                                            size_t n)
{
  thunk_public_attr(self, pos) += clamp_to_bounds(self, n, 0);
  return n;
}

declare_thunk_method(bytestream_t, consume_until)(
  thunk_self_ty(bytestream_t) self, const char* accept)
{
  assert ((thunk_public_attr(self, size) == 1)
          && "consume_until() only valid for char-like streams");
  ssize_t length = 0;
  for (;; ++length)
  {
    char* current = self->peek (0);
    if (current == NULL)
      break;
    if (strchr (accept, *current) != NULL)
      return length;
    self->consume (1);
  }
  return length;
}

declare_thunk_method(bytestream_t, get)(thunk_self_ty(bytestream_t) self)
{
  void* c = self->peek (0);
  if (c != NULL)
    self->consume (1);
  return c;
}

declare_thunk_method(bytestream_t, is_eof)(thunk_self_ty(bytestream_t) self)
{
  return thunk_public_attr(self, pos) * thunk_public_attr(self, size)
         >= thunk_public_attr(self, length);
}

declare_thunk_initializer(bytestream_t)(thunk_self_ty(bytestream_t) self)
{
  thunk_public_attr(self, data) = NULL;
  thunk_public_attr(self, pos) = thunk_public_attr(self, size)
    = thunk_public_attr(self, length) = 0;
}
