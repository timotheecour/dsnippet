dmd --version
DMD64 D Compiler v2.068-devel-80a326e

dmd -of/tmp/fun3.o -c fun3.d && dmd -of/tmp/z01 /tmp/fun3.o fun2.d

ld: GOT load reloc does not point to a movq instruction in '_D4fun34fun4FZv' from /tmp/fun3.o for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)

NOTE: works fine with dmd v2.067.1

