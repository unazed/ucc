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
     - Raw strings ([commit](https://github.com/unazed/ucc/commit/d6d57bae96cb86b295fa2e16a4465b8c5e579dc9))
     - Strings w/ encodings (UTF8, UTF16, UTF32 and wide encodings) ([commit](https://github.com/unazed/ucc/commit/d6d57bae96cb86b295fa2e16a4465b8c5e579dc9))
       - Octal/hexadecimal sequences ([commit](https://github.com/unazed/ucc/commit/6717ad5cf35923ebe64ae2685e2295794c82406d))
       - **TODO:** Universal escape sequences (unlikely to do, snorefest)
     - Floating point numbers (and hexadecimal floats) ([commit](https://github.com/unazed/ucc/commit/0aee55fb8943b1dce75f41c8d99465af4fa114d6))
     - Decimal numbers ([commit](https://github.com/unazed/ucc/commit/38d2ea53cfedbc53300dbcc8fabea5aa06744cad)),
       octal numbers ([commit](https://github.com/unazed/ucc/commit/92e9c9f5b7652e3e9799bc5a96b5f738bc924675)),
       hexadecimal numbers ([commit](https://github.com/unazed/ucc/commit/94b3d7dc643f19171edf51309917c7ad3cd78f09)),
       with suffixes supported
     - Identifiers ([commit](https://github.com/unazed/ucc/commit/38d2ea53cfedbc53300dbcc8fabea5aa06744cad))
     - Unary/binary operators ([commit](https://github.com/unazed/ucc/commit/38d2ea53cfedbc53300dbcc8fabea5aa06744cad))
     - Include directives/multiline macros ([commit](https://github.com/unazed/ucc/commit/cb69a4418ba1717739580dc1678ee7337cd04f09))
     - Dumping lexer output to file ([commit](https://github.com/unazed/ucc/commit/cb69a4418ba1717739580dc1678ee7337cd04f09))
   - Rich diagnostics ([commit](https://github.com/unazed/ucc/commit/49426ceda3c1ae9c3ca8d0b2b5ec684fef77e64e))
   - Multiple translation units ([commit](https://github.com/unazed/ucc/commit/50ce08cf9e574ed28b8fe6115d52b4a630e0b62b))
   - Regression testing ([commit](https://github.com/unazed/ucc/commit/405a7089a328e0755a67f8cc0fe6967f4a8478a9))
2. Preprocessing
3. Parsing
4. Code generation (LLVM backend)
