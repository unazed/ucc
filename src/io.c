#include "generic.h"
#include "io.h"

size_t io_get_filesize (fptr_t file);

fptr_t
io_open_file (const char* filename, const char* mode)
{
  auto file = fopen (filename, mode);
  if (file == NULL)
    {
      ucc_werror ("%s: failed to open filename", filename);
      return NULL;
    }
  return file;
}

size_t
io_get_filesize (fptr_t file)
{
  fseek (file, 0, SEEK_END);
  auto filesize = ftell (file);
  fseek (file, 0, SEEK_SET);
  return (size_t)filesize;
}

uint8_t*
io_alloc_file_buffer (fptr_t file)
{
  return chk_calloc (io_get_filesize (file), sizeof (char));
}

size_t
io_read_file_into_buffer (fptr_t file, uint8_t* const buffer, size_t buffer_size)
{
  dbg_assert (buffer_size <= io_get_filesize (file),
              "Writing to the specified buffer would cause an overrun "
              "file size is %zu bytes, buffer size is %zu bytes",
              io_get_filesize (file), buffer_size);
  auto nbytes_written = fread (buffer, sizeof (char), buffer_size, file);
  if (nbytes_written < buffer_size)
    log_primary ("read less than expected (expected: %zu, read: %zu)",
                 buffer_size, nbytes_written);
  return nbytes_written;
}

memstream_t
io_read_file_into_memstream (fptr_t file, const char* const path)
{
  uint8_t *file_buffer = io_alloc_file_buffer (file);
  size_t filesize = io_get_filesize (file);
  io_read_file_into_buffer (file, file_buffer, filesize);
  memstream_t stream = chk_calloc_struct (memstream_t);
  stream->buffer = file_buffer;
  stream->size = filesize;
  stream->path = path;
  stream->ptr = fmemopen (file_buffer, filesize, "r");
  return stream;
}

void
io_free_memstream (memstream_t stream)
{
  log_minutiae ("freeing memory stream %p", fmt_ptr (stream));
  io_close_file (stream->ptr);
  chk_free (stream->buffer);
  chk_free (stream);
}

void
io_close_file (fptr_t file)
{
  log_minutiae ("closing file object %p", fmt_ptr (file));
  fclose (file);
}
