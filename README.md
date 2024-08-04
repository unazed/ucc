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

## Milestones

1. Tokenization
   - Lexing
     - **TODO:** Raw strings
     - **TODO:** Strings w/ encodings (UTF8, UTF16, UTF32 and wide encodings)
     - **TODO:** Floating point numbers (and hexadecimal floats)
     - Decimal numbers ([commit](https://github.com/unazed/ucc/commit/38d2ea53cfedbc53300dbcc8fabea5aa06744cad)),
       Octal numbers ([commit](https://github.com/unazed/ucc/commit/92e9c9f5b7652e3e9799bc5a96b5f738bc924675)),
       Hexadecimal numbers ([commit](https://github.com/unazed/ucc/commit/94b3d7dc643f19171edf51309917c7ad3cd78f09)),
       with suffixes supported
     - Identifiers ([commit](https://github.com/unazed/ucc/commit/38d2ea53cfedbc53300dbcc8fabea5aa06744cad))
     - Unary/binary operators ([commit](https://github.com/unazed/ucc/commit/38d2ea53cfedbc53300dbcc8fabea5aa06744cad))
   - Rich diagnostics ([commit](https://github.com/unazed/ucc/commit/49426ceda3c1ae9c3ca8d0b2b5ec684fef77e64e))
   - Multiple translation units ([commit](https://github.com/unazed/ucc/commit/50ce08cf9e574ed28b8fe6115d52b4a630e0b62b))
2. Parsing
3. Code generation (LLVM backend)
