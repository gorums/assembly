Assembly AT&T
========

Assembly Codes & C & Assembly Codes generate by GCC

# Fibonacci

## 1) asFibonacci.s

Compile in 32 bits

$ as -o asFibonacci.o asFibonacci.s

$ ld -dynamic-linker /lib/ld-linux.so.2 -lc -o fibonacci asFibonacci.o

Compile in 64 bits to 32 bits

$ as --32 -o asFibonacci.o asFibonacci.s

$ ld -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -lc -o fibonacci asFibonacci.o

## 2) cFibonacci.c

 C code, fibonacci algorithm
 
## 3)  cFibonacci.s
 
 Assembly code generate by GCC in 32 bits

$ gcc -m32 -S cFibonacci.c
