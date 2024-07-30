#include "map.h"
#include "common.h"
#include "thunk.h"

#include <assert.h>
#include <math.h>
#include <stdbool.h>
#include <time.h>
#include <stdlib.h>

#define SHOULD_RESIZE(self) ( \
  (float)(thunk_private_attr ((self), nr_collisions)) \
    > thunk_public_attr((self), capacity) * 0.5 \
  ) || (thunk_public_attr ((self), size) \
    > (float)(thunk_public_attr ((self), capacity) \
      * (REALLOCATION_THRESHOLD / 100.0)) \
  )
#define REALLOC_CAPACITY(self) \
  (thunk_public_attr((self), capacity) \
  * thunk_private_attr(self, realloc_mult))


const size_t primes[] = {
  17, 37, 67, 131, 257, 521, 1031, 2053, 4099, 8209, 16387, 32771,
  65537, 131101, 262147, 524309, 1048583, 2097169, 4194319, 8388617, 16777259,
  33554467, 67108879, 134217757, 268435459, 536870923, 1073741827, 2147483659,
  4294967311, 8589934609, 17179869209, 34359738421, 68719476767, 137438953481,
  274877906951, 549755813911, 1099511627791, 2199023255579, 4398046511117,
  8796093022237, 17592186044423, 35184372088891, 70368744177679,
  140737488355333, 281474976710677, 562949953421381, 1125899906842627,
  2251799813685269, 4503599627370517, 9007199254740997, 18014398509481951,
  36028797018963913, 72057594037927931, 144115188075855871, 288230376151711813,
  576460752303423619, 1152921504606847009, 2305843009213693951,
  4611686018427387847, 9223372036854775783
};

size_t
rand_lim (size_t limit)
{
  size_t divisor = RAND_MAX / (limit + 1);
  size_t ret;
  do
  {
    ret = rand () / divisor;
  } while (ret > limit);
  return ret;
}

size_t
select_prime (size_t size)
{
  size_t idx = min (sizeof (primes) - 1, max (log (size) / log (2) - 1, 0));
  return primes[idx];
}

struct hash_parameters
generate_parameters (size_t size)
{
  srand (time (0));
  size_t p = select_prime (size),
         a = rand_lim (p - 1) + 1,
         b = rand_lim (p - 1);
  return (struct hash_parameters) { .a = a, .b = b, .p = p};
}

__attribute__((nonnull))
hash_t
generate_hash (const struct hash_parameters* params, const char* key)
{
  hash_t hash = 0;
  size_t c;
  while ((c = *key++))
    hash = c + (hash << 6) + (hash << 16) - hash;
  return (params->a * hash + params->b) % params->p;
}

declare_thunk_method(map_t, alloc_sized_slots)(thunk_self_ty(map_t) self,
    size_t size)
{
  auto slots = calloc (size, sizeof (struct map_slot));
  if (slots == NULL)
    {
      thunk_exception_struct({}) exc = { .msg = "calloc() failed" };
      return thunk_error_t(map_t, alloc_sized_slots, exc);
    }
  thunk_public_attr(self, capacity) = size;
  auto params = generate_parameters (size);
  thunk_private_attr(self, params).a = params.a;
  thunk_private_attr(self, params).b = params.b;
  thunk_private_attr(self, params).p = params.p;
  return thunk_result_t(map_t, alloc_sized_slots, slots);
}

void
free_slots (thunk_self_ty(map_t) self)
{
  if (!thunk_private_attr(self, nr_collisions))
    goto no_collisions;
  for (size_t i = thunk_private_attr(self, nr_collisions), j = 0; i > 0; ++j)
    {
      auto entry = &thunk_public_attr(self, slots)[j];
      if (!entry->in_use)
        continue;
      if (entry->next == NULL)
        continue;
      entry = entry->next;
      map_slot_t coll;
      while ((coll = entry->next) != NULL)
        {
          free (entry);
          entry = coll;
          --i;
        }
      free (entry);
      --i;
    }
no_collisions:
  free (thunk_public_attr(self, slots));
}

