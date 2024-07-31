#pragma once

#include "list.h"
#include "thunk.h"
#include "map.h"
#include "bytestream.h"

struct translation_unit
{ 
  struct
  {
    impln(bytestream_t) stream;
    const char* path;
  } io;
  impln(list_t) token_stream;
};

struct compilation_context
{
  impln(list_t) translation_units;
};
