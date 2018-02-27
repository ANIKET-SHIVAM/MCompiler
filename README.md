Meta-Compiler Project
Installation:
1. Clone repo
2. Build ROSE(version: 0.9.8.8)
3. Build Boost(version: 1.61.0)
4. Add path to Rose(Build) and Boost header and library files in the Makefile.

Building Tools:
GCC/G++ version-4.8.5
If CUDA is not installed, add -Denable-cuda:BOOL=off in ROSE CMake build.
