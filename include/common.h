#pragma once

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

#define ucc_error(msg, ...) \
  printf (CFGBOLDWHITE "%s:%d" CRESET ", " CFGRED "critical" CRESET \
      ": " msg, __FILE__, __LINE__,##__VA_ARGS__)

#ifdef DEBUG
  #define ucc_log(msg, ...) \
    printf (CFGBOLDWHITE "[%s:%d, %s()]" CRESET "\n" CFGBLUE "\tdebug" CRESET \
        ": " msg, __FILE__, __LINE__, __func__,##__VA_ARGS__)
#else
  #define ucc_log(msg, ...)
#endif // DEBUG
