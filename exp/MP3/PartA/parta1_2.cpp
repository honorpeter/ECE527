#include "parta.h"

void parta1_2(int *A, int *B, int *C,
			 int mA, int nA, int mB,
			 int nB, int mC, int nC)
{

	for_c_row : for(int i = 0; i < mC; i++)
	{
		for_c_col : for(int j = 0; j < nC; j++)
		{
			#pragma HLS PIPELINE II=1
			for_common : for(int k = 0; k < nA; k++)
			{
				C[i*nC+j] += A[i*nA+k]*B[k*nB+j];
			}
		}
	}
}
