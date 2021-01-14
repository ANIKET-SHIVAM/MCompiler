MCompiler Project
Installation:
1. Clone repo
2. Build ROSE(version: 0.9.8.8 or above)
3. Build Boost(version: 1.61.0)
4. Build OpenCV(version: 4.0 or above)
5. Add path to Rose(Build), Boost and OpenCV header and library files in the Makefile.

Building Tools:
GCC/G++ version-4.9 and 5.4

Recommended ROSE installation method: GNU autotools.

Other [Installation Guide](https://github.com/rose-compiler/rose/)

If CUDA is not installed, add -Denable-cuda:BOOL=off in ROSE CMake build.

Source:
Formatting Style: clang-format -style="{BasedOnStyle: llvm, AlignConsecutiveAssignments: true}" -i <file>
