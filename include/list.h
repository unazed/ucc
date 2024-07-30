#pragma once

#include "thunk.h"

#include <stdbool.h>

#define list_for_each_entry(list, iter) \
  for (struct list_item* iter = thunk_public_attr((list), head); \
       iter != NULL; iter = iter->next)

struct list_item
{
  void* val;
  struct list_item *prev, *next;
};

define_thunk_method(list_t, void*, insert)(size_t index, void* val);
define_thunk_method(list_t, void*, append)(void* val);
define_thunk_method(list_t, bool, remove)(size_t index);
define_thunk_method(list_t, void*, get)(size_t index);

define_thunk_object(list_t, {
  thunk_attr_public({
    size_t length;
    struct list_item* head;
    struct list_item* tail;
  });

  thunk_attr_private({});

  thunk_attr_methods({
    thunk_bind_method(list_t, append);
    thunk_bind_method(list_t, insert);
    thunk_bind_method(list_t, remove);
    thunk_bind_method(list_t, get);
  });
});

