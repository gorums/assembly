Assembly AT&T
========

Assembly Codes

1) Fibonacci

It only compile fine in 32 bits

-# as -o Fibonacci.o Fibonacci.s

-# ld -dynamic-linker /lib/ld-linux.so.2 -lc -o fibonacci Fibonacci.o
