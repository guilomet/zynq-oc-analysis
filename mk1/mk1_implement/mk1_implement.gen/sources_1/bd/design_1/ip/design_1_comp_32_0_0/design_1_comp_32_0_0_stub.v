// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Dec 30 15:25:27 2021
// Host        : glomet-fixe running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/projet_m2/mk1/mk1_implement/mk1_implement.gen/sources_1/bd/design_1/ip/design_1_comp_32_0_0/design_1_comp_32_0_0_stub.v
// Design      : design_1_comp_32_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "comp_32,Vivado 2021.1" *)
module design_1_comp_32_0_0(clk, rst, res)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,res" */;
  input clk;
  input rst;
  output res;
endmodule
