# 0 "src/lexer.c"
# 1 "/home/unazed/Programming/c/ucc-0.2.0//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "src/lexer.c"
# 1 "include/array.h" 1
       

# 1 "/usr/include/stdlib.h" 1 3 4
# 26 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 394 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 395 "/usr/include/features.h" 2 3 4
# 503 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 576 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 577 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 578 "/usr/include/sys/cdefs.h" 2 3 4
# 504 "/usr/include/features.h" 2 3 4
# 527 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 528 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/stdlib.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h" 1 3 4
# 214 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h" 3 4

# 214 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 329 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 41 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 42 "/usr/include/stdlib.h" 2 3 4
# 56 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/floatn.h" 1 3 4
# 119 "/usr/include/bits/floatn.h" 3 4
# 1 "/usr/include/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/bits/floatn-common.h" 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 25 "/usr/include/bits/floatn-common.h" 2 3 4
# 120 "/usr/include/bits/floatn.h" 2 3 4
# 57 "/usr/include/stdlib.h" 2 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;





__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
# 98 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));



extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));



__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));



extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 177 "/usr/include/stdlib.h" 3 4
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 480 "/usr/include/stdlib.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void *)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ , __leaf__)) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void *)0), 10);
}


__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__ , __leaf__)) atoll (const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void *)0), 10);
}
# 505 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));




# 1 "/usr/include/sys/types.h" 1 3 4
# 27 "/usr/include/sys/types.h" 3 4


# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/timesize.h" 1 3 4
# 19 "/usr/include/bits/timesize.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 20 "/usr/include/bits/timesize.h" 2 3 4
# 29 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 142 "/usr/include/bits/types.h" 2 3 4
# 1 "/usr/include/bits/time64.h" 1 3 4
# 143 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 30 "/usr/include/sys/types.h" 2 3 4



typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;


typedef __loff_t loff_t;




typedef __ino_t ino_t;
# 59 "/usr/include/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 97 "/usr/include/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;




# 1 "/usr/include/bits/types/clock_t.h" 1 3 4






typedef __clock_t clock_t;
# 127 "/usr/include/sys/types.h" 2 3 4

# 1 "/usr/include/bits/types/clockid_t.h" 1 3 4






typedef __clockid_t clockid_t;
# 129 "/usr/include/sys/types.h" 2 3 4
# 1 "/usr/include/bits/types/time_t.h" 1 3 4
# 10 "/usr/include/bits/types/time_t.h" 3 4
typedef __time_t time_t;
# 130 "/usr/include/sys/types.h" 2 3 4
# 1 "/usr/include/bits/types/timer_t.h" 1 3 4






typedef __timer_t timer_t;
# 131 "/usr/include/sys/types.h" 2 3 4
# 144 "/usr/include/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h" 1 3 4
# 145 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;




# 1 "/usr/include/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 156 "/usr/include/sys/types.h" 2 3 4


typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;


typedef int register_t __attribute__ ((__mode__ (__word__)));
# 176 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 24 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 35 "/usr/include/bits/endian.h" 3 4
# 1 "/usr/include/bits/endianness.h" 1 3 4
# 36 "/usr/include/bits/endian.h" 2 3 4
# 25 "/usr/include/endian.h" 2 3 4
# 35 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/byteswap.h" 1 3 4
# 33 "/usr/include/bits/byteswap.h" 3 4
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{

  return __builtin_bswap16 (__bsx);



}






static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{

  return __builtin_bswap32 (__bsx);



}
# 69 "/usr/include/bits/byteswap.h" 3 4
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{

  return __builtin_bswap64 (__bsx);



}
# 36 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/bits/uintn-identity.h" 1 3 4
# 32 "/usr/include/bits/uintn-identity.h" 3 4
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}

static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}

static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
# 37 "/usr/include/endian.h" 2 3 4
# 177 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/select.h" 1 3 4
# 30 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 31 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/types/sigset_t.h" 1 3 4



# 1 "/usr/include/bits/types/__sigset_t.h" 1 3 4




typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/bits/types/sigset_t.h" 2 3 4


typedef __sigset_t sigset_t;
# 34 "/usr/include/sys/select.h" 2 3 4



# 1 "/usr/include/bits/types/struct_timeval.h" 1 3 4







struct timeval
{




  __time_t tv_sec;
  __suseconds_t tv_usec;

};
# 38 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/types/struct_timespec.h" 1 3 4
# 11 "/usr/include/bits/types/struct_timespec.h" 3 4
struct timespec
{



  __time_t tv_sec;




  __syscall_slong_t tv_nsec;
# 31 "/usr/include/bits/types/struct_timespec.h" 3 4
};
# 40 "/usr/include/sys/select.h" 2 3 4



typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 59 "/usr/include/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 91 "/usr/include/sys/select.h" 3 4

# 102 "/usr/include/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 127 "/usr/include/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 150 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select2.h" 1 3 4
# 23 "/usr/include/bits/select2.h" 3 4
# 1 "/usr/include/bits/select-decl.h" 1 3 4
# 27 "/usr/include/bits/select-decl.h" 3 4
extern long int __fdelt_chk (long int __d);
extern long int __fdelt_warn (long int __d)
  __attribute__((__warning__ ("bit outside of fd_set selected")));
# 24 "/usr/include/bits/select2.h" 2 3 4
# 151 "/usr/include/sys/select.h" 2 3 4



# 180 "/usr/include/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 227 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/bits/thread-shared-types.h" 1 3 4
# 44 "/usr/include/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/bits/pthreadtypes-arch.h" 1 3 4
# 21 "/usr/include/bits/pthreadtypes-arch.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 22 "/usr/include/bits/pthreadtypes-arch.h" 2 3 4
# 45 "/usr/include/bits/thread-shared-types.h" 2 3 4

# 1 "/usr/include/bits/atomic_wide_counter.h" 1 3 4
# 25 "/usr/include/bits/atomic_wide_counter.h" 3 4
typedef union
{
  __extension__ unsigned long long int __value64;
  struct
  {
    unsigned int __low;
    unsigned int __high;
  } __value32;
} __atomic_wide_counter;
# 47 "/usr/include/bits/thread-shared-types.h" 2 3 4




typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
# 76 "/usr/include/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/bits/struct_mutex.h" 1 3 4
# 22 "/usr/include/bits/struct_mutex.h" 3 4
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;



  int __kind;

  short __spins;
  short __elision;
  __pthread_list_t __list;
# 53 "/usr/include/bits/struct_mutex.h" 3 4
};
# 77 "/usr/include/bits/thread-shared-types.h" 2 3 4
# 89 "/usr/include/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/bits/struct_rwlock.h" 1 3 4
# 23 "/usr/include/bits/struct_rwlock.h" 3 4
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;




  unsigned char __pad1[7];


  unsigned long int __pad2;


  unsigned int __flags;
# 55 "/usr/include/bits/struct_rwlock.h" 3 4
};
# 90 "/usr/include/bits/thread-shared-types.h" 2 3 4




struct __pthread_cond_s
{
  __atomic_wide_counter __wseq;
  __atomic_wide_counter __g1_start;
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};

typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;

typedef struct
{
  int __data ;
} __once_flag;
# 24 "/usr/include/bits/pthreadtypes.h" 2 3 4



typedef unsigned long int pthread_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;


typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;





typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 228 "/usr/include/sys/types.h" 2 3 4



# 515 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));



extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern __uint32_t arc4random (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));


extern void arc4random_buf (void *__buf, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern __uint32_t arc4random_uniform (__uint32_t __upper_bound)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) __attribute__ ((__warn_unused_result__));

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2))) __attribute__ ((__warn_unused_result__));






extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));


extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));







extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__))
     __attribute__ ((__alloc_size__ (2, 3)))
    __attribute__ ((__malloc__ (__builtin_free, 1)));


extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__ (reallocarray, 1)));



# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 707 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) __attribute__ ((__warn_unused_result__));




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));




extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_align__ (1)))
     __attribute__ ((__alloc_size__ (2))) __attribute__ ((__warn_unused_result__));



extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 786 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 814 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 827 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 849 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 870 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 923 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) __attribute__ ((__warn_unused_result__));
# 940 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));






typedef int (*__compar_fn_t) (const void *, const void *);
# 960 "/usr/include/stdlib.h" 3 4
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) __attribute__ ((__warn_unused_result__));


# 1 "/usr/include/bits/stdlib-bsearch.h" 1 3 4
# 19 "/usr/include/bits/stdlib-bsearch.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) void *
bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size,
  __compar_fn_t __compar)
{
  size_t __l, __u, __idx;
  const void *__p;
  int __comparison;

  __l = 0;
  __u = __nmemb;
  while (__l < __u)
    {
      __idx = (__l + __u) / 2;
      __p = (const void *) (((const char *) __base) + (__idx * __size));
      __comparison = (*__compar) (__key, __p);
      if (__comparison < 0)
 __u = __idx;
      else if (__comparison > 0)
 __l = __idx + 1;
      else
 {

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wcast-qual"

   return (void *) __p;

#pragma GCC diagnostic pop

 }
    }

  return ((void *)0);
}
# 966 "/usr/include/stdlib.h" 2 3 4




extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 980 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));


__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));






extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
# 1012 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));





extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__read_only__, 2)));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__access__ (__write_only__, 1)))
  __attribute__ ((__access__ (__read_only__, 2)));






extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
# 1099 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) __attribute__ ((__warn_unused_result__));
# 1145 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1155 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/bits/stdlib-float.h" 1 3 4
# 24 "/usr/include/bits/stdlib-float.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ , __leaf__)) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void *)0));
}
# 1156 "/usr/include/stdlib.h" 2 3 4



# 1 "/usr/include/bits/stdlib.h" 1 3 4
# 23 "/usr/include/bits/stdlib.h" 3 4
extern char *__realpath_chk (const char *__restrict __name,
        char *__restrict __resolved,
        size_t __resolvedlen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__realpath_alias (const char *__restrict __name, char *__restrict __resolved) __asm__ ("" "realpath") __attribute__ ((__nothrow__ , __leaf__))

                                                 __attribute__ ((__warn_unused_result__));
extern char *__realpath_chk_warn (const char *__restrict __name, char *__restrict __resolved, size_t __resolvedlen) __asm__ ("" "__realpath_chk") __attribute__ ((__nothrow__ , __leaf__))


                                                __attribute__ ((__warn_unused_result__))
     __attribute__((__warning__ ("second argument of realpath must be either NULL or at " "least PATH_MAX bytes long buffer")))
                                      ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) realpath (const char *__restrict __name, char *__restrict __resolved)
{
  size_t sz = __builtin_dynamic_object_size (__resolved, 1);

  if (sz == (size_t) -1)
    return __realpath_alias (__name, __resolved);





  return __realpath_chk (__name, __resolved, sz);
}


extern int __ptsname_r_chk (int __fd, char *__buf, size_t __buflen,
       size_t __nreal) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)))
    __attribute__ ((__access__ (__write_only__, 2, 3)));
extern int __ptsname_r_alias (int __fd, char *__buf, size_t __buflen) __asm__ ("" "ptsname_r") __attribute__ ((__nothrow__ , __leaf__))

     __attribute__ ((__nonnull__ (2))) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern int __ptsname_r_chk_warn (int __fd, char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__ptsname_r_chk") __attribute__ ((__nothrow__ , __leaf__))


     __attribute__ ((__nonnull__ (2))) __attribute__((__warning__ ("ptsname_r called with buflen bigger than " "size of buf")))
                   ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) ptsname_r (int __fd, char *__buf, size_t __buflen)
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 1)) && (__builtin_dynamic_object_size (__buf, 1)) == (long unsigned int) -1) || (((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char))))) && (((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char)))))) ? __ptsname_r_alias (__fd, __buf, __buflen) : ((((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) && !(((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) ? __ptsname_r_chk_warn (__fd, __buf, __buflen, __builtin_dynamic_object_size (__buf, 1)) : __ptsname_r_chk (__fd, __buf, __buflen, __builtin_dynamic_object_size (__buf, 1))))

                           ;
}


extern int __wctomb_chk (char *__s, wchar_t __wchar, size_t __buflen)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int __wctomb_alias (char *__s, wchar_t __wchar) __asm__ ("" "wctomb") __attribute__ ((__nothrow__ , __leaf__))
              __attribute__ ((__warn_unused_result__));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) int
__attribute__ ((__nothrow__ , __leaf__)) wctomb (char *__s, wchar_t __wchar)
{







  if (__builtin_dynamic_object_size (__s, 1) != (size_t) -1
      && 16 > __builtin_dynamic_object_size (__s, 1))
    return __wctomb_chk (__s, __wchar, __builtin_dynamic_object_size (__s, 1));
  return __wctomb_alias (__s, __wchar);
}


extern size_t __mbstowcs_chk (wchar_t *__restrict __dst,
         const char *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__access__ (__read_only__, 2)));
extern size_t __mbstowcs_nulldst (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len) __asm__ ("" "mbstowcs") __attribute__ ((__nothrow__ , __leaf__))



    __attribute__ ((__access__ (__read_only__, 2)));
extern size_t __mbstowcs_alias (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len) __asm__ ("" "mbstowcs") __attribute__ ((__nothrow__ , __leaf__))



    __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__access__ (__read_only__, 2)));
extern size_t __mbstowcs_chk_warn (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__mbstowcs_chk") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__((__warning__ ("mbstowcs called with dst buffer smaller than len " "* sizeof (wchar_t)")))
                        ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) mbstowcs (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len)

{
  if (__builtin_constant_p (__dst == ((void *)0)) && __dst == ((void *)0))
    return __mbstowcs_nulldst (__dst, __src, __len);
  else
    return (((__builtin_constant_p (__builtin_dynamic_object_size (__dst, 1)) && (__builtin_dynamic_object_size (__dst, 1)) == (long unsigned int) -1) || (((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (wchar_t))))) && (((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (wchar_t)))))) ? __mbstowcs_alias (__dst, __src, __len) : ((((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (wchar_t)))) && !(((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (wchar_t)))) ? __mbstowcs_chk_warn (__dst, __src, __len, (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (wchar_t))) : __mbstowcs_chk (__dst, __src, __len, (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (wchar_t)))))
                                                      ;
}

extern size_t __wcstombs_chk (char *__restrict __dst,
         const wchar_t *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__access__ (__read_only__, 2)));
extern size_t __wcstombs_alias (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len) __asm__ ("" "wcstombs") __attribute__ ((__nothrow__ , __leaf__))



  __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__access__ (__read_only__, 2)));
extern size_t __wcstombs_chk_warn (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__wcstombs_chk") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__((__warning__ ("wcstombs called with dst buffer smaller than len")));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) wcstombs (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len)

{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__dst, 1)) && (__builtin_dynamic_object_size (__dst, 1)) == (long unsigned int) -1) || (((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (char))))) && (((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (char)))))) ? __wcstombs_alias (__dst, __src, __len) : ((((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (char)))) && !(((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (char)))) ? __wcstombs_chk_warn (__dst, __src, __len, __builtin_dynamic_object_size (__dst, 1)) : __wcstombs_chk (__dst, __src, __len, __builtin_dynamic_object_size (__dst, 1))))

                         ;
}
# 1160 "/usr/include/stdlib.h" 2 3 4








# 4 "include/array.h" 2








# 11 "include/array.h"
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
# 2 "src/lexer.c" 2
# 1 "include/generic.h" 1
       

# 1 "include/ansi-colors.h" 1
       

# 1 "include/io.h" 1
       

# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stdint.h" 1 3 4
# 9 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stdint.h" 3 4
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4

# 1 "/usr/include/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4







# 1 "/usr/include/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/bits/stdint-uintn.h" 3 4

# 24 "/usr/include/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4



# 1 "/usr/include/bits/stdint-least.h" 1 3 4
# 25 "/usr/include/bits/stdint-least.h" 3 4
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
# 42 "/usr/include/stdint.h" 2 3 4





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 60 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 76 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 90 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 10 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stdint.h" 2 3 4
# 4 "include/io.h" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 28 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 29 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h" 1 3 4
# 35 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/include/bits/types/__fpos_t.h" 1 3 4




# 1 "/usr/include/bits/types/__mbstate_t.h" 1 3 4
# 13 "/usr/include/bits/types/__mbstate_t.h" 3 4
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 6 "/usr/include/bits/types/__fpos_t.h" 2 3 4




typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__fpos64_t.h" 1 3 4
# 10 "/usr/include/bits/types/__fpos64_t.h" 3 4
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/__FILE.h" 1 3 4



struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/FILE.h" 1 3 4



struct _IO_FILE;


typedef struct _IO_FILE FILE;
# 44 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/bits/types/struct_FILE.h" 1 3 4
# 35 "/usr/include/bits/types/struct_FILE.h" 3 4
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;




typedef void _IO_lock_t;





struct _IO_FILE
{
  int _flags;


  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;


  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset;


  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;







  __off64_t _offset;

  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
# 45 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/include/bits/types/cookie_io_functions_t.h" 1 3 4
# 27 "/usr/include/bits/types/cookie_io_functions_t.h" 3 4
typedef __ssize_t cookie_read_function_t (void *__cookie, char *__buf,
                                          size_t __nbytes);







typedef __ssize_t cookie_write_function_t (void *__cookie, const char *__buf,
                                           size_t __nbytes);







typedef int cookie_seek_function_t (void *__cookie, __off64_t *__pos, int __w);


typedef int cookie_close_function_t (void *__cookie);






typedef struct _IO_cookie_io_functions_t
{
  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
# 48 "/usr/include/stdio.h" 2 3 4





typedef __gnuc_va_list va_list;
# 85 "/usr/include/stdio.h" 3 4
typedef __fpos_t fpos_t;
# 129 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 130 "/usr/include/stdio.h" 2 3 4
# 149 "/usr/include/stdio.h" 3 4
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;






extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));



extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));
# 184 "/usr/include/stdio.h" 3 4
extern int fclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
# 194 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));
# 211 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));




extern char *tmpnam_r (char __s[20]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
# 228 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
   __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__malloc__ (__builtin_free, 1)));






extern int fflush (FILE *__stream);
# 245 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 264 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (3)));
# 299 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));





extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     cookie_io_functions_t __io_funcs) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));




extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));
# 334 "/usr/include/stdio.h" 3 4
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__nonnull__ (1)));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...) __attribute__ ((__nonnull__ (1)));




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nonnull__ (1)));




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));



extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));





extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0))) __attribute__ ((__warn_unused_result__));
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) __attribute__ ((__warn_unused_result__));
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) __attribute__ ((__warn_unused_result__));




extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));







extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));




extern int scanf (const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__));

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
# 463 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                          __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                         __attribute__ ((__warn_unused_result__));
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 490 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
# 540 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 575 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getc (FILE *__stream) __attribute__ ((__nonnull__ (1)));





extern int getchar (void);






extern int getc_unlocked (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getchar_unlocked (void);
# 600 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream) __attribute__ ((__nonnull__ (1)));
# 611 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));





extern int putchar (int __c);
# 627 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));







extern int putc_unlocked (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream) __attribute__ ((__nonnull__ (1)));


extern int putw (int __w, FILE *__stream) __attribute__ ((__nonnull__ (2)));







extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1))) __attribute__ ((__nonnull__ (3)));
# 694 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (4)));
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (4)));







extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (3)));







extern int fputs (const char *__restrict __s, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (2)));





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__))
  __attribute__ ((__nonnull__ (4)));




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s) __attribute__ ((__nonnull__ (4)));
# 766 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__))
  __attribute__ ((__nonnull__ (4)));
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));







extern int fseek (FILE *__stream, long int __off, int __whence)
  __attribute__ ((__nonnull__ (1)));




extern long int ftell (FILE *__stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));




extern void rewind (FILE *__stream) __attribute__ ((__nonnull__ (1)));
# 803 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence)
  __attribute__ ((__nonnull__ (1)));




extern __off_t ftello (FILE *__stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
# 829 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos)
  __attribute__ ((__nonnull__ (1)));




extern int fsetpos (FILE *__stream, const fpos_t *__pos) __attribute__ ((__nonnull__ (1)));
# 860 "/usr/include/stdio.h" 3 4
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));



extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));







extern void perror (const char *__s) __attribute__ ((__cold__));




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
# 897 "/usr/include/stdio.h" 3 4
extern int pclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));





extern FILE *popen (const char *__command, const char *__modes)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (pclose, 1))) __attribute__ ((__warn_unused_result__));






extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__access__ (__write_only__, 1)));
# 941 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 959 "/usr/include/stdio.h" 3 4
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);



# 1 "/usr/include/bits/stdio2-decl.h" 1 3 4
# 26 "/usr/include/bits/stdio2-decl.h" 3 4
extern int __sprintf_chk (char *__restrict __s, int __flag, size_t __slen,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 3)));
extern int __vsprintf_chk (char *__restrict __s, int __flag, size_t __slen,
      const char *__restrict __format,
      __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 3)));



extern int __snprintf_chk (char *__restrict __s, size_t __n, int __flag,
      size_t __slen, const char *__restrict __format,
      ...) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int __vsnprintf_chk (char *__restrict __s, size_t __n, int __flag,
       size_t __slen, const char *__restrict __format,
       __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 2)));





extern int __fprintf_chk (FILE *__restrict __stream, int __flag,
     const char *__restrict __format, ...)
    __attribute__ ((__nonnull__ (1)));
extern int __printf_chk (int __flag, const char *__restrict __format, ...);
extern int __vfprintf_chk (FILE *__restrict __stream, int __flag,
      const char *__restrict __format,
      __gnuc_va_list __ap) __attribute__ ((__nonnull__ (1)));
extern int __vprintf_chk (int __flag, const char *__restrict __format,
     __gnuc_va_list __ap);


extern int __dprintf_chk (int __fd, int __flag, const char *__restrict __fmt,
     ...) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int __vdprintf_chk (int __fd, int __flag,
      const char *__restrict __fmt, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 3, 0)));
# 96 "/usr/include/bits/stdio2-decl.h" 3 4
extern char *__fgets_alias (char *__restrict __s, int __n, FILE *__restrict __stream) __asm__ ("" "fgets")


    __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern char *__fgets_chk_warn (char *__restrict __s, size_t __size, int __n, FILE *__restrict __stream) __asm__ ("" "__fgets_chk")


     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fgets called with bigger size than length " "of destination buffer")))
                                 ;

extern char *__fgets_chk (char *__restrict __s, size_t __size, int __n,
     FILE *__restrict __stream)
    __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__nonnull__ (4)));

extern size_t __fread_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread")


            __attribute__ ((__warn_unused_result__));
extern size_t __fread_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_chk")




     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread called with bigger size * nmemb than length " "of destination buffer")))
                                 ;

extern size_t __fread_chk (void *__restrict __ptr, size_t __ptrlen,
      size_t __size, size_t __n,
      FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (5)));
# 145 "/usr/include/bits/stdio2-decl.h" 3 4
extern size_t __fread_unlocked_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread_unlocked")


                     __attribute__ ((__warn_unused_result__));
extern size_t __fread_unlocked_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_unlocked_chk")




     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread_unlocked called with bigger size * nmemb than " "length of destination buffer")))
                                        ;

extern size_t __fread_unlocked_chk (void *__restrict __ptr, size_t __ptrlen,
        size_t __size, size_t __n,
        FILE *__restrict __stream)
    __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (5)));
# 965 "/usr/include/stdio.h" 2 3 4
# 976 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio.h" 1 3 4
# 46 "/usr/include/bits/stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return getc (stdin);
}




extern __inline __attribute__ ((__gnu_inline__)) int
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}





extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}


extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}




extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return putc (__c, stdout);
}




extern __inline __attribute__ ((__gnu_inline__)) int
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}





extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}


extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
# 127 "/usr/include/bits/stdio.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0010) != 0);
}


extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0020) != 0);
}
# 977 "/usr/include/stdio.h" 2 3 4



# 1 "/usr/include/bits/stdio2.h" 1 3 4
# 27 "/usr/include/bits/stdio2.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) sprintf (char *__restrict __s, const char *__restrict __fmt, ...)
{
  return __builtin___sprintf_chk (__s, 3 - 1,
      __builtin_dynamic_object_size (__s, 1), __fmt,
      __builtin_va_arg_pack ());
}






extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsprintf (char *__restrict __s, const char *__restrict __fmt, __gnuc_va_list __ap)

{
  return __builtin___vsprintf_chk (__s, 3 - 1,
       __builtin_dynamic_object_size (__s, 1), __fmt, __ap);
}



extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) snprintf (char *__restrict __s, size_t __n, const char *__restrict __fmt, ...)

{
  return __builtin___snprintf_chk (__s, __n, 3 - 1,
       __builtin_dynamic_object_size (__s, 1), __fmt,
       __builtin_va_arg_pack ());
}






extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsnprintf (char *__restrict __s, size_t __n, const char *__restrict __fmt, __gnuc_va_list __ap)

{
  return __builtin___vsnprintf_chk (__s, __n, 3 - 1,
        __builtin_dynamic_object_size (__s, 1), __fmt, __ap);
}





extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__nonnull__ (1))) int
fprintf (FILE *__restrict __stream, const char *__restrict __fmt, ...)
{
  return __fprintf_chk (__stream, 3 - 1, __fmt,
   __builtin_va_arg_pack ());
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (3 - 1, __fmt, __builtin_va_arg_pack ());
}







extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vprintf (const char *__restrict __fmt, __gnuc_va_list __ap)
{

  return __vfprintf_chk (stdout, 3 - 1, __fmt, __ap);



}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__nonnull__ (1))) int
vfprintf (FILE *__restrict __stream,
   const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vfprintf_chk (__stream, 3 - 1, __fmt, __ap);
}



extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
dprintf (int __fd, const char *__restrict __fmt, ...)
{
  return __dprintf_chk (__fd, 3 - 1, __fmt,
   __builtin_va_arg_pack ());
}





extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vdprintf (int __fd, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vdprintf_chk (__fd, 3 - 1, __fmt, __ap);
}
# 194 "/usr/include/bits/stdio2.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1)))
__attribute__ ((__nonnull__ (3))) char *
fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
{
  size_t sz = __builtin_dynamic_object_size (__s, 1);
  if (((__builtin_constant_p (sz) && (sz) == (long unsigned int) -1) || (((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= ((sz)) / ((sizeof (char))))) && (((long unsigned int) (__n)) <= ((sz)) / ((sizeof (char)))))))
    return __fgets_alias (__s, __n, __stream);
  if ((((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= (sz) / (sizeof (char)))) && !(((long unsigned int) (__n)) <= (sz) / (sizeof (char)))))
    return __fgets_chk_warn (__s, sz, __n, __stream);
  return __fgets_chk (__s, sz, __n, __stream);
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (4))) size_t
fread (void *__restrict __ptr, size_t __size, size_t __n,
       FILE *__restrict __stream)
{
  size_t sz = __builtin_dynamic_object_size (__ptr, 0);
  if (((__builtin_constant_p (sz) && (sz) == (long unsigned int) -1) || (((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= ((sz)) / ((__size)))) && (((long unsigned int) (__n)) <= ((sz)) / ((__size))))))
    return __fread_alias (__ptr, __size, __n, __stream);
  if ((((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= (sz) / (__size))) && !(((long unsigned int) (__n)) <= (sz) / (__size))))
    return __fread_chk_warn (__ptr, sz, __size, __n, __stream);
  return __fread_chk (__ptr, sz, __size, __n, __stream);
}
# 234 "/usr/include/bits/stdio2.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (4))) size_t
fread_unlocked (void *__restrict __ptr, size_t __size, size_t __n,
  FILE *__restrict __stream)
{
  size_t sz = __builtin_dynamic_object_size (__ptr, 0);
  if (((__builtin_constant_p (sz) && (sz) == (long unsigned int) -1) || (((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= ((sz)) / ((__size)))) && (((long unsigned int) (__n)) <= ((sz)) / ((__size))))))
    {

      if (__builtin_constant_p (__size)
   && __builtin_constant_p (__n)
   && (__size | __n) < (((size_t) 1) << (8 * sizeof (size_t) / 2))
   && __size * __n <= 8)
 {
   size_t __cnt = __size * __n;
   char *__cptr = (char *) __ptr;
   if (__cnt == 0)
     return 0;

   for (; __cnt > 0; --__cnt)
     {
       int __c = getc_unlocked (__stream);
       if (__c == (-1))
  break;
       *__cptr++ = __c;
     }
   return (__cptr - (char *) __ptr) / __size;
 }

      return __fread_unlocked_alias (__ptr, __size, __n, __stream);
    }
  if ((((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= (sz) / (__size))) && !(((long unsigned int) (__n)) <= (sz) / (__size))))
    return __fread_unlocked_chk_warn (__ptr, sz, __size, __n, __stream);
  return __fread_unlocked_chk (__ptr, sz, __size, __n, __stream);

}
# 981 "/usr/include/stdio.h" 2 3 4



# 5 "include/io.h" 2


# 6 "include/io.h"
typedef FILE* fptr_t;

typedef struct
{
  fptr_t ptr;
  uint8_t* buffer;
  const char* path;
  size_t size;
} *memstream_t;

__attribute__((warn_unused_result, nonnull))
fptr_t io_open_file (const char* filename, const char* mode);

__attribute__((warn_unused_result, nonnull))
uint8_t* io_alloc_file_buffer (fptr_t file);

__attribute__((nonnull (1, 2)))
size_t io_read_file_into_buffer (fptr_t file, uint8_t* const buffer, uint64_t buffer_size);

__attribute__((nonnull (1), warn_unused_result))
memstream_t io_read_file_into_memstream (fptr_t file, const char* const path);

__attribute__((nonnull))
void io_free_memstream (memstream_t stream);

__attribute__((nonnull))
void io_close_file (fptr_t file);
# 4 "include/ansi-colors.h" 2
# 34 "include/ansi-colors.h"
void cprintf (const char* ccode, const char* fmt, ...);

__attribute__((nonnull (1)))
void cfprintf (fptr_t file, const char* ccode, const char* fmt, ...);
# 4 "include/generic.h" 2

# 1 "/usr/include/errno.h" 1 3 4
# 28 "/usr/include/errno.h" 3 4
# 1 "/usr/include/bits/errno.h" 1 3 4
# 26 "/usr/include/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4
# 1 "/usr/include/asm/errno.h" 1 3 4
# 1 "/usr/include/asm-generic/errno.h" 1 3 4




# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 6 "/usr/include/asm-generic/errno.h" 2 3 4
# 2 "/usr/include/asm/errno.h" 2 3 4
# 2 "/usr/include/linux/errno.h" 2 3 4
# 27 "/usr/include/bits/errno.h" 2 3 4
# 29 "/usr/include/errno.h" 2 3 4









# 37 "/usr/include/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 52 "/usr/include/errno.h" 3 4

# 6 "include/generic.h" 2


# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/string.h" 2 3 4






# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h" 1 3 4
# 34 "/usr/include/string.h" 2 3 4
# 43 "/usr/include/string.h" 3 4
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
    __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__write_only__, 1, 4)));




extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 80 "/usr/include/string.h" 3 4
extern int __memcmpeq (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 107 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 141 "/usr/include/string.h" 3 4
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
    __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__access__ (__write_only__, 1, 3)));



# 1 "/usr/include/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/bits/types/locale_t.h" 3 4
# 1 "/usr/include/bits/types/__locale_t.h" 1 3 4
# 27 "/usr/include/bits/types/__locale_t.h" 3 4
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 173 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)))
     __attribute__ ((__access__ (__write_only__, 1, 3)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 246 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 273 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 286 "/usr/include/string.h" 3 4
extern char *strchrnul (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 323 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 350 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 380 "/usr/include/string.h" 3 4
extern char *strcasestr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));







extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)))
    __attribute__ ((__access__ (__read_only__, 1, 2)))
    __attribute__ ((__access__ (__read_only__, 3, 4)));



extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));
# 432 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)))
    __attribute__ ((__access__ (__write_only__, 2, 3)));
# 458 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/strings.h" 1 3 4
# 23 "/usr/include/strings.h" 3 4
# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stddef.h" 1 3 4
# 24 "/usr/include/strings.h" 2 3 4










extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 68 "/usr/include/strings.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 96 "/usr/include/strings.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int ffsl (long int __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));



extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));








# 1 "/usr/include/bits/strings_fortified.h" 1 3 4
# 22 "/usr/include/bits/strings_fortified.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) bcopy (const void *__src, void *__dest, size_t __len)
{
  (void) __builtin___memmove_chk (__dest, __src, __len,
      __builtin_dynamic_object_size (__dest, 0));
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) bzero (void *__dest, size_t __len)
{
  (void) __builtin___memset_chk (__dest, '\0', __len,
     __builtin_dynamic_object_size (__dest, 0));
}
# 145 "/usr/include/strings.h" 2 3 4
# 463 "/usr/include/string.h" 2 3 4



extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)))
    __attribute__ ((__access__ (__write_only__, 1)));



extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));
# 489 "/usr/include/string.h" 3 4
extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern size_t strlcpy (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__write_only__, 1, 3)));



extern size_t strlcat (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__read_write__, 1, 3)));
# 548 "/usr/include/string.h" 3 4
# 1 "/usr/include/bits/string_fortified.h" 1 3 4
# 25 "/usr/include/bits/string_fortified.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memcpy (void *__restrict __dest, const void *__restrict __src, size_t __len)

{
  return __builtin___memcpy_chk (__dest, __src, __len,
     __builtin_dynamic_object_size (__dest, 0));
}

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memmove (void *__dest, const void *__src, size_t __len)
{
  return __builtin___memmove_chk (__dest, __src, __len,
      __builtin_dynamic_object_size (__dest, 0));
}
# 56 "/usr/include/bits/string_fortified.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memset (void *__dest, int __ch, size_t __len)
{
  return __builtin___memset_chk (__dest, __ch, __len,
     __builtin_dynamic_object_size (__dest, 0));
}




void __explicit_bzero_chk (void *__dest, size_t __len, size_t __destlen)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__access__ (__write_only__, 1)));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) explicit_bzero (void *__dest, size_t __len)
{
  __explicit_bzero_chk (__dest, __len, __builtin_dynamic_object_size (__dest, 0));
}


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strcpy (char *__restrict __dest, const char *__restrict __src)
{
  return __builtin___strcpy_chk (__dest, __src, __builtin_dynamic_object_size (__dest, 1));
}


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) stpcpy (char *__restrict __dest, const char *__restrict __src)
{
  return __builtin___stpcpy_chk (__dest, __src, __builtin_dynamic_object_size (__dest, 1));
}



extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strncpy (char *__restrict __dest, const char *__restrict __src, size_t __len)

{
  return __builtin___strncpy_chk (__dest, __src, __len,
      __builtin_dynamic_object_size (__dest, 1));
}



extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) stpncpy (char *__dest, const char *__src, size_t __n)
{
  return __builtin___stpncpy_chk (__dest, __src, __n,
      __builtin_dynamic_object_size (__dest, 1));
}
# 127 "/usr/include/bits/string_fortified.h" 3 4
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strcat (char *__restrict __dest, const char *__restrict __src)
{
  return __builtin___strcat_chk (__dest, __src, __builtin_dynamic_object_size (__dest, 1));
}


extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strncat (char *__restrict __dest, const char *__restrict __src, size_t __len)

{
  return __builtin___strncat_chk (__dest, __src, __len,
      __builtin_dynamic_object_size (__dest, 1));
}


extern size_t __strlcpy_chk (char *__dest, const char *__src, size_t __n,
        size_t __destlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __strlcpy_alias (char *__dest, const char *__src, size_t __n) __asm__ ("" "strlcpy") __attribute__ ((__nothrow__ , __leaf__))

                 ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) strlcpy (char *__restrict __dest, const char *__restrict __src, size_t __n)

{
  if (__builtin_dynamic_object_size (__dest, 1) != (size_t) -1
      && (!__builtin_constant_p (__n > __builtin_dynamic_object_size (__dest, 1))
   || __n > __builtin_dynamic_object_size (__dest, 1)))
    return __strlcpy_chk (__dest, __src, __n, __builtin_dynamic_object_size (__dest, 1));
  return __strlcpy_alias (__dest, __src, __n);
}

extern size_t __strlcat_chk (char *__dest, const char *__src, size_t __n,
        size_t __destlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __strlcat_alias (char *__dest, const char *__src, size_t __n) __asm__ ("" "strlcat") __attribute__ ((__nothrow__ , __leaf__))

                 ;

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) strlcat (char *__restrict __dest, const char *__restrict __src, size_t __n)

{
  if (__builtin_dynamic_object_size (__dest, 1) != (size_t) -1
      && (!__builtin_constant_p (__n > __builtin_dynamic_object_size (__dest, 1))
   || __n > __builtin_dynamic_object_size (__dest, 1)))
    return __strlcat_chk (__dest, __src, __n, __builtin_dynamic_object_size (__dest, 1));
  return __strlcat_alias (__dest, __src, __n);
}
# 549 "/usr/include/string.h" 2 3 4




# 9 "include/generic.h" 2
# 1 "/usr/include/inttypes.h" 1 3 4
# 34 "/usr/include/inttypes.h" 3 4
typedef int __gwchar_t;
# 327 "/usr/include/inttypes.h" 3 4





typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
# 351 "/usr/include/inttypes.h" 3 4
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));


extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));


extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));


extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));


extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
# 415 "/usr/include/inttypes.h" 3 4

# 10 "include/generic.h" 2
# 80 "include/generic.h"

# 80 "include/generic.h"
void __chk_free_impl (const char* fn, void* ptr);
void __chk_free_impl_nofn (void* ptr);
void* __chk_calloc_impl (const char* fn, size_t nmemb, size_t size);
void* __chk_realloc_impl (const char* fn, void* ptr, size_t size);


void dbg_mem_dump_stats (void);
# 3 "src/lexer.c" 2

# 1 "include/lexer.h" 1
       





# 1 "/usr/lib/gcc/x86_64-pc-linux-gnu/13/include/stdbool.h" 1 3 4
# 8 "include/lexer.h" 2

typedef struct lexer_impl
{
  array_t memstreams;
  array_t lexeme_arrays;
} *lexer_t;

struct compilation_args;

__attribute__((warn_unused_result))
lexer_t lex_ctx_new (struct compilation_args* comp_args);

__attribute__((nonnull))
void lex_ctx_load_file (lexer_t, fptr_t file, const char* const path);

__attribute__((nonnull))
uint64_t lex_ctx_process (lexer_t lexer);

__attribute__((nonnull))
void lex_ctx_free (lexer_t lexer);

enum lexeme_type
{
  NumericLiteral,
  FloatingLiteral,
  StringLiteral,
  CharacterLiteral,
  Identifier,
  LeftParen, RightParen,
  LeftBrace, RightBrace,
  Dot,
  Add, Minus, Div, Star, Modulus,
  AddAssign, MinusAssign, DivAssign, StarAssign, ModulusAssign,
  Increment, Decrement,
  LogicalOr, LogicalAnd,
  Assign, AssignAssign,
  Not, NotAssign,
  BitwiseOr, BitwiseAnd, BitwiseXor,
  BitwiseOrAssign, BitwiseAndAssign, BitwiseXorAssign,
  BitwiseNegate,
  BwdSlash, Newline, Semi, EndOfFile,
  Comment, MultiComment
};

typedef struct
{
  uint64_t length;
  uint64_t stream_offs;
  enum lexeme_type type;
} *lexeme_t;
# 5 "src/lexer.c" 2
# 1 "include/stdio-ext.h" 1
       



__attribute__((nonnull (1)))
int fpeek (FILE* stream, long lookahead);

__attribute__((nonnull (1)))
int fconsume (FILE* stream, long offset);

int isoctdigit (int ch);

int isident (int ch);
int isident_f (int ch);
# 6 "src/lexer.c" 2
# 1 "include/diagnostics.h" 1
       






struct compilation_args
{
  struct
  {
    
# 12 "include/diagnostics.h" 3 4
   _Bool 
# 12 "include/diagnostics.h"
        warn_multichar: 1;
  } warn_flags;
  struct
  {
    
# 16 "include/diagnostics.h" 3 4
   _Bool 
# 16 "include/diagnostics.h"
        tokenize_comments: 1;
  } parse_flags;
  char** filenames;
  size_t nr_filenames;
};

enum diagn_type
{
  DiagnosticWarning,
  DiagnosticError,
  DiagnosticNote
};

struct diagnostic;
typedef struct diagnostic_impl* diagn_t;

__attribute__((nonnull))
void diagn_free (diagn_t);

__attribute__((warn_unused_result, malloc (diagn_free)))
diagn_t diagn_new (struct compilation_args* comp_args, uint8_t* src_stream,
    const char* const path);

__attribute__((nonnull (1, 4), format (printf, 5, 6)))
void diagn_push (diagn_t, const char* warn_name_opt, enum diagn_type type,
    lexeme_t lexeme, const char* fmt, ...);

__attribute__((nonnull))
uint64_t diagn_flush (diagn_t, fptr_t file);
# 7 "src/lexer.c" 2

# 1 "/usr/include/ctype.h" 1 3 4
# 28 "/usr/include/ctype.h" 3 4

# 46 "/usr/include/ctype.h" 3 4

# 46 "/usr/include/ctype.h" 3 4
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
# 79 "/usr/include/ctype.h" 3 4
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
# 108 "/usr/include/ctype.h" 3 4
extern int isalnum (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha (int) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit (int) __attribute__ ((__nothrow__ , __leaf__));
extern int islower (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint (int) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit (int) __attribute__ ((__nothrow__ , __leaf__));



extern int tolower (int __c) __attribute__ ((__nothrow__ , __leaf__));


extern int toupper (int __c) __attribute__ ((__nothrow__ , __leaf__));




extern int isblank (int) __attribute__ ((__nothrow__ , __leaf__));
# 142 "/usr/include/ctype.h" 3 4
extern int isascii (int __c) __attribute__ ((__nothrow__ , __leaf__));



extern int toascii (int __c) __attribute__ ((__nothrow__ , __leaf__));



extern int _toupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int _tolower (int) __attribute__ ((__nothrow__ , __leaf__));
# 206 "/usr/include/ctype.h" 3 4
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) tolower (int __c)
{
  return __c >= -128 && __c < 256 ? (*__ctype_tolower_loc ())[__c] : __c;
}

extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) toupper (int __c)
{
  return __c >= -128 && __c < 256 ? (*__ctype_toupper_loc ())[__c] : __c;
}
# 251 "/usr/include/ctype.h" 3 4
extern int isalnum_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int islower_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));

extern int isblank_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));



extern int __tolower_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int tolower_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));


extern int __toupper_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int toupper_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
# 327 "/usr/include/ctype.h" 3 4

# 9 "src/lexer.c" 2
# 55 "src/lexer.c"

# 55 "src/lexer.c"
static diagn_t g_diagnostics;
static struct compilation_args* g_comp_args;

static lexeme_t
lex_ctx_create_lexeme (const memstream_t stream,
                       enum lexeme_type lexeme_type,
                       uint64_t length)
{
  lexeme_t lexeme = __chk_calloc_impl (__func__, (1), (sizeof (*(lexeme_t)
# 63 "src/lexer.c" 3 4
                   ((void *)0)
# 63 "src/lexer.c"
                   )));
  lexeme->stream_offs = (uint64_t)ftell (stream->ptr);
  lexeme->length = length;
  lexeme->type = lexeme_type;
  return lexeme;
}

static uint64_t
lex_ctx_length_until_eol (memstream_t stream)
{
  uint64_t length = 0; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    if (current == '\n' || current == 
# 75 "src/lexer.c" 3 4
                                     (-1)
# 75 "src/lexer.c"
                                        )
      break;
    length++;
  }
  return length;
}

