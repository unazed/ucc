#pragma once

#include <stdlib.h>

#define ARRAY_INITIAL_SIZE (32)

#define array_for_each(array, ty, iter) \
  ty iter; \
  for (size_t i = 0; i < array_length (array) && (iter = array_get (array, i)); ++i) 

typedef struct array_impl *array_t;
typedef void (*array_free_callback_t)(void* item);

__attribute__((warn_unused_result))
array_t array_new (void);

__attribute__((warn_unused_result))
array_t array_new_sized (size_t size);

__attribute__((nonnull (1)))
void* array_insert (array_t, size_t idx, void* item);

__attribute__((nonnull (1)))
void* array_remove (array_t, size_t idx);

__attribute__((nonnull (1), warn_unused_result))
void* array_pop (array_t);

__attribute__((nonnull (1)))
void* array_append (array_t, void* item);

__attribute__((nonnull))
void* array_get (array_t, size_t idx);

__attribute__((nonnull))
size_t array_length (array_t);

__attribute__((nonnull (1)))
void array_free_cb (array_t, array_free_callback_t);

__attribute__((nonnull (1)))
void array_free (array_t);
