#pragma once

#include "common.h"

long
strntol (InArg const char *str, InArg size_t sz, OutArg char **end,
    InArg int base);
