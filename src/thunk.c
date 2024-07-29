#include "../include/thunk.h"
#include <stddef.h>
#include <unistd.h>
#include <sys/mman.h>

__attribute__((naked, section("thunk_stub")))
void
base_thunk_function()
{
  asm (
    "1:lea 1b(%%rip), %%rax\n\t"
    "subq %0, %%rax;\n\t"
    "mov %%r8, %%r9;\n\t"
    "mov %%rcx, %%r8;\n\t"
    "mov %%rdx, %%rcx;\n\t"
    "mov %%rsi, %%rdx;\n\t"
    "mov %%rdi, %%rsi;\n\t"
    "add %1, %%rax;\n\t"
    "mov (%%rax), %%rdi;\n\t"
    "add %2, %%rax;\n\t"
    "jmp *(%%rax);\n\t"
    :: "i" (sizeof (struct impln(thunk))),
       "i" (offsetof (struct impln(thunk), self)),
       "i" (offsetof (struct impln(thunk), target) - offsetof (struct impln(thunk), self))
    : "rax", "rdi", "rsi", "rdx", "rcx", "r8", "r9"
  );
}

void
create_thunk (void **dest_thunk, void *base_thunk, void *self)
{
  int stub_size = (char *)&__stop_thunk_stub - (char *)&__start_thunk_stub;
  size_t alloc_size = sizeof (struct impln(thunk)) + stub_size;
  struct impln(thunk)* new_thunk;
  posix_memalign ((void **)&new_thunk, getpagesize (), alloc_size);
  mprotect (new_thunk, alloc_size, PROT_READ | PROT_EXEC | PROT_WRITE);
  new_thunk->self = self;
  new_thunk->target = base_thunk;
  *dest_thunk = memcpy (new_thunk->code, &__start_thunk_stub, stub_size);
}

void
initialize_thunks (struct impln (offsets) *base)
{
  size_t nr_methods = (base->methods.end - base->methods.start)
    / sizeof (void *);
  void **base_methods = base->base_methods,
    **thunk_methods = base->methods.start;
  for (size_t i = 0; i < nr_methods; ++i)
    create_thunk (&thunk_methods[i], base_methods[i], base);
}
