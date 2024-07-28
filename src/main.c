#include "../include/test.h"

declare_thunk_method(file_t, nread_t, read)(
  thunk_self_ty(file_t) self, nread_t amount, char* out)
{
  thunk_private_attr(self, pos) += fread (
    out, sizeof (char), amount, thunk_public_attr (self, fd));
  return 0;
}

declare_thunk_method(file_t, bool, open)(
  thunk_self_ty(file_t) self, const char* path, char* modes)
{
  thunk_public_attr (self, fd) = fopen (path, modes);
  return false;
}

int
main (void)
{
  auto file = new_object(file_t);
  file->open ("test_file", "r");
  char out[64];
  file->read (63, out);
  free_object (file);
  return EXIT_SUCCESS;
}
