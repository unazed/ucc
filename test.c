size_t
strlen_utf(void* s_)
{
  char* s = s_;
  size_t len = 1;
  while (s[len++] != '"');
  return len;
}

int
main (void)
{
  __auto_type x = U"こんにちは お元気ですか";
  size_t strlen = strlen_utf (x);
  printf ("%c\n", ((char*)x)[strlen-1]);

  printf ("%s, strlen (x) = %zu, sizeof (ty) = %zu\n", x, strlen_utf (x),
          sizeof (((typeof (x))(NULL)))
          );
}
