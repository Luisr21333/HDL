#include <stdio.h>
#include "PmodAD2.h"
#include "xil_cache.h"
#include "xparameters.h"

PmodAD2 myDevice;

u16 conv;
u8 channel;
double voltage;

int main() {

AD2_begin(&myDevice, XPAR_PMODAD2_0_AXI_LITE_IIC_BASEADDR, AD2_IIC_ADDR);

// Turn on channel 0, pin V1
AD2_WriteConfig(&myDevice, AD2_CONFIG_CH0);


	while(1) {

		// Keep 12-bit result, masking or bit select
		conv &= 0xFFF;

		AD2_ReadConv(&myDevice, &conv);

		//Scale captured data such that 0x000:0xFFF => 0.0:3.3
		voltage = (double) (conv & AD2_DATA_MASK) * 3.3 / (AD2_DATA_MASK + 1);

		printf("Voltage = %.02f V \r\n", voltage);
	}
}
