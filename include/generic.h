#pragma once

#include "ansi-colors.h"

#include <errno.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <inttypes.h>

#define auto __extension__ __auto_type

#define CONCAT(x, y) x##y
#define STRINGIZE(x) #x

#undef _DEBUG
#ifndef _DEBUG_LOGLEVEL
# define _DEBUG_LOGLEVEL 0
#endif

#define LOG_PRINT(fp, fmt, ...) \
  fprintf ((fp), CTEXT (BWHITE, "%s:%" PRIu32) ": " fmt "\n", __FILE__, __LINE__,##__VA_ARGS__)

#if _DEBUG_LOGLEVEL > 0
# define log_primary(fmt, ...) \
    LOG_PRINT (stdout, CTEXT (BLUE, "log: ") fmt,##__VA_ARGS__)
# define dbg_assert(cond, fmt, ...) \
    ucc_assert (cond, fmt,##__VA_ARGS__)
# define _DEBUG_PRIMARY
#else 
# define log_primary(fmt, ...) {}
# define dbg_assert(cond, fmt, ...)
#endif

#if _DEBUG_LOGLEVEL > 1
# define log_verbose(fmt, ...) \
    LOG_PRINT (stdout, CTEXT (BBLUE, "verbose: ") fmt,##__VA_ARGS__)
# define _DEBUG_VERBOSE
#else
# define log_verbose(fmt, ...) {}
#endif

#if _DEBUG_LOGLEVEL > 2
# define log_minutiae(fmt, ...) \
    LOG_PRINT (stdout, CTEXT (BCYAN, "minutiae: ") fmt,##__VA_ARGS__)
# define _DEBUG_MINUTIAE
# define chk_calloc(nmemb, size) __chk_calloc_impl (__func__, (nmemb), (size))
# define chk_free(ptr) __chk_free_impl (__func__, ptr)
# define chk_realloc(ptr, size) __chk_realloc_impl (__func__, (ptr), (size))
#else
# define log_minutiae(fmt, ...) {}
# define chk_calloc(nmemb, size) calloc((nmemb), (size))
# define chk_free(ptr) free (ptr)
# define chk_realloc(ptr, size) realloc ((ptr), (size))
#endif

#define chk_calloc_struct(ptr_ty) chk_calloc(1, sizeof (*(ptr_ty)NULL))

#define ucc_error(fmt, ...) \
  LOG_PRINT (stderr, CTEXT (BRED, "error: ") fmt,##__VA_ARGS__)
#define ucc_werror(fmt, ...) \
  LOG_PRINT (stderr, CTEXT (BRED, "error: ") fmt " (%s)",##__VA_ARGS__, strerror (errno))
#define ucc_warning(fmt, ...) \
  LOG_PRINT (stdout, CTEXT (BCYAN, "warning: ") fmt,##__VA_ARGS__)

#define ucc_exit(fmt, ...) \
  { \
    ucc_error (fmt,##__VA_ARGS__); \
    exit (EXIT_FAILURE); \
  }
#define ucc_assert(cond, fmt, ...) \
  if (!(cond)) \
    { \
      ucc_error (CTEXT (BWHITE, "Assertion failed: ") "%s", STRINGIZE (cond)); \
      ucc_exit (fmt,##__VA_ARGS__); \
    }
#define ucc_unimplemented() ucc_exit("`%s` unimplemented", __func__)
#define fmt_ptr(ptr) ((void *)((uintptr_t)ptr & 0xFFFFFFFF))

void __chk_free_impl (const char* fn, void* ptr);
void __chk_free_impl_nofn (void* ptr);
void* __chk_calloc_impl (const char* fn, size_t nmemb, size_t size);
void* __chk_realloc_impl (const char* fn, void* ptr, size_t size);

#ifdef _DEBUG_MEMORY
void dbg_mem_dump_stats (void);
#endif
