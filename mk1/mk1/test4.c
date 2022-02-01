void test_scalaire (float A[256], float B[256], float res[16])
{

#pragma HLS INTERFACE m_axi port=A bundle=bus_A
#pragma HLS INTERFACE m_axi port=B bundle=bus_B
#pragma HLS INTERFACE m_axi port=res bundle=bus_res
#pragma HLS INTERFACE s_axilite port=return bundle=control

	float tmp[256];
	float tmp1 = 0, tmp2 = 0;
	int pile_iteration = 0;

	main_loop:for (int i = 0; i < 256; i++)
	{
#pragma HLS PIPELINE II=9

		tmp2 = A[i]*B[i];
		tmp1 += tmp2;
		pile_iteration += i;
	}
	for (int i = 0; i < 8; i++)
	{
		res[i] = tmp1;
	}
	res[8] = (float)(pile_iteration);
}
