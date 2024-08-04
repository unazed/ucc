#pragma once

#include <assert.h>
#include <stdio.h>

#define DECL_TYPE(name) \
  typedef struct _impl_##name *name; \
  struct _impl_##name
#define auto __auto_type

#define OutArg
#define InArg

#define CRESET "\e[0m"
#define CFGRED "\e[0;31m"
#define CFGBLUE "\e[0;34m"
#define CFGBOLDWHITE "\e[1;37m"
#define CFGBOLDBLACK "\e[0;30m"
#define CFGBOLDRED "\e[1;31m"

#define max(a,b) \
({ \
    __typeof__ (a) _a = (a); \
    __typeof__ (b) _b = (b); \
    _a > _b ? _a : _b; \
})

#define min(a,b) \
({ \
    __typeof__ (a) _a = (a); \
    __typeof__ (b) _b = (b); \
    _a < _b ? _a : _b; \
})

#define clamp(a, b, x) max(a, min(b, x))

#define ucc_error(msg, ...) \
  printf (CFGBOLDBLACK "%s:%d" CRESET ", " CFGRED "critical" CRESET \
      ": " msg, __FILE__, __LINE__,##__VA_ARGS__)

#ifdef DEBUG
  #define ucc_log(msg, ...) \
    printf (CFGBLUE "debug" CRESET ": " msg, ##__VA_ARGS__)
#else
  #define ucc_log(msg, ...)
#endif // DEBUG

#define __builtin_unimplemented() assert (0 && "Unimplemented routine")
