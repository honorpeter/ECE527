# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta1_6.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta1_6.cpp"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta.h" 1




void unop_mm(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);

void gold(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);

void parta1_2(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);

void parta1_3(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);

void parta1_4(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);

void parta1_5(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);

void parta1_6(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);
# 2 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartA/parta1_6.cpp" 2

void parta1_6(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC)
{
 for_c_row : for(int i = 0; i < mC; i++)
 {
#pragma HLS interface ap_fifo port=C[i]
  for_c_col : for(int j = 0; j < nC; j++)
  {
#pragma HLS interface ap_fifo port=A[i]
   for_common : for(int k = 0; k < nA; k++)
   {
#pragma HLS unroll factor=4
    C[i][j] += A[i][k]*B[k][j];
   }
  }
 }
}
