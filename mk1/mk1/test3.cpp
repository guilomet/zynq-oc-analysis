#include "ap_int.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

struct float_s{
	float data;
	bool last;
};

void test_scalaire (hls::stream<float>& A, hls::stream<float>& B, hls::stream<float>& res, volatile bool & res_V_TLAST)
{
	//res est mis comme un vecteur de taille 1 afin d'obtenir un port AXI

#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE axis port=A
#pragma HLS INTERFACE axis port=B
#pragma HLS INTERFACE axis port=res
# pragma HLS INTERFACE mode = ap_none port = res_V_TLAST



	float tmp, aa, bb, tmpRes;
	float_s tmpA, tmpB;
	int i = 0;

	A >> aa;
	B >> bb;
	tmp = aa*bb;

	do
	{
#pragma HLS PIPELINE II=5
//		tmpA = A.read();
//		tmpB = B.read();
//		aa = tmpA.data;
		//bb = tmpB.data;

		tmpRes = tmpRes + tmp;

		A >> aa;
		B >> bb;
		tmp = aa*bb;

		i++;
	}
	while (i < 255);
	res_V_TLAST = 1;
	res << tmpRes;

}