declare_thunk_method(map_t, maybe_resize)(thunk_self_ty(map_t) self)
{
  if (thunk_private_attr(self, disable_resize))
    return thunk_result_t(map_t, maybe_resize, false);
  if (!SHOULD_RESIZE(self))
    return thunk_result_t(map_t, maybe_resize, false);

  auto old_slots = thunk_public_attr(self, slots);
  map_slot_t new_slots = thunk_unwrap (
    self->alloc_sized_slots (REALLOC_CAPACITY(self)),
    {
      thunk_base_exception_t exc = base_exc;
      ucc_error ("failed to reallocate memory, (%s)\n", exc->msg);
      exit (EXIT_FAILURE);
    }, {
      ucc_log ("successfully resized map capacity to %zu\n",
        REALLOC_CAPACITY(self));
    }
  );
  thunk_public_attr(self, slots) = new_slots;
  for (size_t i = 0; i < thunk_public_attr(self, capacity)
                       && thunk_public_attr(self, size) > 0; ++i)
    {
      auto entry = &old_slots[i];
      if (!entry->in_use)
        continue;
      do
      {
        self->set (entry->key, entry->value);
      } while ((entry = entry->next));
    }
  thunk_public_attr(self, slots) = old_slots;
  free_slots (self);
  thunk_public_attr(self, slots) = new_slots;
  thunk_public_attr(self, capacity) = REALLOC_CAPACITY(self);
};

declare_thunk_method(map_t, get)(thunk_self_ty(map_t) self, const char* key)
{
  auto hash = generate_hash (&thunk_private_attr(self, params), key);
  auto entry = &thunk_public_attr(self, slots)[
    hash % thunk_public_attr(self, capacity)];

  if (__builtin_expect (entry->hash == hash, 1))
    return entry->value;
  if (entry->next == NULL)
    return NULL;
  if (!thunk_private_attr(self, nr_collisions))
    return NULL;
  while ((entry = entry->next))
    if (entry->hash == hash)
      return entry->value;
  return NULL;
}

declare_thunk_method(map_t, set)(thunk_self_ty(map_t) self, const char* key,
    void* val)
{
  auto hash = generate_hash (&thunk_private_attr(self, params), key);
  auto entry = &thunk_public_attr(self, slots)[
    hash % thunk_public_attr(self, capacity)];
  if (__builtin_expect (entry->in_use == false, 1))
    {
      entry->hash = hash;
      entry->key = key;
      entry->value = val;
      entry->in_use = true;
      thunk_public_attr(self, size)++;
      goto maybe_resize;
    }
  if (!strncmp (key, entry->key, strlen (entry->key)))
    return NULL;
  while (entry->next != NULL)
    entry = entry->next;
  map_slot_t slot = calloc (1, sizeof (struct map_slot));
  slot->hash = hash;
  slot->key = key;
  slot->value = val;
  slot->in_use = true;
  entry->next = slot;
  thunk_private_attr(self, nr_collisions)++;
  entry = slot;
maybe_resize:
  self->maybe_resize ();
  return self->get (key);
}

declare_thunk_method(map_t, remove)(thunk_self_ty(map_t) self,
    const char* key)
{
  auto hash = generate_hash (&thunk_private_attr(self, params), key);
  auto entry = &thunk_public_attr(self, slots)[
    hash % thunk_public_attr(self, capacity)];  

  if (__builtin_expect (!entry->in_use, 0))
    return false;

  if (entry->hash == hash)
    {
      memset (entry, 0, sizeof (struct map_slot));
      if (entry->next == NULL)
        {
          --thunk_public_attr(self, size);
          return true;
        }
      memcpy (entry, entry->next, sizeof (struct map_slot));
      free (entry->next);
      --thunk_private_attr(self, nr_collisions);
      return true;
    }

  assert (entry->next != NULL && "map_remove() sanity check #1 failed");

  for (map_slot_t curr = entry->next; curr;)
  {
    if (curr->hash == hash)
      {
        entry->next = curr->next;
        --thunk_private_attr(self, nr_collisions);
        free (curr);
        return true;
      }
    entry = curr;
    curr = curr->next;
  }

  return false;
}

declare_thunk_initializer(map_t)(thunk_self_ty(map_t) self)
{
  thunk_private_attr(self, realloc_mult) = 2;
  thunk_public_attr(self, slots) = thunk_unwrap(
    self->alloc_sized_slots(INITIAL_SLOT_ALLOC), {
      thunk_base_exception_t exc = base_exc;
      ucc_error ("failed to allocate memory, (%s)\n", exc->msg);
      exit (EXIT_FAILURE);
    }, {
      ucc_log ("successfully allocated map with %zu slots\n",
          thunk_public_attr(self, capacity));
    }
  );
}

declare_thunk_finalizer(map_t)(thunk_self_ty(map_t) self)
{
  free_slots (self);
}
