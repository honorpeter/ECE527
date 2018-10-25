/*
 * Empty C++ Application
 */

/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>


#include "platform.h"
#include "malloc.h"
#include "xil_printf.h"
#include "xconv1.h"
#include "xparameters.h"
#include "xtmrctr.h"
#include "xil_printf.h"
#include "xsdps.h"
#include "xil_cache.h"
#include "xplatform_info.h"
#include "ff.h"				/* FAT File System */

#define TMRCTR_DEVICE_ID    XPAR_AXI_TIMER_0_DEVICE_ID
// Max number of test cases in LeNet is 10K
// You can reduce this for testing/debuggin
// Final report must use all 10000 test cases
#define NUM_TESTS 1

// SD card and file reading objects
static FIL fil;		/* File object */
static FATFS fatfs;
static char *SD_File;
u32 Platform;

//Static allocation of test images
unsigned char images[NUM_TESTS*28*28];
unsigned char labels[NUM_TESTS];
// *****************************************


//Data arrays
float image[1][32][32] = {0};
float conv1_weights[6][1][5][5] = {0};
float conv1_bias[6] = {0};
float conv1_output[6][28][28] = {0};

using namespace std;

// Parse MNIST test images
int parse_mnist_images(char* filename, unsigned char *images)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;
    unsigned int header[4];

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening mnist images data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist images data file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)header, sizeof(unsigned int)*4, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file\n\r");
	}

	Res = f_read(&fil, (void*)images, sizeof(unsigned char)*NUM_TESTS*28*28, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read images from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read images from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close images file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed images file\n\r");
	}

	xil_printf("Returning...\n\r");


	return XST_SUCCESS;
}


int main()
{
    init_platform();
    xil_printf("Lenet code \n\r");
    int ret = 0;
    int status;

    //Time variable
    u32 timerCount_Stop;
    u32 timerCount_Start;

    //AXI Timer Object
    XTmrCtr timer;

    //Lenet accelerator
    XConv1 accelerator;
    XConv1_Config * accelerator_config;

	// Get config data struct for lenet
	accelerator_config = XConv1_LookupConfig(XPAR_XCONV1_0_DEVICE_ID);
	if(!accelerator_config)
	{
		xil_printf("No acc config found!\n");
		return 1;
	}
	else
	{
		xil_printf("Got acc config\n");
	}

	// Using config object to initialize the accelerator object
	status = XConv1_CfgInitialize(&accelerator, accelerator_config);

	if(status != XST_SUCCESS)
	{
		xil_printf("Initialization of acc failed\n");
	}
	else
	{
		xil_printf("Initialization of acc successful\n");
	}

	//Initialize timer object
	status = XTmrCtr_Initialize(&timer, TMRCTR_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		xil_printf("Timer init fail\n");
		return XST_FAILURE;
	}

	status = XTmrCtr_SelfTest(&timer, 0);
	if (status != XST_SUCCESS)
	{
		xil_printf("Timer self test fail\n");
		return XST_FAILURE;
	}


    cleanup_platform();
    return 0;
}

