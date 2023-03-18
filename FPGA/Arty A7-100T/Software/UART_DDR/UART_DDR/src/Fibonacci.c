#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

int fib(int n)
{
    /* Declare an array to store Fibonacci numbers. */
    int f[n + 1];
    int i;

    /* 0th and 1st number of the series are 0 and 1*/
    f[0] = 0;
    f[1] = 1;

    for (i = 2; i <= n; i++) {
        /* Add the previous 2 numbers in the series
         and store it */
        f[i] = f[i - 1] + f[i - 2];
    }

    return f[n];
}

int main()
{
    init_platform();

    print("Luis Rivera\n\r");
    print("Successfully ran UART with DDR application!\n\r");

	for(int i = 0; i < 40; i++){
	printf("Fibonacci number %ld at index %d!\n\r", fib(i), i);
	}

    cleanup_platform();
    return 0;
}