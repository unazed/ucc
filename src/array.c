#include "array.h"
#include "generic.h"

#define ELEM_SIZE (sizeof (void*))

#ifndef ARRAY_SHOULD_DOWNSIZE
# define ARRAY_SHOULD_DOWNSIZE (1)
#else
# if ARRAY_SHOULD_DOWNSIZE != 0 || ARRAY_SHOULD_DOWNSIZE != 1
#  pragma GCC error "ARRAY_SHOULD_DOWNSIZE must be 0 or 1"
# endif
#endif

struct array_impl
{
  void** data;
  size_t length, capacity;
};

void array_impl_resize (array_t self);
void array_impl_downsize (array_t self);

void
array_impl_resize (array_t self)
{
  dbg_assert (self->length == self->capacity, "Expected array length to be at capacity");
  self->data = chk_realloc (self->data, 2 * self->capacity * ELEM_SIZE);
  log_minutiae ("resized array %p from %zu bytes to %zu bytes",
                fmt_ptr (self), ELEM_SIZE * self->capacity, 2 * ELEM_SIZE * self->capacity);
  self->capacity *= 2;
}

#ifdef ARRAY_SHOULD_DOWNSIZE
  void
  array_impl_downsize (array_t self)
  {
    dbg_assert (self->length <= self->capacity / 2,
                "Expected array length to be less than half its capacity");
    self->data = chk_realloc (self->data, self->capacity * ELEM_SIZE / 2);
    log_minutiae ("downsized array %p from %zu bytes to %zu bytes",
                  fmt_ptr (self), ELEM_SIZE * self->capacity,
                  ELEM_SIZE * self->capacity / 2);
    self->capacity /= 2;
  }
#else
  void array_impl_downsize (array_t self) { }
#endif

array_t
array_new (void)
{
  log_minutiae ("creating unsized array");
  return array_new_sized (ARRAY_INITIAL_SIZE);
}

array_t
array_new_sized (size_t size)
{
  array_t array = chk_calloc_struct (array_t);
  array->data = chk_calloc (size, ELEM_SIZE);
  log_minutiae ("new array %p, member capacity: %zu bytes",
                fmt_ptr (array), size * ELEM_SIZE);
  array->capacity = size;
  return array;
}

void*
array_insert (array_t self, size_t idx, void* item)
{
  if (self->length == self->capacity)
    array_impl_resize (self);
  if (idx >= self->length)
    {
      self->data[self->length++] = item;
      return item;
    }
  memmove (&self->data[1 + idx], &self->data[idx], ELEM_SIZE * (self->length - idx));
  self->data[idx] = item;
  self->length++;
  log_minutiae ("inserted to array %p at index %zu: element %p",
                fmt_ptr (self), idx, item);
  return item;
}

void*
array_remove (array_t self, size_t idx)
{
  dbg_assert (self->length > 0, "Array must be non-empty");
  if (idx >= self->length - 1)
    {
      auto ret = self->data[--self->length];
      array_impl_downsize (self);
      return ret;
    }
  auto ret = self->data[idx];
  memmove (&self->data[idx], &self->data[1 + idx], ELEM_SIZE * (self->length - idx - 1));
  log_minutiae ("removed from array %p at index %zu: element %p",
                fmt_ptr (self), idx, ret);
  self->length--;
  array_impl_downsize (self);
  return ret;
}

void*
array_pop (array_t self)
{
  log_minutiae ("popping from array %p", fmt_ptr (self));
  return array_remove (self, self->length);
}

void*
array_append (array_t self, void* item)
{
  array_insert (self, self->length, item);
  log_minutiae ("appended to array %p: element at %p", fmt_ptr (self), item);
  return item;
}

void*
array_get (array_t self, size_t idx)
{
  dbg_assert (idx < self->length,
              "Tried to read index %zu of array with length %zu", idx, self->length);
  log_minutiae ("getting element of array %p at index %zu", fmt_ptr (self), idx);
  return self->data[idx];
}

size_t
array_length (array_t self)
{
  return self->length;
}

void
array_free_cb (array_t self, array_free_callback_t cb_free)
{
  log_minutiae ("freeing array %p, user provided callback: %p",
                fmt_ptr (self), (void*)&cb_free);
  if (cb_free == NULL)
    goto no_callback;
  array_for_each (self, void*, item)
    cb_free (item);
no_callback:
  array_free (self);
}

void
array_free (array_t self)
{
  log_minutiae ("freeing array %p", fmt_ptr (self));
  chk_free (self->data);
  chk_free (self);
}
