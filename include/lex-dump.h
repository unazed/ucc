#pragma once

#include "common.h"
#include "thunk.h"
#include "list.h"

void
write_lexer_output_to_file (InArg impln(list_t) lexemes,
    InArg const char* path);
