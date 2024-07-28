#pragma once

#include <stdlib.h>
#include <string.h>

#define THUNK_CTOR_PRIO 102
#define THUNK_INIT_PRIO 101

#define auto __auto_type

#define _concat(a, b) a##b
#define concat(a, b) _concat(a, b)
#define concat3(a, b, c) concat(concat(a, b), c)

#define impln(name) __impl_##name

#define thunk_method_name(thunk_name, method_name) \
  concat3(impln(thunk_name), _THUNK__, method_name)
#define thunk_method_impl_name(thunk_name, method_name) \
  concat3(impln(thunk_name), _IMPL__, method_name)
#define thunk_dummy_name(thunk_name, method_name) \
  concat3(impln(thunk_name), _DUMMY__, method_name)
#define thunk_struct_name(thunk_name) \
  concat3(impln(struct), __, thunk_name)
#define thunk_struct_entry_name(thunk_name) concat(g, impln(thunk_name))

#define define_thunk_method(thunk_name, ret_ty, method_name) \
  ret_ty thunk_dummy_name(thunk_name, method_name)(void); \
  ret_ty thunk_method_name(thunk_name, method_name)
#define define_thunk_object(thunk_name, struct_) \
  typedef struct thunk_struct_name(thunk_name) \
  { \
    struct impln(offsets) offsets; \
    struct struct_; \
  } *impln(thunk_name); \
  struct thunk_struct_name(thunk_name) thunk_struct_entry_name(thunk_name);
#define thunk_bind_method(thunk_name, method_name) \
  typeof (thunk_method_name(thunk_name, method_name)) *method_name;

#define thunk_attr_public(struct_) \
  char impln(offs_public)[0]; \
  struct struct_ impln(public);
#define thunk_attr_private(struct_) \
  char impln(offs_private)[0]; \
  struct struct_ impln(private);
#define thunk_attr_methods(struct_) \
  char impln(offs_base_methods)[0]; \
  struct struct_ impln(base_methods); \
  char impln(offs_methods_start)[0]; \
  struct struct_; \
  char impln(offs_methods_end)[0]; \

#define thunk_public_attr(thunk_object, attr) \
  (thunk_object)->impln(public).attr
#define thunk_private_attr(thunk_object, attr) \
  (thunk_object)->impln(private).attr
#define thunk_self_ty(thunk_name) impln(thunk_name)

#define declare_thunk_method(thunk_name, ret_ty, method_name) \
  ret_ty thunk_method_impl_name(thunk_name, method_name)(); \
  __attribute__((constructor(THUNK_CTOR_PRIO))) \
  ret_ty thunk_dummy_name(thunk_name, method_name)(void) \
  { \
    thunk_struct_entry_name(thunk_name).impln(base_methods).method_name \
      = (void *)thunk_method_impl_name(thunk_name, method_name); \
  } \
  ret_ty thunk_method_impl_name(thunk_name, method_name)

#define sizeof_thunk(thunk_name) (sizeof (struct thunk_struct_name(thunk_name)))
#define new_object(thunk_name) \
  ({ \
    impln(thunk_name) ret = calloc (1, sizeof_thunk(thunk_name)); \
    memcpy (ret, &thunk_struct_entry_name(thunk_name), \
        sizeof_thunk(thunk_name)); \
    ret->offsets.public_ = ret->impln(offs_public); \
    ret->offsets.private_ = ret->impln(offs_private); \
    ret->offsets.base_methods = ret->impln(offs_base_methods); \
    ret->offsets.methods.start = ret->impln(offs_methods_start); \
    ret->offsets.methods.end = ret->impln(offs_methods_end); \
    initialize_thunks ((struct impln(offsets)*)ret); \
    ret; \
  })
#define free_object(name) \
  ({ \
    auto nr_methods = ((name)->impln(offs_methods_end) - (name)->impln(offs_methods_start)) / sizeof (void *); \
    auto methods = (void **)(name)->impln(offs_methods_start); \
    for (size_t i = 0; i < nr_methods; ++i) \
      free ((char *)methods[i] - sizeof (struct impln(thunk))); \
    free (name); \
  })

extern const void *__start_thunk_stub, *__stop_thunk_stub;

struct impln(thunk)
{
  void *self, *target;
  char code[0];
};

struct impln(offsets)
{
  void *public_, *private_, *base_methods;
  struct
  {
    void *start, *end;
  } methods;
};

void initialize_thunks(struct impln(offsets)*);
