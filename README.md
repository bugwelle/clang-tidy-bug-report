# clang-tidy issue

This repo's only purpose is to show an issue with clang-tidy.

Just run `./build.sh`. You will get following output:

```sh
-- The C compiler identification is GNU 7.4.0
-- The CXX compiler identification is GNU 7.4.0
-- Check for working C compiler: /usr/bin/cc
-- Check for working C compiler: /usr/bin/cc -- works
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Detecting C compile features
-- Detecting C compile features - done
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Configuring done
-- Generating done
-- Build files have been written to: /home/andre/Downloads/test/build
Scanning dependencies of target thisLib
[ 50%] Building CXX object CMakeFiles/thisLib.dir/test.cpp.o
[100%] Linking CXX static library libthisLib.a
[100%] Built target thisLib
-- Configuring done
-- Generating done
-- Build files have been written to: /home/andre/Downloads/test/build
2 warnings generated.
/home/andre/Downloads/test/test.cpp:7:5: warning: 'if' statement is unnecessary; deleting null pointer has no effect [readability-delete-null-pointer]
    if (elem.a) {
    ^~~~~~~~~~~~~
/home/andre/Downloads/test/test.cpp:7:5: note: FIX-IT applied suggested code changes
/home/andre/Downloads/test/test.cpp:7:17: note: FIX-IT applied suggested code changes
    if (elem.a) {
                ^
/home/andre/Downloads/test/test.cpp:9:5: note: FIX-IT applied suggested code changes
    }
    ^
Trying to resolve conflict: The new replacement overlaps with an existing replacement.
New replacement: /home/andre/Downloads/test/test.cpp: 81:+0:" != nullptr"
Existing replacement: /home/andre/Downloads/test/test.cpp: 71:+12:""
/home/andre/Downloads/test/test.cpp:7:9: warning: implicit conversion 'int *' -> bool [readability-implicit-bool-conversion]
    if (elem.a) {
        ^
               != nullptr
/home/andre/Downloads/test/test.cpp:7:15: note: FIX-IT applied suggested code changes
    if (elem.a) {
              ^
clang-tidy applied 4 of 4 suggested fixes.
```