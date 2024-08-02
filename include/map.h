#pragma once

#include "../include/common.h"
#include "../include/thunk.h"

#include <stdio.h>
#include <stdbool.h>

#define INITIAL_SLOT_ALLOC (32)

#define REALLOCATION_THRESHOLD (80)
#if (REALLOCATION_THRESHOLD <= 0 || REALLOCATION_THRESHOLD >= 100)
  #error "REALLOCATION_THRESHOLD must be in the range (0, 100)"
#endif

typedef size_t hash_t;

typedef struct map_slot
{
  hash_t hash;
  const void* key;
  void* value;
  struct map_slot* next;
  bool in_use;
} *map_slot_t;

struct hash_parameters
{
  size_t a, b, p;
};

define_thunk_method(map_t, void*, set)(InArg const char* key, InArg void* val)
  __attribute__((nonnull, null_terminated_string_arg (1)));
define_thunk_method(map_t, void*, get)(InArg const char* key)
  __attribute__((nonnull, null_terminated_string_arg (1)));
define_thunk_method(map_t, bool, remove)(InArg const char* key)
  __attribute__((nonnull, null_terminated_string_arg (1)));
define_thunk_method_maythrow(map_t, map_slot_t, alloc_sized_slots)(
    InArg size_t size)
  __attribute__((warn_unused_result));
define_thunk_method_maythrow(map_t, bool, maybe_resize)(void);

define_thunk_object(map_t, {
  thunk_attr_public({
    size_t capacity;
    size_t size;
    struct map_slot* slots;
  });

  thunk_attr_private({
    struct hash_parameters params;
    double realloc_mult;
    size_t nr_collisions;
    bool disable_resize;
  });

  thunk_attr_methods({
    thunk_bind_method(map_t, set); 
    thunk_bind_method(map_t, get);
    thunk_bind_method(map_t, remove);
    thunk_bind_method(map_t, alloc_sized_slots);
    thunk_bind_method(map_t, maybe_resize);
  });
});

