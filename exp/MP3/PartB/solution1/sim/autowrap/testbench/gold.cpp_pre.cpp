# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/gold.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/gold.cpp"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/partb.h" 1



void partb(int A[100][100], int B[100][100], int C[100][100],
     int mA, int nA, int mB,
     int nB, int mC, int nC);

void gold(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);
# 2 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/gold.cpp" 2

void gold(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC)
{
 for(int i = 0; i < mC; i++)
 {
  for(int j = 0; j < nC; j++)
  {
   C[i][j] = 0;
   for(int k = 0; k < nA; k++)
   {
    C[i][j] += A[i][k]*B[k][j];
   }
  }
 }
}
