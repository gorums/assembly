
#include <stdlib.h>
#include <stdio.h>

int fibo(int f)
{
	if(f == 1 || f == 2)
	{
		return 1;
	}
	
	return fibo(f - 1) + fibo(f - 2);
}

void main(int argc, char** argv)
{
	int f = atoi(argv[1]);
	int result = fibo(f);
	printf("Fibonacci to %d is %d\n", f, result);
	exit(0);
}
