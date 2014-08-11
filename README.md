Assembly AT&T
========

Assemby Codes

1) Fibonacci

It only compile five in 32 bits

-# as --32 -o Fibonacci.o Fibonacci.s
-#  ld -melf_i386 -dynamic-linker /lib/ld-linux.so.2 -lc -o fibonacci Fibonacci.o
