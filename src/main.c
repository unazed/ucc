#include "generic.h"
#include "lexer.h"
#include "tokenizer.h"
#include "diagnostics.h"
#include "io.h"

#include <argp.h>
#include <stdlib.h>
#include <stdbool.h>

const char* arg_program_version = "0.2.0";
const char *argp_program_bug_address = "<unazedv4@protonmail.com>";
static char doc[] = "C compiler written in C";
static char args_doc[] = "[FILENAMES...]";

static struct argp_option options[] = {
  { "warn", 'W', "WARNING", 0, "Toggle specific warning conditions", 0 },
  { "compiler", 'C', "COMPILER", 0, "Toggle specific compilation flags", 0},
  { 0 } 
};

static bool
parse_warning_opt (struct compilation_args* args, char* arg)
{
  bool invert = true;
  bool is_valid_flag = false;
  if (!strncmp (arg, "no-", 3))
    {
      invert = false;
      arg += 3;
    }
  if (!strcmp (arg, "multichar"))
    {
      args->warn_flags.warn_multichar = invert;
      is_valid_flag = true;
    }
  return is_valid_flag;
}

static bool
parse_compiler_opt (struct compilation_args* args, char* arg)
{
  bool invert = true;
  bool is_valid_flag = false;
  if (!strncmp (arg, "no-", 3))
    {
      invert = false;
      arg += 3;
    }
  if (!strcmp (arg, "tokenize-comments"))
    {
      args->parse_flags.tokenize_comments = invert;
      is_valid_flag = true;
    }
  return is_valid_flag;
}

static error_t
parse_opt (int key, char* arg, struct argp_state* state)
{
  struct compilation_args* arguments = state->input;
  switch (key)
  {
    case ARGP_KEY_ARG:
      arguments->filenames = &state->argv[state->next - 1];
      arguments->nr_filenames = (uint32_t)(state->argc - state->next) + 1;
      state->next = state->argc;
      break;
    case 'W':
      if (arg == NULL)
        argp_error (state, "The -W flag requires a valid warning specifier");
      if (!parse_warning_opt (arguments, arg))
        argp_error (state, "Unknown warning specifier \"%s\"", arg);
      break;
    case 'C':
      if (arg == NULL)
        argp_error (state, "The -C flag requires a valid compilation flag specifier");
      if (!parse_compiler_opt (arguments, arg))
        argp_error (state, "Unknown compilation flag \"%s\"", arg);
      break;
    case ARGP_KEY_END:
      if (state->arg_num < 1)
      {
        argp_usage (state);
        exit (EXIT_FAILURE);
      }
      break;
    default:
      return ARGP_ERR_UNKNOWN;
  }
  return 0;
}

static struct argp argp = {
  options, parse_opt, args_doc, doc, NULL, NULL, NULL
};

static void
set_default_flags (struct compilation_args* args)
{
  args->parse_flags.tokenize_comments = false;
  args->warn_flags.warn_multichar = true;
}

#ifdef _DEBUG_PRIMARY
static void
dbg_dump_comp_args (struct compilation_args* args)
{
  log_primary ("Compilation flags:");
  log_primary ("\tTokenize comments? %s", args->parse_flags.tokenize_comments? "Yes": "No");
  log_primary ("Warnings:");
  log_primary ("\tWarn on multi-char. character literals? %s", args->warn_flags.warn_multichar? "Yes": "No");
}
#endif

int
main (int argc, char **argv)
{
  struct compilation_args args = { 0 };
  set_default_flags (&args);
  argp_parse (&argp, argc, argv, 0, 0, &args);
#ifdef _DEBUG_PRIMARY
  dbg_dump_comp_args (&args);
#endif
  log_verbose ("Read in " CTEXT (BWHITE, "%zu") " filename(s):", args.nr_filenames);
  /* will be DCO'd during opt-passes */
  for (size_t i = 0; i < args.nr_filenames; ++i)
    log_verbose ("%zu. " CTEXT (BWHITE, "%s"), i, args.filenames[i]);
  auto lexer = lex_ctx_new (&args);
  for (size_t i = 0; i < args.nr_filenames; ++i)
  {
    auto fptr = io_open_file (args.filenames[i], "r");
    if (fptr != NULL)
      {
        lex_ctx_load_file (lexer, fptr, args.filenames[i]);
        io_close_file (fptr);
      }
  }
  auto nr_errors = lex_ctx_process (lexer);
  auto tokenizer = tkn_new (lexer);
  if (nr_errors > 0)
    {
      log_primary ("encountered %" PRIu64 " error(s) during lexing, exiting",
                   nr_errors);
      goto finalize;
    }

finalize:
  tkn_free (tokenizer);
  lex_ctx_free (lexer);
#ifdef _DEBUG_MEMORY
  dbg_mem_dump_stats ();
#endif
  return EXIT_SUCCESS;
}
