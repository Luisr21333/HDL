#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "PmodTC1.h"
#include "sleep.h"
#include "xparameters.h"

// create instance of PMOD TC1
PmodTC1 myDevice;

int main()
{
    init_platform();

    print("Running Pmod TC1 example!\n\r");

    // initialize Pmod TC1
    TC1_begin(&myDevice, XPAR_PMODTC1_0_AXI_LITE_SPI_BASEADDR);

    double celsius, fahrenheit;

    	while (1) {

    	// read from Pmod TC1
        celsius = TC1_getTemp(&myDevice);

        // convert Fahrenheit to Celsius
        fahrenheit = TC1_tempC2F(celsius);

        printf("Temperature: %0.3f deg F & %0.3f deg C!\n\r", (fahrenheit), (celsius));
        sleep(1);
    	}

    //TC1_end(&myDevice);
    print("Successfully ran Pmod TC1 application!\n\r");

    cleanup_platform();
    return 0;
}