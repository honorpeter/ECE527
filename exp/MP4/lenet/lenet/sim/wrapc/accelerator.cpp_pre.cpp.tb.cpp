// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#1 "C:/Users/Patel/Downloads/ECE527/exp/MP4/ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/accelerator.cpp"
#1 "<built-in>"
#1 "<command-line>"
#1 "C:/Users/Patel/Downloads/ECE527/exp/MP4/ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/accelerator.cpp"
int vector_multiplier(volatile int a[64], volatile int b[64], volatile int c[64])
{
#pragma HLS INTERFACE m_axi depth=64 port=a offset=slave bundle=DATA_A
#pragma HLS INTERFACE m_axi depth=64 port=b offset=slave bundle=DATA_B
#pragma HLS INTERFACE m_axi depth=64 port=c offset=slave bundle=DATA_C
#pragma HLS INTERFACE s_axilite register port=return bundle=CTL
 for(int i=0; i<64; i++)
#pragma HLS PIPELINE
  c[i] = a[i] * b[i];

 return 0;
}
