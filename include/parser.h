#pragma once

#include "common.h"
#include "grammar.h"
#include "map.h"
#include "thunk.h"
#include "tokenizer.h"

define_thunk_method(parser_t, bool, parse_unit)(
    InArg struct translation_unit* unit);

define_thunk_object(parser_t, {
  thunk_attr_public({
    impln(map_t) symbol_table;
    impln(list_t) token_list;
  });

  thunk_attr_private({});

  thunk_attr_methods({
    thunk_bind_method(parser_t, parse_unit);
  });
});
