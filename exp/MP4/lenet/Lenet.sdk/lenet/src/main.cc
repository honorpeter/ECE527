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
#include <iostream>
#include <cmath>
#include <algorithm>
#include <fstream>
#include <vector>
#include <array>

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
float conv1_output_soft[6][28][28] = {0};
float pool2_output[6][14][14] = {0};

float conv3_weights[16][6][5][5] = {0};
float conv3_bias[16] = {0};
float conv3_output[16][10][10] = {0};

float pool4_output[16][5][5] = {0};

float conv5_weights[120][16][5][5] = {0};
float conv5_bias[120] = {0};
float conv5_output[120][1][1] = {0};

float fc6_weights[10][120][1][1] = {0};
float fc6_bias[10] = {0};
float fc6_output[10] = {0};

using namespace std;

// Parse MNIST test images
int parse_mnist_images(const char* filename, unsigned char *images)
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

// Parse MNIST test image labels
int parse_mnist_labels(const char* filename, unsigned char *labels)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;
    unsigned int header[2];

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening mnist label data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist labels data file\n\r");
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

	Res = f_read(&fil, (void*)header, sizeof(unsigned int)*2, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file\n\r");
	}

	Res = f_read(&fil, (void*)labels, sizeof(unsigned char)*NUM_TESTS, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read labels from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read labels from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close labels file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed labels file\n\r");
	}

	return 0;


}

// Parse parameter file and load it in to the arrays
int parse_parameters(const char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening parameter file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened parameter file\n\r");
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

	Res = f_read(&fil, (void*)***conv1_weights, sizeof(float)*150, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv1_weights from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv1_weights from file\n\r");
	}

	Res = f_read(&fil, (void*)conv1_bias, sizeof(float)*6, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv1_bias from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv1_bias from file\n\r");
	}

	Res = f_read(&fil, (void*)***conv3_weights, sizeof(float)*2400, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv3_weights from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv3_weights from file\n\r");
	}

	Res = f_read(&fil, (void*)conv3_bias, sizeof(float)*16, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv3_bias from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv3_bias from file\n\r");
	}

	Res = f_read(&fil, (void*)***conv5_weights, sizeof(float)*48000, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv5_weights from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv5_weights from file\n\r");
	}

	Res = f_read(&fil, (void*)conv5_bias, sizeof(float)*120, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv5_bias from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv5_bias from file\n\r");
	}

	Res = f_read(&fil, (void*)***fc6_weights, sizeof(float)*1200, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read fc6_weights from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read fc6_weights from file\n\r");
	}

	Res = f_read(&fil, (void*)fc6_bias, sizeof(float)*10, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read fc6_bias from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read fc6_bias from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close labels file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed labels file\n\r");
	}

	return 0;

}

// Fetch a single image to be processed.
//
void get_image(unsigned char *images, unsigned int idx, float image[1][32][32])
{
    for(int i = 0; i < 32; i++)
        for(int j = 0; j < 32; j++)
        {
            if (i < 2 || i > 29 || j < 2 || j > 29)
                image[0][i][j] = -1.0;
            else
                image[0][i][j] = images[idx*28*28 + (i-2)*28 + j-2] / 255.0 * 2.0 - 1.0;
        }
}

void convolution1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28])
{
    for(int co = 0; co < 6; co++)
        for(int h = 0; h < 28; h++)
            for(int w = 0; w < 28; w++)
            {
                float sum = 0;
                for(int i = h, m = 0; i < (h + 5); i++, m++)
                {
                    for(int j = w, n = 0; j < (w + 5); j++, n++)
                        sum += weights[co][0][m][n] * input[0][i][j];
                }
                output[co][h][w] = sum + bias[co];
            }
}

void verify_conv1()
{
    for(int i = 0; i < 6; i++)
    {
    	for(int j = 0; j < 28; j++)
    	{
    		for(int k = 0; k < 28; k++)
    		{
    			if(conv1_output_soft[i][j][k] != conv1_output[i][j][k])
    			{
    				cout << "Failed at " << i << j << k << endl;
    			}
    		}
    	}
    }
    cout << "Passed" << endl;
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

	cout<<"Starting LeNet\n\r";

	cout<<"Mounting SD\n\r";
	FRESULT Res;
	TCHAR *Path = "0:/";
    Res = f_mount(&fatfs, Path, 0);
	if (Res != FR_OK)
	{
		xil_printf("Failed to open filesystem\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Mounted card\n\r");
	}

	//cout<<"Creating test data matrices\n\r";
    //cout<<"Creating layer matrices\n\r";

	cout<<"Parsing MNIST images\n\r";
	parse_mnist_images("images.bin", images);
	//xil_printf("Back from image load\n\r");

	cout<<"Parsing MNIST labels\n\r";
	parse_mnist_labels("labels.bin", labels);

	cout<<"Parsing parameters\n\r";
	parse_parameters("params.bin");

	//Flush caches!
	// Make sure that all writes have propogated to DRAM,
	// since accelerator is not cache coherent
	Xil_DCacheFlush();

	//Set the offset address on the accelerator
	//Note that src_a is a pointer to the data in the array
	//The pointer is an address which is being typecast to u32
	//so that we can send the address over AXI
	XConv1_Set_input_r(&accelerator, (u32)image);
	XConv1_Set_weights(&accelerator, (u32)conv1_weights);
	XConv1_Set_bias(&accelerator, (u32)conv1_bias);
	XConv1_Set_output_r(&accelerator, (u32)conv1_output);

	//Read back the offsets to confirm they were correctly written
	u32 offset_input_r = XConv1_Get_input_r(&accelerator);
	u32 offset_weights = XConv1_Get_weights(&accelerator);
	u32 offset_bias = XConv1_Get_bias(&accelerator);
	u32 offset_output_r = XConv1_Get_output_r(&accelerator);

	xil_printf("Base offset set as %x %x %x %x on accelerator, from proc as %x %x %x %x\n", offset_input_r, offset_weights, offset_bias, offset_output_r, (u32)image, (u32)conv1_weights, (u32)conv1_bias, (u32)conv1_output);
	xil_printf("Starting acc\n");

	//Reset the timer
	XTmrCtr_Reset(&timer, 0);
	XTmrCtr_ClearStats(&timer);
	XTmrCtr_Start(&timer, 0);
	//Start the timer
	timerCount_Start = XTmrCtr_GetValue(&timer, 0);

	//Start the accelerator
	XConv1_Start(&accelerator);
	//Wait till the accelerator is not done
	while(!XConv1_IsDone(&accelerator))
	{
		xil_printf("Waiting on acc\n");
	}

	//Stop the timer since the accelerator is done
	timerCount_Stop = XTmrCtr_GetValue(&timer, 0);
	xil_printf("Accelerator Done\n");

	//Display time
	xil_printf("Time Accelerator: %d\n", (timerCount_Stop - timerCount_Start));

	//Get the value returned by the accelerator
	//This is the value passed by the "return" at the end of your HLS kernel
	//It is not necessary unless you pass back something useful, like a debug value
	ret = XConv1_Get_return(&accelerator);
	xil_printf("Return acc flag %x \n", ret);

	//Sanity Check
	convolution1(image, conv1_weights, conv1_bias, conv1_output_soft);
	verify_conv1();

	xil_printf("Test done\n");


    cleanup_platform();
    return 0;
}

