# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP4/ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet_acc.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP4/ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet_acc.cpp"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP4/ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet.h" 1
void convolution1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28]);
void conv1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28]);
# 2 "C:/Users/Patel/Downloads/ECE527/exp/MP4/ECE527_MP4_Tutorial_Files/Tutorial_Files/accelerator_hls/lenet_acc.cpp" 2

void store_input(float input[1][32][32], float input_oc[1][32][32])
{
 for(int i = 0; i < 32; i++)
 {
  for(int j = 0; j < 32; j++)
  {
   input_oc[0][i][j] = input[0][i][j];
  }
 }
}

void store_weights(float weights[6][1][5][5], float weights_oc[6][1][5][5])
{
 for(int i = 0; i < 6; i++)
 {
  for(int j = 0; j < 5; j ++)
  {
   for(int k = 0; k < 5; k++)
   {
    weights_oc[i][0][j][k] = weights[i][0][j][k];
   }
  }
 }
}

void conv1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28])
{
 float input_oc[1][32][32];
 for(int i = 0; i < 32; i++)
 {
  for(int j = 0; j < 32; j++)
  {
   input_oc[0][i][j] = input[0][i][j];
  }
 }
 float weights_oc[6][1][5][5];
 for(int i = 0; i < 6; i++)
 {
  for(int j = 0; j < 5; j ++)
  {
   for(int k = 0; k < 5; k++)
   {
    weights_oc[i][0][j][k] = weights[i][0][j][k];
   }
  }
 }
    for(int co = 0; co < 6; co++)
        for(int h = 0; h < 28; h++)
            for(int w = 0; w < 28; w++)
            {
                float sum = 0;

                for(int m = 0; m < (5); m++)
                {
#pragma HLS unroll factor = 5
                    for(int n = 0; n < 5; n++)
                    {
#pragma HLS PIPELINE II = 5
                        sum += weights_oc[co][0][m][n] * input_oc[0][h+m][w+n];
                    }
                }
#pragma HLS PIPELINE II = 13
                output[co][h][w] = sum + bias[co];
            }
}
