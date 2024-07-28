#pragma once

#define DECL_TYPE(name) \
  typedef struct _impl_##name *name; \
  struct _impl_##name
#define auto __auto_type

#define OutArg
#define InArg
