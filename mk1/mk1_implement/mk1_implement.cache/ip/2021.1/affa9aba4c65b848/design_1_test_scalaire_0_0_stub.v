// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Nov 10 11:46:25 2021
// Host        : glomet-fixe running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_test_scalaire_0_0_stub.v
// Design      : design_1_test_scalaire_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "test_scalaire,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_bus_A_AWADDR, m_axi_bus_A_AWLEN, 
  m_axi_bus_A_AWSIZE, m_axi_bus_A_AWBURST, m_axi_bus_A_AWLOCK, m_axi_bus_A_AWREGION, 
  m_axi_bus_A_AWCACHE, m_axi_bus_A_AWPROT, m_axi_bus_A_AWQOS, m_axi_bus_A_AWVALID, 
  m_axi_bus_A_AWREADY, m_axi_bus_A_WDATA, m_axi_bus_A_WSTRB, m_axi_bus_A_WLAST, 
  m_axi_bus_A_WVALID, m_axi_bus_A_WREADY, m_axi_bus_A_BRESP, m_axi_bus_A_BVALID, 
  m_axi_bus_A_BREADY, m_axi_bus_A_ARADDR, m_axi_bus_A_ARLEN, m_axi_bus_A_ARSIZE, 
  m_axi_bus_A_ARBURST, m_axi_bus_A_ARLOCK, m_axi_bus_A_ARREGION, m_axi_bus_A_ARCACHE, 
  m_axi_bus_A_ARPROT, m_axi_bus_A_ARQOS, m_axi_bus_A_ARVALID, m_axi_bus_A_ARREADY, 
  m_axi_bus_A_RDATA, m_axi_bus_A_RRESP, m_axi_bus_A_RLAST, m_axi_bus_A_RVALID, 
  m_axi_bus_A_RREADY, m_axi_bus_B_AWADDR, m_axi_bus_B_AWLEN, m_axi_bus_B_AWSIZE, 
  m_axi_bus_B_AWBURST, m_axi_bus_B_AWLOCK, m_axi_bus_B_AWREGION, m_axi_bus_B_AWCACHE, 
  m_axi_bus_B_AWPROT, m_axi_bus_B_AWQOS, m_axi_bus_B_AWVALID, m_axi_bus_B_AWREADY, 
  m_axi_bus_B_WDATA, m_axi_bus_B_WSTRB, m_axi_bus_B_WLAST, m_axi_bus_B_WVALID, 
  m_axi_bus_B_WREADY, m_axi_bus_B_BRESP, m_axi_bus_B_BVALID, m_axi_bus_B_BREADY, 
  m_axi_bus_B_ARADDR, m_axi_bus_B_ARLEN, m_axi_bus_B_ARSIZE, m_axi_bus_B_ARBURST, 
  m_axi_bus_B_ARLOCK, m_axi_bus_B_ARREGION, m_axi_bus_B_ARCACHE, m_axi_bus_B_ARPROT, 
  m_axi_bus_B_ARQOS, m_axi_bus_B_ARVALID, m_axi_bus_B_ARREADY, m_axi_bus_B_RDATA, 
  m_axi_bus_B_RRESP, m_axi_bus_B_RLAST, m_axi_bus_B_RVALID, m_axi_bus_B_RREADY, 
  m_axi_bus_res_AWADDR, m_axi_bus_res_AWLEN, m_axi_bus_res_AWSIZE, m_axi_bus_res_AWBURST, 
  m_axi_bus_res_AWLOCK, m_axi_bus_res_AWREGION, m_axi_bus_res_AWCACHE, 
  m_axi_bus_res_AWPROT, m_axi_bus_res_AWQOS, m_axi_bus_res_AWVALID, 
  m_axi_bus_res_AWREADY, m_axi_bus_res_WDATA, m_axi_bus_res_WSTRB, m_axi_bus_res_WLAST, 
  m_axi_bus_res_WVALID, m_axi_bus_res_WREADY, m_axi_bus_res_BRESP, m_axi_bus_res_BVALID, 
  m_axi_bus_res_BREADY, m_axi_bus_res_ARADDR, m_axi_bus_res_ARLEN, m_axi_bus_res_ARSIZE, 
  m_axi_bus_res_ARBURST, m_axi_bus_res_ARLOCK, m_axi_bus_res_ARREGION, 
  m_axi_bus_res_ARCACHE, m_axi_bus_res_ARPROT, m_axi_bus_res_ARQOS, 
  m_axi_bus_res_ARVALID, m_axi_bus_res_ARREADY, m_axi_bus_res_RDATA, m_axi_bus_res_RRESP, 
  m_axi_bus_res_RLAST, m_axi_bus_res_RVALID, m_axi_bus_res_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_bus_A_AWADDR[31:0],m_axi_bus_A_AWLEN[7:0],m_axi_bus_A_AWSIZE[2:0],m_axi_bus_A_AWBURST[1:0],m_axi_bus_A_AWLOCK[1:0],m_axi_bus_A_AWREGION[3:0],m_axi_bus_A_AWCACHE[3:0],m_axi_bus_A_AWPROT[2:0],m_axi_bus_A_AWQOS[3:0],m_axi_bus_A_AWVALID,m_axi_bus_A_AWREADY,m_axi_bus_A_WDATA[31:0],m_axi_bus_A_WSTRB[3:0],m_axi_bus_A_WLAST,m_axi_bus_A_WVALID,m_axi_bus_A_WREADY,m_axi_bus_A_BRESP[1:0],m_axi_bus_A_BVALID,m_axi_bus_A_BREADY,m_axi_bus_A_ARADDR[31:0],m_axi_bus_A_ARLEN[7:0],m_axi_bus_A_ARSIZE[2:0],m_axi_bus_A_ARBURST[1:0],m_axi_bus_A_ARLOCK[1:0],m_axi_bus_A_ARREGION[3:0],m_axi_bus_A_ARCACHE[3:0],m_axi_bus_A_ARPROT[2:0],m_axi_bus_A_ARQOS[3:0],m_axi_bus_A_ARVALID,m_axi_bus_A_ARREADY,m_axi_bus_A_RDATA[31:0],m_axi_bus_A_RRESP[1:0],m_axi_bus_A_RLAST,m_axi_bus_A_RVALID,m_axi_bus_A_RREADY,m_axi_bus_B_AWADDR[31:0],m_axi_bus_B_AWLEN[7:0],m_axi_bus_B_AWSIZE[2:0],m_axi_bus_B_AWBURST[1:0],m_axi_bus_B_AWLOCK[1:0],m_axi_bus_B_AWREGION[3:0],m_axi_bus_B_AWCACHE[3:0],m_axi_bus_B_AWPROT[2:0],m_axi_bus_B_AWQOS[3:0],m_axi_bus_B_AWVALID,m_axi_bus_B_AWREADY,m_axi_bus_B_WDATA[31:0],m_axi_bus_B_WSTRB[3:0],m_axi_bus_B_WLAST,m_axi_bus_B_WVALID,m_axi_bus_B_WREADY,m_axi_bus_B_BRESP[1:0],m_axi_bus_B_BVALID,m_axi_bus_B_BREADY,m_axi_bus_B_ARADDR[31:0],m_axi_bus_B_ARLEN[7:0],m_axi_bus_B_ARSIZE[2:0],m_axi_bus_B_ARBURST[1:0],m_axi_bus_B_ARLOCK[1:0],m_axi_bus_B_ARREGION[3:0],m_axi_bus_B_ARCACHE[3:0],m_axi_bus_B_ARPROT[2:0],m_axi_bus_B_ARQOS[3:0],m_axi_bus_B_ARVALID,m_axi_bus_B_ARREADY,m_axi_bus_B_RDATA[31:0],m_axi_bus_B_RRESP[1:0],m_axi_bus_B_RLAST,m_axi_bus_B_RVALID,m_axi_bus_B_RREADY,m_axi_bus_res_AWADDR[31:0],m_axi_bus_res_AWLEN[7:0],m_axi_bus_res_AWSIZE[2:0],m_axi_bus_res_AWBURST[1:0],m_axi_bus_res_AWLOCK[1:0],m_axi_bus_res_AWREGION[3:0],m_axi_bus_res_AWCACHE[3:0],m_axi_bus_res_AWPROT[2:0],m_axi_bus_res_AWQOS[3:0],m_axi_bus_res_AWVALID,m_axi_bus_res_AWREADY,m_axi_bus_res_WDATA[31:0],m_axi_bus_res_WSTRB[3:0],m_axi_bus_res_WLAST,m_axi_bus_res_WVALID,m_axi_bus_res_WREADY,m_axi_bus_res_BRESP[1:0],m_axi_bus_res_BVALID,m_axi_bus_res_BREADY,m_axi_bus_res_ARADDR[31:0],m_axi_bus_res_ARLEN[7:0],m_axi_bus_res_ARSIZE[2:0],m_axi_bus_res_ARBURST[1:0],m_axi_bus_res_ARLOCK[1:0],m_axi_bus_res_ARREGION[3:0],m_axi_bus_res_ARCACHE[3:0],m_axi_bus_res_ARPROT[2:0],m_axi_bus_res_ARQOS[3:0],m_axi_bus_res_ARVALID,m_axi_bus_res_ARREADY,m_axi_bus_res_RDATA[31:0],m_axi_bus_res_RRESP[1:0],m_axi_bus_res_RLAST,m_axi_bus_res_RVALID,m_axi_bus_res_RREADY" */;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_bus_A_AWADDR;
  output [7:0]m_axi_bus_A_AWLEN;
  output [2:0]m_axi_bus_A_AWSIZE;
  output [1:0]m_axi_bus_A_AWBURST;
  output [1:0]m_axi_bus_A_AWLOCK;
  output [3:0]m_axi_bus_A_AWREGION;
  output [3:0]m_axi_bus_A_AWCACHE;
  output [2:0]m_axi_bus_A_AWPROT;
  output [3:0]m_axi_bus_A_AWQOS;
  output m_axi_bus_A_AWVALID;
  input m_axi_bus_A_AWREADY;
  output [31:0]m_axi_bus_A_WDATA;
  output [3:0]m_axi_bus_A_WSTRB;
  output m_axi_bus_A_WLAST;
  output m_axi_bus_A_WVALID;
  input m_axi_bus_A_WREADY;
  input [1:0]m_axi_bus_A_BRESP;
  input m_axi_bus_A_BVALID;
  output m_axi_bus_A_BREADY;
  output [31:0]m_axi_bus_A_ARADDR;
  output [7:0]m_axi_bus_A_ARLEN;
  output [2:0]m_axi_bus_A_ARSIZE;
  output [1:0]m_axi_bus_A_ARBURST;
  output [1:0]m_axi_bus_A_ARLOCK;
  output [3:0]m_axi_bus_A_ARREGION;
  output [3:0]m_axi_bus_A_ARCACHE;
  output [2:0]m_axi_bus_A_ARPROT;
  output [3:0]m_axi_bus_A_ARQOS;
  output m_axi_bus_A_ARVALID;
  input m_axi_bus_A_ARREADY;
  input [31:0]m_axi_bus_A_RDATA;
  input [1:0]m_axi_bus_A_RRESP;
  input m_axi_bus_A_RLAST;
  input m_axi_bus_A_RVALID;
  output m_axi_bus_A_RREADY;
  output [31:0]m_axi_bus_B_AWADDR;
  output [7:0]m_axi_bus_B_AWLEN;
  output [2:0]m_axi_bus_B_AWSIZE;
  output [1:0]m_axi_bus_B_AWBURST;
  output [1:0]m_axi_bus_B_AWLOCK;
  output [3:0]m_axi_bus_B_AWREGION;
  output [3:0]m_axi_bus_B_AWCACHE;
  output [2:0]m_axi_bus_B_AWPROT;
  output [3:0]m_axi_bus_B_AWQOS;
  output m_axi_bus_B_AWVALID;
  input m_axi_bus_B_AWREADY;
  output [31:0]m_axi_bus_B_WDATA;
  output [3:0]m_axi_bus_B_WSTRB;
  output m_axi_bus_B_WLAST;
  output m_axi_bus_B_WVALID;
  input m_axi_bus_B_WREADY;
  input [1:0]m_axi_bus_B_BRESP;
  input m_axi_bus_B_BVALID;
  output m_axi_bus_B_BREADY;
  output [31:0]m_axi_bus_B_ARADDR;
  output [7:0]m_axi_bus_B_ARLEN;
  output [2:0]m_axi_bus_B_ARSIZE;
  output [1:0]m_axi_bus_B_ARBURST;
  output [1:0]m_axi_bus_B_ARLOCK;
  output [3:0]m_axi_bus_B_ARREGION;
  output [3:0]m_axi_bus_B_ARCACHE;
  output [2:0]m_axi_bus_B_ARPROT;
  output [3:0]m_axi_bus_B_ARQOS;
  output m_axi_bus_B_ARVALID;
  input m_axi_bus_B_ARREADY;
  input [31:0]m_axi_bus_B_RDATA;
  input [1:0]m_axi_bus_B_RRESP;
  input m_axi_bus_B_RLAST;
  input m_axi_bus_B_RVALID;
  output m_axi_bus_B_RREADY;
  output [31:0]m_axi_bus_res_AWADDR;
  output [7:0]m_axi_bus_res_AWLEN;
  output [2:0]m_axi_bus_res_AWSIZE;
  output [1:0]m_axi_bus_res_AWBURST;
  output [1:0]m_axi_bus_res_AWLOCK;
  output [3:0]m_axi_bus_res_AWREGION;
  output [3:0]m_axi_bus_res_AWCACHE;
  output [2:0]m_axi_bus_res_AWPROT;
  output [3:0]m_axi_bus_res_AWQOS;
  output m_axi_bus_res_AWVALID;
  input m_axi_bus_res_AWREADY;
  output [31:0]m_axi_bus_res_WDATA;
  output [3:0]m_axi_bus_res_WSTRB;
  output m_axi_bus_res_WLAST;
  output m_axi_bus_res_WVALID;
  input m_axi_bus_res_WREADY;
  input [1:0]m_axi_bus_res_BRESP;
  input m_axi_bus_res_BVALID;
  output m_axi_bus_res_BREADY;
  output [31:0]m_axi_bus_res_ARADDR;
  output [7:0]m_axi_bus_res_ARLEN;
  output [2:0]m_axi_bus_res_ARSIZE;
  output [1:0]m_axi_bus_res_ARBURST;
  output [1:0]m_axi_bus_res_ARLOCK;
  output [3:0]m_axi_bus_res_ARREGION;
  output [3:0]m_axi_bus_res_ARCACHE;
  output [2:0]m_axi_bus_res_ARPROT;
  output [3:0]m_axi_bus_res_ARQOS;
  output m_axi_bus_res_ARVALID;
  input m_axi_bus_res_ARREADY;
  input [31:0]m_axi_bus_res_RDATA;
  input [1:0]m_axi_bus_res_RRESP;
  input m_axi_bus_res_RLAST;
  input m_axi_bus_res_RVALID;
  output m_axi_bus_res_RREADY;
endmodule
