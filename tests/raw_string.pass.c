int
main (void)
{
  char* a = R"(test)";
  char* b = R"(test"'""'test)";
  char* c = R"prefix(test()("))()))())prefix";
}
