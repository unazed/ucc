#include "bytestream.h"
#include "common.h"

size_t
clamp_to_bounds(thunk_self_ty(bytestream_t) self, size_t n, size_t offs)
{
  return clamp (thunk_public_attr(self, pos),
                thunk_public_attr(self, length) - offs,
                thunk_public_attr(self, pos) + n)
         - thunk_public_attr(self, pos);
}

declare_thunk_method(bytestream_t, peek)(thunk_self_ty(bytestream_t) self,
                                         size_t lookahead)
{
  if (thunk_public_attr(self, pos) == thunk_public_attr(self, length))
    return NULL;
  lookahead = clamp_to_bounds(self, lookahead - 1, 1);
  return (char *)thunk_public_attr(self, data)
         + (thunk_public_attr(self, pos) + lookahead)
           * thunk_public_attr(self, size);
}

declare_thunk_method(bytestream_t, consume)(thunk_self_ty(bytestream_t) self,
                                            size_t n)
{
  thunk_public_attr(self, pos) += clamp_to_bounds(self, n, 0);
  return n;
}

declare_thunk_method(bytestream_t, get)(thunk_self_ty(bytestream_t) self)
{
  void* c = self->peek (1);
  self->consume (1);
  return c;
}

declare_thunk_method(bytestream_t, current)(thunk_self_ty(bytestream_t) self)
{
  return self->peek (0);
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
