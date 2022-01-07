#include "ap_int.h"
#include <assert.h>
#include <ap_axi_sdata.h>
typedef ap_axiu<32,4,5,5> AXI_VAL;

void wrapped_mmult_hw(AXI_VAL in_A[256], AXI_VAL in_B[256], AXI_VAL out_res[256])
{
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE axis port=in_A bundle=bus_A
#pragma HLS INTERFACE axis port=in_B bundle=bus_B
#pragma HLS INTERFACE axis port=out_res bundle=bus_res

	for(int j=0; j < 356; j++)
	{
		float tmp = 0;
		for (ap_uint<9> i = 0; i < 256; i++)
			{
				tmp = A[i]*B[i];
			}
		res[j] += tmp;
	}
}
