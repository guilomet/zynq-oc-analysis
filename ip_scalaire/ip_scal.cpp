void test_scalaire (float A[256][16], float B[256][16], float res[16])
{

#pragma HLS INTERFACE m_axi port=A bundle=bus_A
#pragma HLS INTERFACE m_axi port=B bundle=bus_B
#pragma HLS INTERFACE m_axi port=res bundle=bus_res
#pragma HLS INTERFACE s_axilite port=return bundle=control

	float tmp[256];
	float tmp1[16];
	int incre = 0;

	loop_1:for (int cpt = 0; cpt < 256*16; cpt++)
	{
		int i, j;
		i = cpt >> 4;
		j = cpt % 16;
#pragma HLS PIPELINE II=1
		float p  = A[i][j]*B[i][j];
		if (i == 0)
		{
			tmp1[j] = p;
		}
		else
		{
			tmp1[j] += p;
		}

	}

	for(int j = 0; j < 16; j++)
	{
		res[j] = tmp1[j];
	}
}

