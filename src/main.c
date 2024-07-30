#include "tokenizer.h"

#include <stdio.h>
#include <stdlib.h>

int
main (int argc, char **argv)
{
  if (argc < 2)
    {
      ucc_error ("no input files\n");
      return EXIT_FAILURE;
    }
  auto tokenizer = new_object (tokenizer_t);
  for (size_t i = 1; i < argc; ++i)
    thunk_unwrap (tokenizer->load_file (argv[i]),
      {
        file_exception * ctx = base_exc;
        ucc_error ("'%s': %s (%s)\n", argv[i], ctx->msg,
                   strerror (ctx->errcode));
      },
      {
        ucc_log ("loaded '%s' as translation unit OK\n", argv[i]);
      }
    );
  free_object (tokenizer);
  return EXIT_SUCCESS;
}
