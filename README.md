# clang-tidy-bug

This repository provides a repro for clang-tidy bug with GCC compiler. It is based on CMake project using arm-none-eabi-gcc compiler. 

## Steps
1. Clone this repo into folder `src`
1. Create folder for CMake build files named `build`
1. In `build` folder generate build (e.g. `cmake -G "MinGW Makefiles" ..\src)
1. Run build (`make all`). `compile_commands.json` file is generated
1. Go to `src` folder
1. Run `clang-tidy` tool: `clang-tidy -p=<path to build dir> src/main.cpp`

**Result**:
```
3 errors generated.
Error while processing C:\builds\llvm-bug\src\src\main.cpp.
error: unknown argument: '-mfix-cortex-m3-ldrd' [clang-diagnostic-error]
error: unknown argument: '-mno-thumb-interwork' [clang-diagnostic-error]
C:\builds\llvm-bug\src\src\main.cpp:1:10: error: 'cstdio' file not found [clang-diagnostic-error]
#include <cstdio>
         ^
```


