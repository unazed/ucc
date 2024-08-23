#pragma once

#include "array.h"
#include "lexer.h"

#include <stdbool.h>

struct compilation_args
{
  struct
  {
    bool warn_multichar: 1;
  } warn_flags;
  struct
  {
    bool tokenize_comments: 1;
  } parse_flags;
  char** filenames;
  size_t nr_filenames;
};

enum diagn_type
{
  DiagnosticWarning,
  DiagnosticError,
  DiagnosticNote
};

struct diagnostic;
typedef struct diagnostic_impl* diagn_t;

__attribute__((nonnull))
void diagn_free (diagn_t);

__attribute__((warn_unused_result, malloc (diagn_free)))
diagn_t diagn_new (struct compilation_args* comp_args, uint8_t* src_stream,
    const char* const path);

__attribute__((nonnull (1, 4), format (printf, 5, 6)))
void diagn_push (diagn_t, const char* warn_name_opt, enum diagn_type type,
    lexeme_t lexeme, const char* fmt, ...);

__attribute__((nonnull))
uint64_t diagn_flush (diagn_t, fptr_t file);
