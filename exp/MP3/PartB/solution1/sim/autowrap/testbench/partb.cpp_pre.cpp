# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/partb.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/partb.cpp"
# 1 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/partb.h" 1



void partb(int A[100][100], int B[100][100], int C[100][100],
     int mA, int nA, int mB,
     int nB, int mC, int nC);

void gold(int A[100][100], int B[100][100], int C[100][100],
    int mA, int nA, int mB,
    int nB, int mC, int nC);
# 2 "C:/Users/Patel/Downloads/ECE527/exp/MP3/PartB/partb.cpp" 2

void partb(int A[100][100], int B[100][100], int C[100][100],
     int mA, int nA, int mB,
     int nB, int mC, int nC)
{
 int A_i[100][100];
 int B_i[100][100];
 int C_i[100][100];

 for(int i = 0; i < mA; i++)
 {
  for(int j = 0; j < nA; j++)
  {
   A_i[i][j] = A[i][j];
  }
 }

 for(int i = 0; i < mB; i++)
 {
  for(int j = 0; j < nB; j++)
  {
   B_i[i][j] = B[i][j];
  }
 }

 for(int i = 0; i < mC; i++)
 {
  for(int j = 0; j < nC; j++)
  {
   C_i[i][j] = 0;
  }
 }


 for_c_row : for(int i = 0; i < mC; i++)
  {
   for_c_col : for(int j = 0; j < nC; j++)
   {
    int sum = 0;
    for(int k = 0; k < nA; k++)
    {
     sum += A_i[i][k]*B_i[k][j];
    }
    C_i[i][j] = sum;
   }
  }

 for(int i = 0; i < mC; i++)
 {
  for(int j = 0; j < nC; j++)
  {
   C[i][j] = C_i[i][j];
  }
 }
}
