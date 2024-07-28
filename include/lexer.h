#pragma once

#include <stddef.h>
#include <stdio.h>

#include "../include/common.h"

DECL_TYPE(parse_context_t)
{
  typeof (fopen (NULL, NULL)) fd;
  typeof (fread (NULL, 0, 0, NULL)) pos;
};

ptrdiff_t
token_read_next (InArg parse_context_t, OutArg char*);
