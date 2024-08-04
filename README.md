## Rationale

UCC is a hand-written implementation aiming to support the full C11 grammar 
specification.
This is a hobby project with the goal to dive in head-first into compiler
theory without any solid foundation, and see where I come out by the end.

## Building & usage

The target is built with the Makefile build system:
```
git clone --depth=1 https://github.com/unazed/ucc && cd ucc/
make
```
Then the target binary is named `ucc`, argument usage is provided by `ucc -?`.
Multiple compilation units are supported.

