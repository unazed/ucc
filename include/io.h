#pragma once

#include <stdint.h>
#include <stdio.h>

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
