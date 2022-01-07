// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu Dec 30 15:25:27 2021
// Host        : glomet-fixe running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/projet_m2/mk1/mk1_implement/mk1_implement.gen/sources_1/bd/design_1/ip/design_1_comp_32_0_0/design_1_comp_32_0_0_sim_netlist.v
// Design      : design_1_comp_32_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_comp_32_0_0,comp_32,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "comp_32,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module design_1_comp_32_0_0
   (clk,
    rst,
    res);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output res;

  wire clk;
  wire res;
  wire rst;

  design_1_comp_32_0_0_comp_32 U0
       (.clk(clk),
        .res(res),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "comp_32" *) 
module design_1_comp_32_0_0_comp_32
   (res,
    rst,
    clk);
  output res;
  input rst;
  input clk;

  wire clk;
  wire \comp1[5]_i_1_n_0 ;
  wire \comp1[9]_i_1_n_0 ;
  wire [9:0]comp1_reg;
  wire comp2;
  wire \comp2[5]_i_1_n_0 ;
  wire \comp2[9]_i_3_n_0 ;
  wire [9:0]comp2_reg;
  wire comp3;
  wire \comp3[5]_i_3_n_0 ;
  wire \comp3[5]_i_4_n_0 ;
  wire \comp3[5]_i_5_n_0 ;
  wire [5:0]comp3_reg;
  wire [5:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire [9:0]p_0_in__1;
  wire res;
  wire res_s_i_1_n_0;
  wire res_s_i_2_n_0;
  wire res_s_i_3_n_0;
  wire res_s_i_4_n_0;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \comp1[0]_i_1 
       (.I0(comp1_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \comp1[1]_i_1 
       (.I0(comp1_reg[0]),
        .I1(comp1_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \comp1[2]_i_1 
       (.I0(comp1_reg[2]),
        .I1(comp1_reg[0]),
        .I2(comp1_reg[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \comp1[3]_i_1 
       (.I0(comp1_reg[3]),
        .I1(comp1_reg[1]),
        .I2(comp1_reg[0]),
        .I3(comp1_reg[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \comp1[4]_i_1 
       (.I0(comp1_reg[4]),
        .I1(comp1_reg[2]),
        .I2(comp1_reg[0]),
        .I3(comp1_reg[1]),
        .I4(comp1_reg[3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \comp1[5]_i_1 
       (.I0(comp1_reg[5]),
        .I1(comp1_reg[4]),
        .I2(comp1_reg[2]),
        .I3(comp1_reg[0]),
        .I4(comp1_reg[1]),
        .I5(comp1_reg[3]),
        .O(\comp1[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \comp1[6]_i_1 
       (.I0(comp1_reg[6]),
        .I1(res_s_i_4_n_0),
        .I2(comp1_reg[5]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \comp1[7]_i_1 
       (.I0(comp1_reg[7]),
        .I1(comp1_reg[5]),
        .I2(res_s_i_4_n_0),
        .I3(comp1_reg[6]),
        .O(p_0_in__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \comp1[8]_i_1 
       (.I0(comp1_reg[8]),
        .I1(comp1_reg[6]),
        .I2(comp1_reg[7]),
        .I3(comp1_reg[5]),
        .I4(res_s_i_4_n_0),
        .O(p_0_in__1[8]));
  LUT4 #(
    .INIT(16'h111F)) 
    \comp1[9]_i_1 
       (.I0(res_s_i_4_n_0),
        .I1(\comp3[5]_i_5_n_0 ),
        .I2(\comp3[5]_i_4_n_0 ),
        .I3(\comp3[5]_i_3_n_0 ),
        .O(\comp1[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \comp1[9]_i_2 
       (.I0(comp1_reg[9]),
        .I1(res_s_i_4_n_0),
        .I2(comp1_reg[5]),
        .I3(comp1_reg[7]),
        .I4(comp1_reg[6]),
        .I5(comp1_reg[8]),
        .O(p_0_in__1[9]));
  FDCE \comp1_reg[0] 
       (.C(clk),
        .CE(\comp1[9]_i_1_n_0 ),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__1[0]),
        .Q(comp1_reg[0]));
  FDCE \comp1_reg[1] 
       (.C(clk),
        .CE(\comp1[9]_i_1_n_0 ),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__1[1]),
        .Q(comp1_reg[1]));
  FDCE \comp1_reg[2] 
       (.C(clk),
        .CE(\comp1[9]_i_1_n_0 ),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__1[2]),
        .Q(comp1_reg[2]));
  FDCE \comp1_reg[3] 
       (.C(clk),
        .CE(\comp1[9]_i_1_n_0 ),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__1[3]),
        .Q(comp1_reg[3]));
  FDCE \comp1_reg[4] 
       (.C(clk),
        .CE(\comp1[9]_i_1_n_0 ),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__1[4]),
        .Q(comp1_reg[4]));
  FDCE \comp1_reg[5] 
       (.C(clk),
        .CE(\comp1[9]_i_1_n_0 ),
        .CLR(res_s_i_2_n_0),
        .D(\comp1[5]_i_1_n_0 ),
        .Q(comp1_reg[5]));
  FDCE \comp1_reg[6] 
       (.C(clk),
        .CE(\comp1[9]_i_1_n_0 ),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__1[6]),
        .Q(comp1_reg[6]));
  FDCE \comp1_reg[7] 
       (.C(clk),
        .CE(\comp1[9]_i_1_n_0 ),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__1[7]),
        .Q(comp1_reg[7]));
  FDCE \comp1_reg[8] 
       (.C(clk),
        .CE(\comp1[9]_i_1_n_0 ),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__1[8]),
        .Q(comp1_reg[8]));
  FDCE \comp1_reg[9] 
       (.C(clk),
        .CE(\comp1[9]_i_1_n_0 ),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__1[9]),
        .Q(comp1_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \comp2[0]_i_1 
       (.I0(comp2_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \comp2[1]_i_1 
       (.I0(comp2_reg[0]),
        .I1(comp2_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \comp2[2]_i_1 
       (.I0(comp2_reg[2]),
        .I1(comp2_reg[0]),
        .I2(comp2_reg[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \comp2[3]_i_1 
       (.I0(comp2_reg[3]),
        .I1(comp2_reg[1]),
        .I2(comp2_reg[0]),
        .I3(comp2_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \comp2[4]_i_1 
       (.I0(comp2_reg[4]),
        .I1(comp2_reg[2]),
        .I2(comp2_reg[0]),
        .I3(comp2_reg[1]),
        .I4(comp2_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \comp2[5]_i_1 
       (.I0(comp2_reg[5]),
        .I1(comp2_reg[4]),
        .I2(comp2_reg[2]),
        .I3(comp2_reg[0]),
        .I4(comp2_reg[1]),
        .I5(comp2_reg[3]),
        .O(\comp2[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \comp2[6]_i_1 
       (.I0(comp2_reg[6]),
        .I1(\comp3[5]_i_4_n_0 ),
        .I2(comp2_reg[5]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \comp2[7]_i_1 
       (.I0(comp2_reg[7]),
        .I1(comp2_reg[5]),
        .I2(\comp3[5]_i_4_n_0 ),
        .I3(comp2_reg[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \comp2[8]_i_1 
       (.I0(comp2_reg[8]),
        .I1(comp2_reg[6]),
        .I2(\comp3[5]_i_4_n_0 ),
        .I3(comp2_reg[5]),
        .I4(comp2_reg[7]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'hF111F111F1110000)) 
    \comp2[9]_i_1 
       (.I0(\comp3[5]_i_4_n_0 ),
        .I1(\comp3[5]_i_3_n_0 ),
        .I2(comp3_reg[5]),
        .I3(\comp2[9]_i_3_n_0 ),
        .I4(\comp3[5]_i_5_n_0 ),
        .I5(res_s_i_4_n_0),
        .O(comp2));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \comp2[9]_i_2 
       (.I0(comp2_reg[9]),
        .I1(comp2_reg[7]),
        .I2(comp2_reg[5]),
        .I3(\comp3[5]_i_4_n_0 ),
        .I4(comp2_reg[6]),
        .I5(comp2_reg[8]),
        .O(p_0_in__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \comp2[9]_i_3 
       (.I0(comp3_reg[4]),
        .I1(comp3_reg[3]),
        .I2(comp3_reg[1]),
        .I3(comp3_reg[0]),
        .I4(comp3_reg[2]),
        .O(\comp2[9]_i_3_n_0 ));
  FDCE \comp2_reg[0] 
       (.C(clk),
        .CE(comp2),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__0[0]),
        .Q(comp2_reg[0]));
  FDCE \comp2_reg[1] 
       (.C(clk),
        .CE(comp2),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__0[1]),
        .Q(comp2_reg[1]));
  FDCE \comp2_reg[2] 
       (.C(clk),
        .CE(comp2),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__0[2]),
        .Q(comp2_reg[2]));
  FDCE \comp2_reg[3] 
       (.C(clk),
        .CE(comp2),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__0[3]),
        .Q(comp2_reg[3]));
  FDCE \comp2_reg[4] 
       (.C(clk),
        .CE(comp2),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__0[4]),
        .Q(comp2_reg[4]));
  FDCE \comp2_reg[5] 
       (.C(clk),
        .CE(comp2),
        .CLR(res_s_i_2_n_0),
        .D(\comp2[5]_i_1_n_0 ),
        .Q(comp2_reg[5]));
  FDCE \comp2_reg[6] 
       (.C(clk),
        .CE(comp2),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__0[6]),
        .Q(comp2_reg[6]));
  FDCE \comp2_reg[7] 
       (.C(clk),
        .CE(comp2),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__0[7]),
        .Q(comp2_reg[7]));
  FDCE \comp2_reg[8] 
       (.C(clk),
        .CE(comp2),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__0[8]),
        .Q(comp2_reg[8]));
  FDCE \comp2_reg[9] 
       (.C(clk),
        .CE(comp2),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in__0[9]),
        .Q(comp2_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \comp3[0]_i_1 
       (.I0(comp3_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \comp3[1]_i_1 
       (.I0(comp3_reg[0]),
        .I1(comp3_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \comp3[2]_i_1 
       (.I0(comp3_reg[2]),
        .I1(comp3_reg[0]),
        .I2(comp3_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \comp3[3]_i_1 
       (.I0(comp3_reg[3]),
        .I1(comp3_reg[1]),
        .I2(comp3_reg[0]),
        .I3(comp3_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \comp3[4]_i_1 
       (.I0(comp3_reg[2]),
        .I1(comp3_reg[0]),
        .I2(comp3_reg[1]),
        .I3(comp3_reg[3]),
        .I4(comp3_reg[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hEEE0)) 
    \comp3[5]_i_1 
       (.I0(\comp3[5]_i_3_n_0 ),
        .I1(\comp3[5]_i_4_n_0 ),
        .I2(\comp3[5]_i_5_n_0 ),
        .I3(res_s_i_4_n_0),
        .O(comp3));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \comp3[5]_i_2 
       (.I0(comp3_reg[5]),
        .I1(comp3_reg[2]),
        .I2(comp3_reg[0]),
        .I3(comp3_reg[1]),
        .I4(comp3_reg[3]),
        .I5(comp3_reg[4]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \comp3[5]_i_3 
       (.I0(comp2_reg[7]),
        .I1(comp2_reg[6]),
        .I2(comp2_reg[5]),
        .I3(comp2_reg[8]),
        .I4(comp2_reg[9]),
        .O(\comp3[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \comp3[5]_i_4 
       (.I0(comp2_reg[3]),
        .I1(comp2_reg[1]),
        .I2(comp2_reg[0]),
        .I3(comp2_reg[2]),
        .I4(comp2_reg[4]),
        .O(\comp3[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \comp3[5]_i_5 
       (.I0(comp1_reg[7]),
        .I1(comp1_reg[6]),
        .I2(comp1_reg[5]),
        .I3(comp1_reg[8]),
        .I4(comp1_reg[9]),
        .O(\comp3[5]_i_5_n_0 ));
  FDCE \comp3_reg[0] 
       (.C(clk),
        .CE(comp3),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in[0]),
        .Q(comp3_reg[0]));
  FDCE \comp3_reg[1] 
       (.C(clk),
        .CE(comp3),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in[1]),
        .Q(comp3_reg[1]));
  FDCE \comp3_reg[2] 
       (.C(clk),
        .CE(comp3),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in[2]),
        .Q(comp3_reg[2]));
  FDCE \comp3_reg[3] 
       (.C(clk),
        .CE(comp3),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in[3]),
        .Q(comp3_reg[3]));
  FDCE \comp3_reg[4] 
       (.C(clk),
        .CE(comp3),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in[4]),
        .Q(comp3_reg[4]));
  FDCE \comp3_reg[5] 
       (.C(clk),
        .CE(comp3),
        .CLR(res_s_i_2_n_0),
        .D(p_0_in[5]),
        .Q(comp3_reg[5]));
  LUT6 #(
    .INIT(64'hFFFFBFFF00004000)) 
    res_s_i_1
       (.I0(res_s_i_3_n_0),
        .I1(comp1_reg[5]),
        .I2(comp1_reg[8]),
        .I3(comp1_reg[9]),
        .I4(res_s_i_4_n_0),
        .I5(res),
        .O(res_s_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    res_s_i_2
       (.I0(rst),
        .O(res_s_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    res_s_i_3
       (.I0(comp1_reg[6]),
        .I1(comp1_reg[7]),
        .O(res_s_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    res_s_i_4
       (.I0(comp1_reg[3]),
        .I1(comp1_reg[1]),
        .I2(comp1_reg[0]),
        .I3(comp1_reg[2]),
        .I4(comp1_reg[4]),
        .O(res_s_i_4_n_0));
  FDCE res_s_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(res_s_i_2_n_0),
        .D(res_s_i_1_n_0),
        .Q(res));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
