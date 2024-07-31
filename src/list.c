#include "list.h"
#include "common.h"

#include <assert.h>

#define clamp(a, b, x) max(a, min(b, x))

struct list_item*
get_entry (thunk_self_ty(list_t) self, size_t index)
{
  index = clamp(0, thunk_public_attr(self, length) - 1, index);
  list_for_each_entry(self, current)
  {
    if (!index--)
      return current;
  }
  return NULL;
}

struct list_item*
alloc_list_item (void* val)
{
  struct list_item* item = calloc (1, sizeof (struct list_item));
  if (item == NULL)
    {
      ucc_error("failed to allocate memory for linked list item\n");
      exit (EXIT_FAILURE);
    }
  item->val = val;
  return item;
}

declare_thunk_method(list_t, insert)(thunk_self_ty(list_t) self,
                                     size_t index, void* val)
{ 
  auto item = alloc_list_item (val);
  auto entry = get_entry (self, index);

  auto head = &thunk_public_attr(self, head);
  auto tail = &thunk_public_attr(self, tail);

  thunk_public_attr(self, length)++;

  if (entry == NULL)
    {
      *head = *tail = item;
      return (*head)->val;
    }

  if (index == thunk_public_attr(self, length) - 1)
  /* Append, length guaranteed >= 1 */
  {
    assert ((entry == thunk_public_attr(self, tail))
            && "out-of-bounds index should be clamped to tail");
    (*tail)->next = item;
    item->prev = *tail;
    *tail = item;
    return (*tail)->val;
  }

  item->next = entry;
  item->prev = entry->prev;

  if (entry->prev != NULL) 
    entry->prev->next = item;
  else
    *head = item;

  entry->prev = item;

  return item->val;
}

declare_thunk_method(list_t, append)(thunk_self_ty(list_t) self, void* val)
{
  return self->insert (thunk_public_attr(self, length), val);
}

declare_thunk_method(list_t, remove)(thunk_self_ty(list_t) self, size_t index)
{
  auto entry = get_entry(self, index);

  auto head = &thunk_public_attr(self, head);
  auto tail = &thunk_public_attr(self, tail);
  thunk_public_attr(self, length)--;

  if (entry->prev != NULL)
    entry->prev->next = entry->next;
  else
    *head = entry->next;

  if (entry->next != NULL)
    entry->next->prev = entry->prev;
  else
    *tail = entry->prev;

  free(entry);

  return true;
}

declare_thunk_method(list_t, get)(thunk_self_ty(list_t) self, size_t index)
{
  return get_entry (self, index)->val;
}

declare_thunk_method(list_t, pop)(thunk_self_ty(list_t) self, size_t index)
{
  auto val = self->get (index);
  self->remove (index);
  return val;
}

declare_thunk_initializer(list_t)(thunk_self_ty(list_t) self)
{
  thunk_public_attr(self, length) = 0;
  thunk_public_attr(self, head) = thunk_public_attr(self, tail) = NULL;
}

declare_thunk_finalizer(list_t)(thunk_self_ty(list_t) self)
{
  struct list_item* current = thunk_public_attr(self, head);
  while (current != NULL)
  {
    struct list_item* next = current->next;
    free(current);
    --thunk_public_attr(self, length);
    current = next;
  }
  assert(!thunk_public_attr(self, length)
         && "list length must be zero after being finalized");
}
