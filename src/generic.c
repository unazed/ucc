#include "generic.h"

#include <malloc.h>

#ifdef _DEBUG_MEMORY
int64_t nr_mem_allocated = 0,
        nr_mem_freed = 0,
        nr_mem_reallocated = 0;
uint64_t nr_allocations = 0,
         nr_reallocations = 0,
         nr_frees = 0;
uint64_t avg_allocation = 0,
         avg_reallocation = 0;
#endif

void
__chk_free_impl (const char* fn, void* ptr)
{
#ifdef _DEBUG_MEMORY
  auto blk_size = malloc_usable_size (ptr);
  log_minutiae ("%s: freeing pointer (size: %zu): %p",
                fn, blk_size, fmt_ptr (ptr));
  nr_mem_freed += (signed)blk_size;
  nr_frees++;
#else
  log_minutiae ("%s: freeing pointer: %p", fn, fmt_ptr (ptr));
#endif
  free (ptr);
}

void
__chk_free_impl_nofn (void* ptr)
{
  __chk_free_impl ("<unknown>", ptr);
}

void*
__chk_realloc_impl (const char* fn, void* ptr, size_t size)
{ 
#ifdef _DEBUG_MEMORY
  auto prev_blk_size = malloc_usable_size (ptr);
#endif
  auto ret = realloc (ptr, size);
  if (ret == NULL)
    ucc_exit ("critical allocation failure");
#pragma GCC diagnostic ignored "-Wuse-after-free"
#pragma GCC diagnostic push
  log_minutiae ("%s: realloc(ptr: %p, size: %zu) returned %p",
                fn, fmt_ptr (ptr), size, fmt_ptr (ret)); 
#pragma GCC diagnostic pop
#ifdef _DEBUG_MEMORY
  auto new_blk_size = malloc_usable_size (ret);
  auto blk_size_diff = (signed)new_blk_size - (signed)prev_blk_size;
  log_minutiae ("\treallocation size went from %zu to %zu byte(s)",
                prev_blk_size, new_blk_size);
  nr_mem_reallocated += blk_size_diff;
  avg_reallocation += (avg_reallocation * nr_reallocations + (unsigned)blk_size_diff);
  avg_reallocation /= ++nr_reallocations;
#endif
  return ret;
}

void*
__chk_calloc_impl (const char* fn, size_t nmemb, size_t size)
{ 
  auto ret = calloc (nmemb, size);
  if (ret == NULL) 
    ucc_exit ("critical allocation failure"); 
#ifdef _DEBUG_MEMORY
  size_t blk_size = malloc_usable_size (ret);
  avg_allocation += (avg_allocation * nr_allocations + blk_size);
  avg_allocation /= ++nr_allocations;
  nr_mem_allocated += (signed)blk_size;
  log_minutiae ("%s: calloc(nmemb: %zu, size: %zu) returned %p (actual: %zu bytes)",
                fn, nmemb, size, fmt_ptr (ret), blk_size); 
#else
  log_minutiae ("%s: calloc(nmemb: %zu, size: %zu) returned %p",
                fn, nmemb, size, fmt_ptr (ret)); 
#endif
  return ret;
}

#ifdef _DEBUG_MEMORY
void
dbg_mem_dump_stats (void)
{
  log_primary ("Memory statistics: ");
  log_primary ("\tMemory allocated: %" PRIu64" counts, %" PRIi64 " bytes (avg: %" PRIu64 ")",
               nr_allocations, nr_mem_allocated, avg_allocation);
  log_primary ("\tNet reallocated memory: %" PRIu64 " counts, %" PRIi64 " bytes (avg: %" PRIu64 ")",
                nr_reallocations, nr_mem_reallocated, avg_reallocation);
  log_primary ("\tMemory freed: %" PRIu64" counts, %" PRIi64 " bytes",
               nr_frees, nr_mem_freed);
  log_primary ("Note: the freed size will likely not correspond with the allocated size given, due to `malloc_usable_size`");
}
#endif
