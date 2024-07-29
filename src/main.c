#include "../include/tokenizer.h"

#include <stdio.h>
#include <stdlib.h>

int
main (int argc, char** argv)
{
  if (argc != 2)
    {
      ucc_error("no input files\n");
      return EXIT_FAILURE;    
    }
  auto tokenizer = new_object(tokenizer_t);
  thunk_unwrap(tokenizer->open_file (argv[1], "r"), {
    file_exception* ctx = base_exc;
    ucc_error ("%s (%s)\n", ctx->msg, strerror (ctx->errcode));
  }, {
    ucc_log ("tokenizer->open_file() OK\n");
  });
  tokenizer->tokenize ();
  free_object(tokenizer);
  return EXIT_SUCCESS;
}
