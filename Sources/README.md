A CMake project that reproduces the problems that are described here

https://gitlab.kitware.com/cmake/cmake/issues/17573

# Reproducing the problem

```bash
git clone git@github.com:Knitschi/CMakeIssue17573.git
cd CMakeIssue17573
cmake -HSources -B_build -G"Visual Studio 14 2015 Win64" -DHUNTER_ROOT=<directory for qt package>
```

Note that the `cmake` step will take some time because it will download and compile Qt
using the hunter package manager. The `HUNTER_ROOT` variable must be set to a directory
where hunter caches its packages.

When doing this with CMake 3.9.6 the cmake call will run without errors. When running
it with CMake 3.10 it will fail.

