#include "grammar.h"
#include "list.h"
#include "tokenizer.h"
#include "parser.h"

#include <argp.h>
#include <stdio.h>
#include <stdlib.h>

const char* arg_program_version = "0.1.0";
const char *argp_program_bug_address = "<unazedv4@protonmail.com>";
static char doc[] = "C compiler written in C";
static char args_doc[] = "[FILENAME]...";

static struct argp_option options[] = { 
    { NULL, 'C', 0, 0, "Tokenize comments" },
    { "output-lex", 'L', "FILE", 0,
      "Dump tokens generated by the lexer to a file"},
    { 0 } 
};

struct arguments
{
  struct compiler_flags flags;
  char** filenames;
  int nr_filenames;
};

static error_t
parse_opt (int key, char* arg, struct argp_state* state)
{
    struct arguments *arguments = state->input;
    switch (key)
    {
      case 'C':
        arguments->flags.tokenize_comments = true;
        break;
      case 'L':
        arguments->flags.lexer_output = arg;
        break;
      case ARGP_KEY_ARG:
        arguments->filenames = &state->argv[state->next - 1];
        arguments->nr_filenames = state->argc - state->next + 1;
        state->next = state->argc;
        break;
      case ARGP_KEY_END:
        if (state->arg_num < 1)
          argp_usage (state);
        break;
      default:
        return ARGP_ERR_UNKNOWN;
    }
    return 0;
}

static struct argp argp = { options, parse_opt, args_doc, doc };

int
main (int argc, char **argv)
{
  struct arguments args = { 0 };
  argp_parse (&argp, argc, argv, 0, 0, &args);

  auto tokenizer = new_object(tokenizer_t);
  auto parser = new_object(parser_t);
  tokenizer->set_flags (&args.flags);

  for (size_t i = 0; i < args.nr_filenames; ++i)
  {
    thunk_unwrap (tokenizer->load_file (args.filenames[i]),
      {
        file_exception * ctx = base_exc;
        ucc_error ("'%s': %s (%s)\n", argv[i], ctx->msg,
                   strerror (ctx->errcode));
      },
      {
        ucc_log ("loaded '%s' as translation unit OK\n", argv[i]);
        tokenizer->tokenize (result->val);
        parser->parse_unit (result->val);
      }
    );
  }

  free_object (parser);
  free_object (tokenizer);
  return EXIT_SUCCESS;
}