static void
lex_ctx_consume_comment (memstream_t stream,
                         array_t lexemes)
{
  uint64_t length = 2; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    if (current == '\n')
      break;
    length++;
  }
  fprintf ((
# 92 "src/lexer.c" 3 4
 stdout
# 92 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 92 "src/lexer.c" 3 4
 "u" 
# 92 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming " "\"single-line comment\"" ": \"%.*s\"" "\n", "src/lexer.c", 92, (int)length + (-2), (stream)->buffer + ftell ((stream)->ptr) + (2));;
  if (g_comp_args->parse_flags.tokenize_comments)
    array_append(lexemes, lex_ctx_create_lexeme(stream, Comment, length));
  else
    array_append (lexemes, lex_ctx_create_lexeme (stream, Newline, 1));
  fconsume (stream->ptr, (long)length + 1);
}

static void
lex_ctx_consume_multicomment (memstream_t stream,
                              array_t lexemes)
{
  uint64_t length = 2; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    int next = fpeek (stream->ptr, (long)(length + 1));
    if (current == '*' && next == '/')
      break;
    length++;
  }
  if (current == 
# 111 "src/lexer.c" 3 4
                (-1)
# 111 "src/lexer.c"
                   )
    goto unterminated;
  fprintf ((
# 113 "src/lexer.c" 3 4
 stdout
# 113 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 113 "src/lexer.c" 3 4
 "u" 
# 113 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming multi-line comment of length (tokenize-comments=%s): %" 
# 113 "src/lexer.c" 3 4
 "l" "u" 
# 113 "src/lexer.c"
 "\n", "src/lexer.c", 113, (g_comp_args->parse_flags.tokenize_comments)? "yes": "no", length)
                                                                                 ;
  fprintf ((
# 115 "src/lexer.c" 3 4
 stdout
# 115 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 115 "src/lexer.c" 3 4
 "u" 
# 115 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "36m" "minutiae: " "\033[0m" "multi-line comment: \"%.*s\"" "\n", "src/lexer.c", 115, (int)length - 2, stream->buffer + ftell (stream->ptr) + 2)
                                                                          ;
  if (g_comp_args->parse_flags.tokenize_comments)
    array_append (lexemes, lex_ctx_create_lexeme(stream, MultiComment, length));
  else
    array_append (lexemes, lex_ctx_create_lexeme (stream, Newline, 1));
  fconsume (stream->ptr, (long)length + 2);
  return;
unterminated:
  __extension__ __auto_type length_to_eol = lex_ctx_length_until_eol (stream);
  __extension__ __auto_type lexeme = lex_ctx_create_lexeme (stream, MultiComment, length);
  diagn_push (g_diagnostics, 
# 126 "src/lexer.c" 3 4
                            ((void *)0)
# 126 "src/lexer.c"
                                , DiagnosticError, lexeme,
              "missing terminating " "\033[1;" "37m" "*/" "\033[0m" " characters from multiline comment");
  fconsume (stream->ptr, (long)length);
  array_append (lexemes, lexeme);
}

static void
lex_ctx_consume_hexadecimal_float (memstream_t stream,
                                   array_t lexemes)
{
  
# 136 "src/lexer.c" 3 4
 _Bool 
# 136 "src/lexer.c"
      past_decimal = 
# 136 "src/lexer.c" 3 4
                     0
# 136 "src/lexer.c"
                          ;
  uint64_t length = 2; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    if (!past_decimal && current == '.')
      past_decimal = 
# 140 "src/lexer.c" 3 4
                    1
# 140 "src/lexer.c"
                        ;
    else if (!
# 141 "src/lexer.c" 3 4
             ((*__ctype_b_loc ())[(int) ((
# 141 "src/lexer.c"
             current
# 141 "src/lexer.c" 3 4
             ))] & (unsigned short int) _ISxdigit)
# 141 "src/lexer.c"
                               )
      break;
    length++;
  }
  fprintf ((
# 145 "src/lexer.c" 3 4
 stdout
# 145 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 145 "src/lexer.c" 3 4
 "u" 
# 145 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming " "\"hexadecimal float\"" ": \"%.*s\"" "\n", "src/lexer.c", 145, (int)length + (0), (stream)->buffer + ftell ((stream)->ptr) + (0));;
  { array_append ((lexemes), lex_ctx_create_lexeme ((stream), (FloatingLiteral), (length))); fconsume ((stream)->ptr, (long)(length)); };
}

static void
lex_ctx_consume_decimal_float (memstream_t stream,
                               array_t lexemes)
{
  
# 153 "src/lexer.c" 3 4
 _Bool 
# 153 "src/lexer.c"
      past_point = 
# 153 "src/lexer.c" 3 4
                   0
# 153 "src/lexer.c"
                        ;
  uint64_t length = 0; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    if (!past_point && current == '.')
      past_point = 
# 157 "src/lexer.c" 3 4
                  1
# 157 "src/lexer.c"
                      ;
    else if (!
# 158 "src/lexer.c" 3 4
             ((*__ctype_b_loc ())[(int) ((
# 158 "src/lexer.c"
             current
# 158 "src/lexer.c" 3 4
             ))] & (unsigned short int) _ISdigit)
# 158 "src/lexer.c"
                              )
      break;
    length++;
  }
  fprintf ((
# 162 "src/lexer.c" 3 4
 stdout
# 162 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 162 "src/lexer.c" 3 4
 "u" 
# 162 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming " "\"decimal float\"" ": \"%.*s\"" "\n", "src/lexer.c", 162, (int)length + (0), (stream)->buffer + ftell ((stream)->ptr) + (0));
  { array_append ((lexemes), lex_ctx_create_lexeme ((stream), (FloatingLiteral), (length))); fconsume ((stream)->ptr, (long)(length)); };
}

static void
lex_ctx_consume_number (memstream_t stream,
                        array_t lexemes)
{
  uint64_t length = 0; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    if (current == '.')
      {
        lex_ctx_consume_decimal_float (stream, lexemes);
        return;
      }
    else if (!
# 177 "src/lexer.c" 3 4
             ((*__ctype_b_loc ())[(int) ((
# 177 "src/lexer.c"
             current
# 177 "src/lexer.c" 3 4
             ))] & (unsigned short int) _ISdigit)
# 177 "src/lexer.c"
                              )
      break;
    length++;
  }
  fprintf ((
# 181 "src/lexer.c" 3 4
 stdout
# 181 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 181 "src/lexer.c" 3 4
 "u" 
# 181 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming " "\"number\"" ": \"%.*s\"" "\n", "src/lexer.c", 181, (int)length + (0), (stream)->buffer + ftell ((stream)->ptr) + (0));;
  { array_append ((lexemes), lex_ctx_create_lexeme ((stream), (NumericLiteral), (length))); fconsume ((stream)->ptr, (long)(length)); };
}

static void
lex_ctx_consume_identifier (memstream_t stream,
                           array_t lexemes)
{
  uint64_t length = 0; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    if (!isident (current))
      break;
    length++;
  }
  fprintf ((
# 195 "src/lexer.c" 3 4
 stdout
# 195 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 195 "src/lexer.c" 3 4
 "u" 
# 195 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming " "\"identifier\"" ": \"%.*s\"" "\n", "src/lexer.c", 195, (int)length + (0), (stream)->buffer + ftell ((stream)->ptr) + (0));;
  { array_append ((lexemes), lex_ctx_create_lexeme ((stream), (Identifier), (length))); fconsume ((stream)->ptr, (long)(length)); };
}

static void
lex_ctx_consume_string (memstream_t stream,
                        array_t lexemes)
{
  uint64_t length = 1; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    int next = fpeek (stream->ptr, (long)(length + 1));
    if (current == '"')
      {
        length++;
        break;
      }
    if (current == '\\' && (next == '\n' || next == '"'))
      length++;
    else if (current == '\n')
      goto unterminated;
    length++;
  }

  if (current == 
# 218 "src/lexer.c" 3 4
                (-1)
# 218 "src/lexer.c"
                   )
    goto unterminated;

  fprintf ((
# 221 "src/lexer.c" 3 4
 stdout
# 221 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 221 "src/lexer.c" 3 4
 "u" 
# 221 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming " "\"string literal\"" ": \"%.*s\"" "\n", "src/lexer.c", 221, (int)length + (-2), (stream)->buffer + ftell ((stream)->ptr) + (1));;
  { array_append ((lexemes), lex_ctx_create_lexeme ((stream), (StringLiteral), (length))); fconsume ((stream)->ptr, (long)(length)); };
  return;
unterminated:
  __extension__ __auto_type length_to_eol = lex_ctx_length_until_eol (stream);
  __extension__ __auto_type lexeme = lex_ctx_create_lexeme (stream, StringLiteral, length_to_eol);
  diagn_push (g_diagnostics, 
# 227 "src/lexer.c" 3 4
                            ((void *)0)
# 227 "src/lexer.c"
                                , DiagnosticError, lexeme,
              "missing terminating " "\033[1;" "37m" "\"" "\033[0m" " character");
  fconsume (stream->ptr, (long)length_to_eol);
  array_append (lexemes, lexeme);
}

static void
lex_ctx_consume_character (memstream_t stream,
                           array_t lexemes)
{
  uint64_t length = 1; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    int next = fpeek (stream->ptr, (long)(length + 1));
    if (current == '\'')
      {
        length++;
        break;
      }
    if (current == '\\' && (next == '\n' || next == '\''))
      length++;
    else if (current == '\n')
      goto unterminated;
    length++;
  }

  lexeme_t lexeme;
  if (current == 
# 253 "src/lexer.c" 3 4
                (-1)
# 253 "src/lexer.c"
                   )
    goto unterminated;

  lexeme = lex_ctx_create_lexeme(stream, CharacterLiteral, length);
  if (length > 3)
    diagn_push (g_diagnostics, "multichar", DiagnosticWarning, lexeme,
                "multi-character character constant");
  fprintf ((
# 260 "src/lexer.c" 3 4
 stdout
# 260 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 260 "src/lexer.c" 3 4
 "u" 
# 260 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming " "\"character literal\"" ": \"%.*s\"" "\n", "src/lexer.c", 260, (int)length + (-2), (stream)->buffer + ftell ((stream)->ptr) + (1));;
  array_append (lexemes, lexeme);
  fconsume (stream->ptr, (long)length);
  return;
unterminated:
  __extension__ __auto_type length_to_eol = lex_ctx_length_until_eol (stream);
  __extension__ __auto_type err_lexeme = lex_ctx_create_lexeme (stream, StringLiteral, length_to_eol);
  diagn_push (g_diagnostics, 
# 267 "src/lexer.c" 3 4
                            ((void *)0)
# 267 "src/lexer.c"
                                , DiagnosticError, err_lexeme,
              "missing terminating " "\033[1;" "37m" "'" "\033[0m" " character");
  fconsume (stream->ptr, (long)length_to_eol);
  array_append (lexemes, err_lexeme);
}

static void
lex_ctx_consume_octal (memstream_t stream,
                       array_t lexemes)
{
  uint64_t length = 0; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    if (!isoctdigit (current))
      {
        if (
# 281 "src/lexer.c" 3 4
           ((*__ctype_b_loc ())[(int) ((
# 281 "src/lexer.c"
           current
# 281 "src/lexer.c" 3 4
           ))] & (unsigned short int) _ISdigit) 
# 281 "src/lexer.c"
                             || current == '.')
          {

            lex_ctx_consume_number (stream, lexemes);
            return;
          }
        break;
      }
    else
      length++;
  }
  fprintf ((
# 292 "src/lexer.c" 3 4
 stdout
# 292 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 292 "src/lexer.c" 3 4
 "u" 
# 292 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming " "\"octal number\"" ": \"%.*s\"" "\n", "src/lexer.c", 292, (int)length + (0), (stream)->buffer + ftell ((stream)->ptr) + (0));;
  { array_append ((lexemes), lex_ctx_create_lexeme ((stream), (NumericLiteral), (length))); fconsume ((stream)->ptr, (long)(length)); }
}

static void
lex_ctx_consume_hexadecimal (memstream_t stream,
                             array_t lexemes)
{
  uint64_t length = 2; int current; while (((current) = fpeek ((stream)->ptr, (long)(length))) > 0)
  {
    if (current == '.')
      {
        lex_ctx_consume_hexadecimal_float (stream, lexemes);
        return;
      }
    else if (!
# 307 "src/lexer.c" 3 4
             ((*__ctype_b_loc ())[(int) ((
# 307 "src/lexer.c"
             current
# 307 "src/lexer.c" 3 4
             ))] & (unsigned short int) _ISxdigit)
# 307 "src/lexer.c"
                               )
      break;
    length++;
  }
  fprintf ((
# 311 "src/lexer.c" 3 4
 stdout
# 311 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 311 "src/lexer.c" 3 4
 "u" 
# 311 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming " "\"hexadecimal number\"" ": \"%.*s\"" "\n", "src/lexer.c", 311, (int)length + (0), (stream)->buffer + ftell ((stream)->ptr) + (0));;
  { array_append ((lexemes), lex_ctx_create_lexeme ((stream), (NumericLiteral), (length))); fconsume ((stream)->ptr, (long)(length)); };
}

static void
lex_ctx_consume_nonliteral (memstream_t stream,
                            array_t lexemes)
{
  int current = fpeek (stream->ptr, 0),
      next = fpeek (stream->ptr, 1);
  enum lexeme_type lex_type;
  uint64_t length = 1;

  switch (current)
  {
    case ('~'): fprintf ((
# 326 "src/lexer.c" 3 4
   stdout
# 326 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 326 "src/lexer.c" 3 4
   "u" 
# 326 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming unary lexeme: " "BitwiseNegate" "\n", "src/lexer.c", 326); lex_type = BitwiseNegate; break;;
    case ('{'): fprintf ((
# 327 "src/lexer.c" 3 4
   stdout
# 327 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 327 "src/lexer.c" 3 4
   "u" 
# 327 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming unary lexeme: " "LeftBrace" "\n", "src/lexer.c", 327); lex_type = LeftBrace; break;;
    case ('}'): fprintf ((
# 328 "src/lexer.c" 3 4
   stdout
# 328 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 328 "src/lexer.c" 3 4
   "u" 
# 328 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming unary lexeme: " "RightBrace" "\n", "src/lexer.c", 328); lex_type = RightBrace; break;;
    case ('('): fprintf ((
# 329 "src/lexer.c" 3 4
   stdout
# 329 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 329 "src/lexer.c" 3 4
   "u" 
# 329 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming unary lexeme: " "LeftParen" "\n", "src/lexer.c", 329); lex_type = LeftParen; break;;
    case (')'): fprintf ((
# 330 "src/lexer.c" 3 4
   stdout
# 330 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 330 "src/lexer.c" 3 4
   "u" 
# 330 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming unary lexeme: " "RightParen" "\n", "src/lexer.c", 330); lex_type = RightParen; break;;
    case (';'): fprintf ((
# 331 "src/lexer.c" 3 4
   stdout
# 331 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 331 "src/lexer.c" 3 4
   "u" 
# 331 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming unary lexeme: " "Semi" "\n", "src/lexer.c", 331); lex_type = Semi; break;;
    case ('.'): fprintf ((
# 332 "src/lexer.c" 3 4
   stdout
# 332 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 332 "src/lexer.c" 3 4
   "u" 
# 332 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming unary lexeme: " "Dot" "\n", "src/lexer.c", 332); lex_type = Dot; break;;

    case ('*'): lex_type = Star; if (next == '=') { fprintf ((
# 334 "src/lexer.c" 3 4
   stdout
# 334 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 334 "src/lexer.c" 3 4
   "u" 
# 334 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "CONCAT (Star, Assign)" "\n", "src/lexer.c", 334); lex_type = StarAssign; length++; } else { fprintf ((
# 334 "src/lexer.c" 3 4
   stdout
# 334 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 334 "src/lexer.c" 3 4
   "u" 
# 334 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "Star" "\n", "src/lexer.c", 334); } break;;
    case ('+'): lex_type = Add; if (next == '=') { fprintf ((
# 335 "src/lexer.c" 3 4
   stdout
# 335 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 335 "src/lexer.c" 3 4
   "u" 
# 335 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "CONCAT (Add, Assign)" "\n", "src/lexer.c", 335); lex_type = AddAssign; length++; } else { fprintf ((
# 335 "src/lexer.c" 3 4
   stdout
# 335 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 335 "src/lexer.c" 3 4
   "u" 
# 335 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "Add" "\n", "src/lexer.c", 335); } break;;
    case ('-'): lex_type = Minus; if (next == '=') { fprintf ((
# 336 "src/lexer.c" 3 4
   stdout
# 336 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 336 "src/lexer.c" 3 4
   "u" 
# 336 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "CONCAT (Minus, Assign)" "\n", "src/lexer.c", 336); lex_type = MinusAssign; length++; } else { fprintf ((
# 336 "src/lexer.c" 3 4
   stdout
# 336 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 336 "src/lexer.c" 3 4
   "u" 
# 336 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "Minus" "\n", "src/lexer.c", 336); } break;;
    case ('%'): lex_type = Modulus; if (next == '=') { fprintf ((
# 337 "src/lexer.c" 3 4
   stdout
# 337 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 337 "src/lexer.c" 3 4
   "u" 
# 337 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "CONCAT (Modulus, Assign)" "\n", "src/lexer.c", 337); lex_type = ModulusAssign; length++; } else { fprintf ((
# 337 "src/lexer.c" 3 4
   stdout
# 337 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 337 "src/lexer.c" 3 4
   "u" 
# 337 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "Modulus" "\n", "src/lexer.c", 337); } break;;
    case ('^'): lex_type = BitwiseXor; if (next == '=') { fprintf ((
# 338 "src/lexer.c" 3 4
   stdout
# 338 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 338 "src/lexer.c" 3 4
   "u" 
# 338 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "CONCAT (BitwiseXor, Assign)" "\n", "src/lexer.c", 338); lex_type = BitwiseXorAssign; length++; } else { fprintf ((
# 338 "src/lexer.c" 3 4
   stdout
# 338 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 338 "src/lexer.c" 3 4
   "u" 
# 338 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "BitwiseXor" "\n", "src/lexer.c", 338); } break;;
    case ('!'): lex_type = Not; if (next == '=') { fprintf ((
# 339 "src/lexer.c" 3 4
   stdout
# 339 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 339 "src/lexer.c" 3 4
   "u" 
# 339 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "CONCAT (Not, Assign)" "\n", "src/lexer.c", 339); lex_type = NotAssign; length++; } else { fprintf ((
# 339 "src/lexer.c" 3 4
   stdout
# 339 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 339 "src/lexer.c" 3 4
   "u" 
# 339 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "Not" "\n", "src/lexer.c", 339); } break;;
    case ('='): lex_type = Assign; if (next == '=') { fprintf ((
# 340 "src/lexer.c" 3 4
   stdout
# 340 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 340 "src/lexer.c" 3 4
   "u" 
# 340 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "CONCAT (Assign, Assign)" "\n", "src/lexer.c", 340); lex_type = AssignAssign; length++; } else { fprintf ((
# 340 "src/lexer.c" 3 4
   stdout
# 340 "src/lexer.c"
   ), "\033[1;" "37m" "%s:%" 
# 340 "src/lexer.c" 3 4
   "u" 
# 340 "src/lexer.c"
   "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "consuming binary lexeme: " "Assign" "\n", "src/lexer.c", 340); } break;;

    case '/':
      lex_type = Div;
      if (next == '=')
        {
          lex_type = DivAssign;
          length++;
        }
      else if (next == '*')
        {
          lex_ctx_consume_multicomment (stream, lexemes);
          return;
        }
      else if (next == '/')
        {
          lex_ctx_consume_comment (stream, lexemes);
          return;
        }
      break;
    case '|':
      lex_type = BitwiseOr;
      if (next == '|')
        {
          lex_type = LogicalOr;
          length++;
        }
      else if (next == '=')
        {
          lex_type = BitwiseOrAssign;
          length++;
        }
      break;
    case '&':
      lex_type = BitwiseAnd;
      if (next == '&')
        {
          lex_type = LogicalAnd;
          length++;
        }
      else if (next == '=')
        {
          lex_type = BitwiseAndAssign;
          length++;
        }
      break;
    default:
      fprintf ((
# 387 "src/lexer.c" 3 4
     stderr
# 387 "src/lexer.c"
     ), "\033[1;" "37m" "%s:%" 
# 387 "src/lexer.c" 3 4
     "u" 
# 387 "src/lexer.c"
     "\033[0m" ": " "\033[1;" "31m" "error: " "\033[0m" "unidentified character: '%c'" "\n", "src/lexer.c", 387, current);
      fconsume (stream->ptr, 1);
      return;
  }
  { array_append ((lexemes), lex_ctx_create_lexeme ((stream), (lex_type), (length))); fconsume ((stream)->ptr, (long)(length)); };
}

static uint64_t
lex_ctx_process_impl (lexer_t self,
                      memstream_t stream)
{
  __extension__ __auto_type lexemes = array_new ();
  g_diagnostics = diagn_new (g_comp_args, stream->buffer, stream->path);
  
# 400 "src/lexer.c" 3 4
 _Bool 
# 400 "src/lexer.c"
      reached_eof = 
# 400 "src/lexer.c" 3 4
                    0
# 400 "src/lexer.c"
                         ;
  while (!feof (stream->ptr) && !reached_eof)
    {
      __extension__ __auto_type current = (int8_t)fpeek (stream->ptr, 0);
      __extension__ __auto_type next = (int8_t)fpeek (stream->ptr, 1);

      switch (current)
      {
        case 
# 408 "src/lexer.c" 3 4
            (-1)
# 408 "src/lexer.c"
               :
          fprintf ((
# 409 "src/lexer.c" 3 4
         stdout
# 409 "src/lexer.c"
         ), "\033[1;" "37m" "%s:%" 
# 409 "src/lexer.c" 3 4
         "u" 
# 409 "src/lexer.c"
         "\033[0m" ": " "\033[1;" "36m" "minutiae: " "\033[0m" "consumed end of file" "\n", "src/lexer.c", 409);
          array_append (lexemes, lex_ctx_create_lexeme (stream, EndOfFile, 0));
          reached_eof = 
# 411 "src/lexer.c" 3 4
                       1
# 411 "src/lexer.c"
                           ;
          break;
        case '\n':
          fprintf ((
# 414 "src/lexer.c" 3 4
         stdout
# 414 "src/lexer.c"
         ), "\033[1;" "37m" "%s:%" 
# 414 "src/lexer.c" 3 4
         "u" 
# 414 "src/lexer.c"
         "\033[0m" ": " "\033[1;" "36m" "minutiae: " "\033[0m" "consumed end of line" "\n", "src/lexer.c", 414);
          array_append (lexemes, lex_ctx_create_lexeme (stream, Newline, 1));
          fconsume (stream->ptr, 1);
          break;
        case '0':
          if (next == 'x')
            {
              lex_ctx_consume_hexadecimal (stream, lexemes);
              break;
            }
          lex_ctx_consume_octal (stream, lexemes);
          break;
        case '1': case '2': case '3': case '4':
        case '5': case '6': case '7': case '8': case '9':
          lex_ctx_consume_number (stream, lexemes);
          break;
        case '"':
          lex_ctx_consume_string (stream, lexemes);
          break;
        case '\'':
          lex_ctx_consume_character (stream, lexemes);
          break;
        default:
          if (isident_f (current))
            {
              lex_ctx_consume_identifier (stream, lexemes);
              break;
            }
          else if (
# 442 "src/lexer.c" 3 4
                  ((*__ctype_b_loc ())[(int) ((
# 442 "src/lexer.c"
                  current
# 442 "src/lexer.c" 3 4
                  ))] & (unsigned short int) _ISspace)
# 442 "src/lexer.c"
                                   )
            {
              fconsume (stream->ptr, 1);
              break;
            }
          lex_ctx_consume_nonliteral (stream, lexemes);
          break;
      }
    }
  fprintf ((
# 451 "src/lexer.c" 3 4
 stdout
# 451 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 451 "src/lexer.c" 3 4
 "u" 
# 451 "src/lexer.c"
 "\033[0m" ": " "\033[0;" "34m" "log: " "\033[0m" "Lexed %zu lexemes from \"%s\"" "\n", "src/lexer.c", 451, array_length (lexemes), stream->path);
  array_append (self->lexeme_arrays, lexemes);
  __extension__ __auto_type nr_errors = diagn_flush (g_diagnostics, 
# 453 "src/lexer.c" 3 4
                                              stdout
# 453 "src/lexer.c"
                                                    );
  diagn_free (g_diagnostics);
  return nr_errors;
}

lexer_t
lex_ctx_new (struct compilation_args* comp_args)
{
  lexer_t lexer = __chk_calloc_impl (__func__, (1), (sizeof (*(lexer_t)
# 461 "src/lexer.c" 3 4
                 ((void *)0)
# 461 "src/lexer.c"
                 )));
  lexer->memstreams = array_new ();
  lexer->lexeme_arrays = array_new ();
  g_comp_args = comp_args;
  fprintf ((
# 465 "src/lexer.c" 3 4
 stdout
# 465 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 465 "src/lexer.c" 3 4
 "u" 
# 465 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "34m" "verbose: " "\033[0m" "created lexer %p" "\n", "src/lexer.c", 465, ((void *)((uintptr_t)lexer & 0xFFFFFFFF)));
  return lexer;
}

void
lex_ctx_load_file (lexer_t self,
                   fptr_t file,
                   const char* const path)
{
  array_append (self->memstreams, io_read_file_into_memstream (file, path));
}

uint64_t
lex_ctx_process (lexer_t self)
{
  uint64_t nr_lexing_errors = 0;
  memstream_t stream; for (size_t i = 0; i < array_length (self->memstreams) && (stream = array_get (self->memstreams, i)); ++i)
  {
    nr_lexing_errors += lex_ctx_process_impl (self, stream);
  }
  return nr_lexing_errors;
}

static void
lex_ctx_free_lexeme_arrays (array_t lexemes)
{
  fprintf ((
# 491 "src/lexer.c" 3 4
 stdout
# 491 "src/lexer.c"
 ), "\033[1;" "37m" "%s:%" 
# 491 "src/lexer.c" 3 4
 "u" 
# 491 "src/lexer.c"
 "\033[0m" ": " "\033[1;" "36m" "minutiae: " "\033[0m" "freeing lexeme array at %p" "\n", "src/lexer.c", 491, ((void *)((uintptr_t)lexemes & 0xFFFFFFFF)));
  array_free_cb (lexemes, __chk_free_impl_nofn);
}

void
lex_ctx_free (lexer_t self)
{
  array_free_cb (self->memstreams, io_free_memstream);
  array_free_cb (self->lexeme_arrays, lex_ctx_free_lexeme_arrays);
  __chk_free_impl (__func__, self);
}
