void test_scalaire (float A[256], float B[256], float res[9])
{

#pragma HLS INTERFACE m_axi port=A bundle=bus_A
#pragma HLS INTERFACE m_axi port=B bundle=bus_B
#pragma HLS INTERFACE m_axi port=res bundle=bus_res
#pragma HLS INTERFACE s_axilite port=return bundle=control

	float tmp[256];
	float tmp1 = 0, tmp2 = 0;
	int incre = 0;

	loop_1:for (int i = 0; i < 256; i++)
	{
#pragma HLS PIPELINE II=11
		tmp2 = A[i]*B[i];
		incre += i+1;
		tmp1 = tmp1 + tmp2;
	}

	res[0] = tmp1;
	res[1] = tmp1;
	res[2] = tmp1;
	res[3] = tmp1;
	res[4] = tmp1;
	res[5] = tmp1;
	res[6] = tmp1;
	res[7] = tmp1;
	res[8] = incre;
}

