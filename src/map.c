#include "../include/map.h"

declare_thunk_initializer(map_t)(thunk_self_ty(map_t) self)
{

}

declare_thunk_method(map_t, get)(thunk_self_ty(map_t) self, const char* key)
{
  return NULL;
}

declare_thunk_method(map_t, set)(thunk_self_ty(map_t) self, const char* key,
    void* val)
{

}

declare_thunk_method(map_t, remove)(thunk_self_ty(map_t) self,
    const char* key)
{

}
