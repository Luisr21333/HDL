#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "PmodOLED.h"
#include "sleep.h"
#include "xparameters.h"

//create instance of Pmod OLED
PmodOLED myDevice;

// To change between PmodOLED and OnBoardOLED is to change Orientation
const u8 orientation = 0x0; // Set up for Normal PmodOLED(false) vs normal
                            // Onboard OLED(true)

const u8 invert = 0x0; // true = whitebackground/black letters
                       // false = black background /white letters

int main()
{
    init_platform();

    print("Running Pmod OLED example!\n\r");

    //initialize Pmod OLED
    OLED_Begin(&myDevice, XPAR_PMODOLED_0_AXI_LITE_GPIO_BASEADDR,XPAR_PMODOLED_0_AXI_LITE_SPI_BASEADDR, orientation, invert);


    int irow, ib, i;
       u8 *pat;
       char c;

       xil_printf("UART and SPI opened for PmodOLED Demo!\n\r");

       while (1) {
          xil_printf("Displaying text on OLED!\n\r");
          // Choosing Fill pattern 0
          pat = OLED_GetStdPattern(0);
          OLED_SetFillPattern(&myDevice, pat);
          // Turn automatic updating off
          OLED_SetCharUpdate(&myDevice, 0);

          // Draw a rectangle over writing then slide the rectangle down slowly
          // displaying all writing
          for (irow = 0; irow < OledRowMax; irow++) {
             OLED_ClearBuffer(&myDevice);
             OLED_SetCursor(&myDevice, 0, 0);
             OLED_PutString(&myDevice, "Luis Rivera");
             OLED_SetCursor(&myDevice, 0, 1);
             OLED_PutString(&myDevice, "NASA-JPL");
             OLED_SetCursor(&myDevice, 0, 2);
             OLED_PutString(&myDevice, "CSUN");
             OLED_SetCursor(&myDevice, 0, 3);
             OLED_PutString(&myDevice, "Computer Eng.");

             OLED_MoveTo(&myDevice, 0, irow);
             OLED_FillRect(&myDevice, 127, 31);
             OLED_MoveTo(&myDevice, 0, irow);
             OLED_LineTo(&myDevice, 127, irow);
             OLED_Update(&myDevice);
             usleep(100000);
          }
          sleep(1);
             }
    xil_printf("Exiting PmodOLED Demo\n\r");
    cleanup_platform();
    return 0;
}
