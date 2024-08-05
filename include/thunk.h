#pragma once

#include <stdlib.h>
#include <string.h>

#define THUNK_CTOR_PRIO 102

#define auto __auto_type

#define _concat(a, b) a##b
#define concat(a, b) _concat(a, b)
#define concat3(a, b, c) concat(concat(a, b), c)

#define impln(name) __impl_##name

/* Naming macros */
#define thunk_method_name(thunk_name, method_name) \
  concat3(impln(thunk_name), _THUNK__, method_name)
#define thunk_method_impl_name(thunk_name, method_name) \
  concat3(impln(thunk_name), _IMPL__, method_name)
#define thunk_dummy_name(thunk_name, method_name) \
  concat3(impln(thunk_name), _DUMMY__, method_name)
#define thunk_struct_name(thunk_name) \
  concat3(impln(struct), __, thunk_name)
#define thunk_struct_entry_name(thunk_name) concat(g, impln(thunk_name))
#define thunk_result_name(thunk_name, method_name) \
  concat3(impln(thunk_name), _RESULT__, method_name)
#define thunk_special_name(thunk_name, method_name) \
  concat3(impln(thunk_name), _SPECIAL__, method_name)
#define thunk_special_dummy_name(thunk_name, method_name) \
  concat3(impln(thunk_name), _DUMMY_SPECIAL__, method_name)
#define thunk_self_ty(thunk_name) impln(thunk_name)

/* Definition macros */
#define define_thunk_method(thunk_name, ret_ty, method_name) \
  ret_ty thunk_dummy_name(thunk_name, method_name)(void); \
  ret_ty thunk_method_name(thunk_name, method_name)
#define define_thunk_method_maythrow(thunk_name, ret_ty, method_name) \
  struct thunk_result_name(thunk_name, method_name) \
  { \
    bool error; \
    thunk_base_exception_t ctx; \
    ret_ty val; \
  }; \
  define_thunk_method (thunk_name, \
      struct thunk_result_name(thunk_name, method_name)*, method_name)
#define define_thunk_object(thunk_name, struct_) \
  typedef struct thunk_struct_name(thunk_name) \
  { \
    struct impln(offsets) offsets; \
    struct { \
      void (*init_fn)(struct thunk_struct_name(thunk_name)*); \
      void (*dtor_fn)(struct thunk_struct_name(thunk_name)*); \
    } impln(special); \
    struct struct_; \
  } *impln(thunk_name); \
  void thunk_special_name(thunk_name, init)(impln(thunk_name)); \
  void thunk_special_name(thunk_name, dtor)(impln(thunk_name)); \
  struct thunk_struct_name(thunk_name) thunk_struct_entry_name(thunk_name) \
    __attribute__((weak));
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

/* Accessor macros */
#define thunk_public_attr(thunk_object, attr) \
  (thunk_object)->impln(public).attr
#define thunk_private_attr(thunk_object, attr) \
  (thunk_object)->impln(private).attr
 
/* Decl. macros */
#define declare_thunk_method(thunk_name, method_name) \
  typeof (thunk_dummy_name(thunk_name, method_name)()) \
  thunk_method_impl_name(thunk_name, method_name)(); \
  __attribute__((constructor(THUNK_CTOR_PRIO))) \
  typeof (thunk_dummy_name(thunk_name, method_name)()) \
  thunk_dummy_name(thunk_name, method_name)(void) \
  { \
    thunk_struct_entry_name(thunk_name).impln(base_methods).method_name \
      = (void *)thunk_method_impl_name(thunk_name, method_name); \
    return (typeof (thunk_dummy_name(thunk_name, method_name)())){ 0 }; \
  } \
  typeof (thunk_dummy_name(thunk_name, method_name)()) \
  thunk_method_impl_name(thunk_name, method_name)
#define declare_thunk_initializer(thunk_name) \
  __attribute__((constructor(THUNK_CTOR_PRIO))) \
  void thunk_special_dummy_name(thunk_name, init)(void) \
  { \
    thunk_struct_entry_name(thunk_name).impln(special).init_fn \
      = (void *)thunk_special_name(thunk_name, init); \
  } \
  void thunk_special_name(thunk_name, init)
#define declare_thunk_finalizer(thunk_name) \
  __attribute__((constructor(THUNK_CTOR_PRIO))) \
  void thunk_special_dummy_name(thunk_name, dtor)(void) \
  { \
    thunk_struct_entry_name(thunk_name).impln(special).dtor_fn \
      = (void *)thunk_special_name(thunk_name, dtor); \
  } \
  void thunk_special_name(thunk_name, dtor)

/* Utility macros */
#define sizeof_thunk(thunk_name) \
  (sizeof (struct thunk_struct_name(thunk_name)))
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
    auto init_fn = ret->impln(special).init_fn; \
    if (init_fn != NULL) init_fn (ret); \
    ret; \
  })
#define free_object(name_) \
  ({ \
    auto name = name_; \
    auto dtor_fn = name->impln(special).dtor_fn; \
    if (dtor_fn != NULL) dtor_fn (name); \
    auto nr_methods = ((name)->impln(offs_methods_end) - \
        (name)->impln(offs_methods_start)) / sizeof (void *); \
    auto methods = (void **)(name)->impln(offs_methods_start); \
    for (size_t i = 0; i < nr_methods; ++i) \
      free ((char *)methods[i] - sizeof (struct impln(thunk))); \
    free (name); \
  })

/* Result utility amcros */
#define thunk_result_t(thunk_name, method_name, val_) \
  ({ \
    struct thunk_result_name(thunk_name, method_name)* ret = calloc (1, \
        sizeof (struct thunk_result_name(thunk_name, method_name))); \
    ret->error = false; \
    ret->val = val_; \
    ret; \
  })
#define thunk_error_t(thunk_name, method_name, ctx_) \
  ({ \
    auto ctx = ctx_; \
    auto tmp = calloc (1, sizeof (ctx)); \
    memcpy (tmp, &ctx_, sizeof (ctx)); \
    struct thunk_result_name(thunk_name, method_name)* ret = calloc (1, \
        sizeof (struct thunk_result_name(thunk_name, method_name))); \
    ret->error = true; \
    ret->ctx = tmp; \
    ret; \
  })
#define thunk_exception_struct(struct_) \
  struct \
  { \
    const char* msg; \
    struct struct_; \
  }
#define thunk_unwrap(result_, on_error, on_success) \
  ({ \
    auto result = result_; \
    typeof (result->val) error(void* base_exc) \
    { \
      on_error \
      return (typeof (result->val)) { 0 }; \
    } \
    typeof (result->val) success(void) \
    { \
      on_success \
      return result->val; \
    } \
    auto ret = result->error? error (result->ctx): success (); \
    free (result->ctx); \
    free (result); \
    ret; \
  })

typedef thunk_exception_struct({}) *thunk_base_exception_t;

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
