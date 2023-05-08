#include <stdio.h>
#include "platform.h"
#include "xgpio.h"
#include "xparameters.h"
#include "xil_printf.h"

#define LED_MASK  0xFF

// Create instance GPIO
XGpio gpio;

int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application");

    // Initialize GPIO
    XGpio_Initialize(&gpio, XPAR_AXI_GPIO_0_DEVICE_ID);

    // Set the input/output direction of all discrete signals for the specified GPIO channel
    XGpio_SetDataDirection(&gpio, 1, 0); // GPIO channel 1 output (LEDs)
    XGpio_SetDataDirection(&gpio, 2, 1); // GPIO channel 2 input (push buttons)

    // Turn all LEDs on
    XGpio_DiscreteWrite(&gpio, 1, LED_MASK); // LED 0-7

    int button;
    print("Press push buttons!\n\r");

    	while (1) {

    		// Read from input channel 2 (push buttons)
    		button = XGpio_DiscreteRead(&gpio, 2);
    		printf("Buttons pressed: %d\n\r", button);
    	    XGpio_DiscreteWrite(&gpio, 1, LED_MASK); // LED 0-7
    		usleep(500000);
			XGpio_DiscreteClear(&gpio, 1, LED_MASK); // Turn off LED 0-7
			usleep(500000);
    	}
    cleanup_platform();
    return 0;
}
