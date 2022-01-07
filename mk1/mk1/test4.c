void test_scalaire (float A[256], float B[256], float res[1])
{
	//res est mis comme un vecteur de taille 1 afin d'obtenir un port AXI


#pragma HLS INTERFACE m_axi port=A bundle=bus_A
#pragma HLS INTERFACE m_axi port=B bundle=bus_B
#pragma HLS INTERFACE m_axi port=res bundle=bus_res
#pragma HLS INTERFACE s_axilite port=return bundle=control

	float tmp[256];
	float tmp1 = 0, tmp2 = 0;

	for (int i = 0; i < 256; i++)
	{
#pragma HLS PIPELINE II=6
		tmp2 = A[i]*B[i];
		tmp1 = tmp1 + tmp2;
	}
	res[0] = tmp1;
}
