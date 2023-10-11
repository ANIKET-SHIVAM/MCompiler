# MCompiler

The MCompiler compilation framework allows each loop nest in the application to be optimized
by the best optimizer available for it. The MCompiler identifies loop nests in C applications,
optimizes the loop nests using different code optimizers, times each optimized code version
in execution of its complete application, and links the best performing code to generate
the complete application binary. This is referred to as the Exploratory Search method
of the MCompiler. The MCompiler can work with code optimizers such as GNU GCC and LLVM Clang. 
In addition to these, two Polyhedral Model based
loop optimizers, Polly and Pluto are used, if applicable. The best loop
nest code selection allows the MCompiler to produce higher-performing code than the best of
the code optimizers in the framework. The MCompiler benefits from the entire compilation
process (loop transformations and optimizations, and code generation) implemented in each
of the code optimizers. The framework allows for easy integration of newer versions and
newer configurations of the available code optimizers as well as the addition of new code
optimizers.

The framework can be used to optimize applications, first, for serial execution with autovectorization of loop nests. 
This optimizes loop nests for SIMD or vector code generation,
in addition to optimizing loop nests for data locality, memory hierarchy, etc. Second, the
framework can also target multi-core processors, by taking serial loop nest code as input
and auto-parallelizing those loop nests using the available code optimizers to generate multithreaded code. 
Auto-parallelized code is also optimized for SIMD execution within each
thread. In this case, the original loop nests are transformed such that loop iterations can be
reordered and scheduled for parallel execution across the multiple cores. Third, the framework can target OpenMP applications, i.e., applications with OpenMP directives inserted
across sections of the code meant for parallel execution.

The framework extracts loop nests from the applications’ source files into separate source
files as a function, together with any additional information needed. It then replaces loop
nests with a function call in the original source files. This allows for separate code optimizers
to focus on just the loop nests and also allows the framework to insert the best performing
code, i.e., linking object files to generate the executable.

The MCompiler also incorporates Machine Learning models that learn inherent characteristics and predict the most suited code optimizer for a given loop nest.
Using predictions provide a substitute for the
expensive Exploratory Search step of the framework. The hardware performance counters
are collected from a single profile of the applications, i.e., the applications are compiled with
just one code optimizer and then executed ones. However, as with any prediction, it can lead
to a potential performance loss compared to search-based selection due prediction errors, i.e.,
when the ML model or classifier does not choose the best code optimizer

Installation (Ubuntu 16+)
-------------------------
1. Clone repo
2. Build ROSE(version: 0.9.8.8 or above)
3. Build Boost(version: 1.61.0)
4. Build OpenCV(version: 4.0 or above)
5. Add path to Rose(Build), Boost and OpenCV header and library files in the Makefile.

Installation (Ubuntu 18+)
-------------------------
1. Clone repo
2. Install ROSE (Boost included) using `apt`.
3. Add path to Rose header and library files in the Makefile.

Building Tools
--------------

Recommended ROSE building method: GNU autotools.

ROSE [Installation Guide](https://github.com/rose-compiler/rose/)

Installing ROSE using `apt`:
```
apt-get install -y software-properties-common
add-apt-repository -y ppa:rosecompiler/rose-stable # Replace rose-development with rose-stable for release version
apt-get install -y rose
apt-get install -y rose-tools # Optional: Installs ROSE tools in addition to ROSE Core
```

Recommended ROSE installation method: GNU autotools.

Other [Installation Guide](https://github.com/rose-compiler/rose/)

If CUDA is not installed, add -Denable-cuda:BOOL=off in ROSE CMake build.

Building the MCompiler
-----------------------

GCC/G++ version-4.9, 5.4 or above.

Use `make` to generate the executable.

Using the MCompiler
------------------------

Run the executable without any arguments to see all available options.

This should create a folder in the current directory called `MCompiler_data`.

Inside there should be a `base` file (i.e. similar to original file but without loop nests) 
and multiple `loop nest` files (i.e. files containing extracted loop nests that are called from the `base` file).

All required header files are copied to the data folder and pre-processing of the source files is done while loop extraction.

Multiple source files can be provided in the command line to the MCompiler. Just like you would do for compiling a C/C++ project.

To tell the MCompiler to skip extracting a loop nest, use `#pragma MC skiploop` over the loop nest in the source file.

Source
------------------------
Formatting Style: clang-format -style="{BasedOnStyle: llvm, AlignConsecutiveAssignments: true}" -i <file>


### [LICENSE](LICENSE)
