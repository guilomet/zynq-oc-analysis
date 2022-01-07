// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:test_scalaire:1.1
// IP Revision: 2112301503

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_test_scalaire_0_1 (
  s_axi_control_AWADDR,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_ARADDR,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_bus_A_AWADDR,
  m_axi_bus_A_AWLEN,
  m_axi_bus_A_AWSIZE,
  m_axi_bus_A_AWBURST,
  m_axi_bus_A_AWLOCK,
  m_axi_bus_A_AWREGION,
  m_axi_bus_A_AWCACHE,
  m_axi_bus_A_AWPROT,
  m_axi_bus_A_AWQOS,
  m_axi_bus_A_AWVALID,
  m_axi_bus_A_AWREADY,
  m_axi_bus_A_WDATA,
  m_axi_bus_A_WSTRB,
  m_axi_bus_A_WLAST,
  m_axi_bus_A_WVALID,
  m_axi_bus_A_WREADY,
  m_axi_bus_A_BRESP,
  m_axi_bus_A_BVALID,
  m_axi_bus_A_BREADY,
  m_axi_bus_A_ARADDR,
  m_axi_bus_A_ARLEN,
  m_axi_bus_A_ARSIZE,
  m_axi_bus_A_ARBURST,
  m_axi_bus_A_ARLOCK,
  m_axi_bus_A_ARREGION,
  m_axi_bus_A_ARCACHE,
  m_axi_bus_A_ARPROT,
  m_axi_bus_A_ARQOS,
  m_axi_bus_A_ARVALID,
  m_axi_bus_A_ARREADY,
  m_axi_bus_A_RDATA,
  m_axi_bus_A_RRESP,
  m_axi_bus_A_RLAST,
  m_axi_bus_A_RVALID,
  m_axi_bus_A_RREADY,
  m_axi_bus_B_AWADDR,
  m_axi_bus_B_AWLEN,
  m_axi_bus_B_AWSIZE,
  m_axi_bus_B_AWBURST,
  m_axi_bus_B_AWLOCK,
  m_axi_bus_B_AWREGION,
  m_axi_bus_B_AWCACHE,
  m_axi_bus_B_AWPROT,
  m_axi_bus_B_AWQOS,
  m_axi_bus_B_AWVALID,
  m_axi_bus_B_AWREADY,
  m_axi_bus_B_WDATA,
  m_axi_bus_B_WSTRB,
  m_axi_bus_B_WLAST,
  m_axi_bus_B_WVALID,
  m_axi_bus_B_WREADY,
  m_axi_bus_B_BRESP,
  m_axi_bus_B_BVALID,
  m_axi_bus_B_BREADY,
  m_axi_bus_B_ARADDR,
  m_axi_bus_B_ARLEN,
  m_axi_bus_B_ARSIZE,
  m_axi_bus_B_ARBURST,
  m_axi_bus_B_ARLOCK,
  m_axi_bus_B_ARREGION,
  m_axi_bus_B_ARCACHE,
  m_axi_bus_B_ARPROT,
  m_axi_bus_B_ARQOS,
  m_axi_bus_B_ARVALID,
  m_axi_bus_B_ARREADY,
  m_axi_bus_B_RDATA,
  m_axi_bus_B_RRESP,
  m_axi_bus_B_RLAST,
  m_axi_bus_B_RVALID,
  m_axi_bus_B_RREADY,
  m_axi_bus_res_AWADDR,
  m_axi_bus_res_AWLEN,
  m_axi_bus_res_AWSIZE,
  m_axi_bus_res_AWBURST,
  m_axi_bus_res_AWLOCK,
  m_axi_bus_res_AWREGION,
  m_axi_bus_res_AWCACHE,
  m_axi_bus_res_AWPROT,
  m_axi_bus_res_AWQOS,
  m_axi_bus_res_AWVALID,
  m_axi_bus_res_AWREADY,
  m_axi_bus_res_WDATA,
  m_axi_bus_res_WSTRB,
  m_axi_bus_res_WLAST,
  m_axi_bus_res_WVALID,
  m_axi_bus_res_WREADY,
  m_axi_bus_res_BRESP,
  m_axi_bus_res_BVALID,
  m_axi_bus_res_BREADY,
  m_axi_bus_res_ARADDR,
  m_axi_bus_res_ARLEN,
  m_axi_bus_res_ARSIZE,
  m_axi_bus_res_ARBURST,
  m_axi_bus_res_ARLOCK,
  m_axi_bus_res_ARREGION,
  m_axi_bus_res_ARCACHE,
  m_axi_bus_res_ARPROT,
  m_axi_bus_res_ARQOS,
  m_axi_bus_res_ARVALID,
  m_axi_bus_res_ARREADY,
  m_axi_bus_res_RDATA,
  m_axi_bus_res_RRESP,
  m_axi_bus_res_RLAST,
  m_axi_bus_res_RVALID,
  m_axi_bus_res_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [5 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [5 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 125000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_TH\
READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:m_axi_bus_A:m_axi_bus_B:m_axi_bus_res, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWADDR" *)
output wire [31 : 0] m_axi_bus_A_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWLEN" *)
output wire [7 : 0] m_axi_bus_A_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWSIZE" *)
output wire [2 : 0] m_axi_bus_A_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWBURST" *)
output wire [1 : 0] m_axi_bus_A_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWLOCK" *)
output wire [1 : 0] m_axi_bus_A_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWREGION" *)
output wire [3 : 0] m_axi_bus_A_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWCACHE" *)
output wire [3 : 0] m_axi_bus_A_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWPROT" *)
output wire [2 : 0] m_axi_bus_A_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWQOS" *)
output wire [3 : 0] m_axi_bus_A_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWVALID" *)
output wire m_axi_bus_A_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWREADY" *)
input wire m_axi_bus_A_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A WDATA" *)
output wire [31 : 0] m_axi_bus_A_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A WSTRB" *)
output wire [3 : 0] m_axi_bus_A_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A WLAST" *)
output wire m_axi_bus_A_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A WVALID" *)
output wire m_axi_bus_A_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A WREADY" *)
input wire m_axi_bus_A_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A BRESP" *)
input wire [1 : 0] m_axi_bus_A_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A BVALID" *)
input wire m_axi_bus_A_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A BREADY" *)
output wire m_axi_bus_A_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARADDR" *)
output wire [31 : 0] m_axi_bus_A_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARLEN" *)
output wire [7 : 0] m_axi_bus_A_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARSIZE" *)
output wire [2 : 0] m_axi_bus_A_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARBURST" *)
output wire [1 : 0] m_axi_bus_A_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARLOCK" *)
output wire [1 : 0] m_axi_bus_A_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARREGION" *)
output wire [3 : 0] m_axi_bus_A_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARCACHE" *)
output wire [3 : 0] m_axi_bus_A_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARPROT" *)
output wire [2 : 0] m_axi_bus_A_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARQOS" *)
output wire [3 : 0] m_axi_bus_A_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARVALID" *)
output wire m_axi_bus_A_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARREADY" *)
input wire m_axi_bus_A_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A RDATA" *)
input wire [31 : 0] m_axi_bus_A_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A RRESP" *)
input wire [1 : 0] m_axi_bus_A_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A RLAST" *)
input wire m_axi_bus_A_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A RVALID" *)
input wire m_axi_bus_A_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_bus_A, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 125000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN /\
clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_A RREADY" *)
output wire m_axi_bus_A_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWADDR" *)
output wire [31 : 0] m_axi_bus_B_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWLEN" *)
output wire [7 : 0] m_axi_bus_B_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWSIZE" *)
output wire [2 : 0] m_axi_bus_B_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWBURST" *)
output wire [1 : 0] m_axi_bus_B_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWLOCK" *)
output wire [1 : 0] m_axi_bus_B_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWREGION" *)
output wire [3 : 0] m_axi_bus_B_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWCACHE" *)
output wire [3 : 0] m_axi_bus_B_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWPROT" *)
output wire [2 : 0] m_axi_bus_B_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWQOS" *)
output wire [3 : 0] m_axi_bus_B_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWVALID" *)
output wire m_axi_bus_B_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWREADY" *)
input wire m_axi_bus_B_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B WDATA" *)
output wire [31 : 0] m_axi_bus_B_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B WSTRB" *)
output wire [3 : 0] m_axi_bus_B_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B WLAST" *)
output wire m_axi_bus_B_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B WVALID" *)
output wire m_axi_bus_B_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B WREADY" *)
input wire m_axi_bus_B_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B BRESP" *)
input wire [1 : 0] m_axi_bus_B_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B BVALID" *)
input wire m_axi_bus_B_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B BREADY" *)
output wire m_axi_bus_B_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARADDR" *)
output wire [31 : 0] m_axi_bus_B_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARLEN" *)
output wire [7 : 0] m_axi_bus_B_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARSIZE" *)
output wire [2 : 0] m_axi_bus_B_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARBURST" *)
output wire [1 : 0] m_axi_bus_B_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARLOCK" *)
output wire [1 : 0] m_axi_bus_B_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARREGION" *)
output wire [3 : 0] m_axi_bus_B_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARCACHE" *)
output wire [3 : 0] m_axi_bus_B_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARPROT" *)
output wire [2 : 0] m_axi_bus_B_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARQOS" *)
output wire [3 : 0] m_axi_bus_B_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARVALID" *)
output wire m_axi_bus_B_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARREADY" *)
input wire m_axi_bus_B_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B RDATA" *)
input wire [31 : 0] m_axi_bus_B_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B RRESP" *)
input wire [1 : 0] m_axi_bus_B_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B RLAST" *)
input wire m_axi_bus_B_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B RVALID" *)
input wire m_axi_bus_B_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_bus_B, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 125000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN /\
clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_B RREADY" *)
output wire m_axi_bus_B_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWADDR" *)
output wire [31 : 0] m_axi_bus_res_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWLEN" *)
output wire [7 : 0] m_axi_bus_res_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWSIZE" *)
output wire [2 : 0] m_axi_bus_res_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWBURST" *)
output wire [1 : 0] m_axi_bus_res_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWLOCK" *)
output wire [1 : 0] m_axi_bus_res_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWREGION" *)
output wire [3 : 0] m_axi_bus_res_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWCACHE" *)
output wire [3 : 0] m_axi_bus_res_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWPROT" *)
output wire [2 : 0] m_axi_bus_res_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWQOS" *)
output wire [3 : 0] m_axi_bus_res_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWVALID" *)
output wire m_axi_bus_res_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWREADY" *)
input wire m_axi_bus_res_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res WDATA" *)
output wire [31 : 0] m_axi_bus_res_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res WSTRB" *)
output wire [3 : 0] m_axi_bus_res_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res WLAST" *)
output wire m_axi_bus_res_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res WVALID" *)
output wire m_axi_bus_res_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res WREADY" *)
input wire m_axi_bus_res_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res BRESP" *)
input wire [1 : 0] m_axi_bus_res_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res BVALID" *)
input wire m_axi_bus_res_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res BREADY" *)
output wire m_axi_bus_res_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARADDR" *)
output wire [31 : 0] m_axi_bus_res_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARLEN" *)
output wire [7 : 0] m_axi_bus_res_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARSIZE" *)
output wire [2 : 0] m_axi_bus_res_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARBURST" *)
output wire [1 : 0] m_axi_bus_res_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARLOCK" *)
output wire [1 : 0] m_axi_bus_res_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARREGION" *)
output wire [3 : 0] m_axi_bus_res_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARCACHE" *)
output wire [3 : 0] m_axi_bus_res_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARPROT" *)
output wire [2 : 0] m_axi_bus_res_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARQOS" *)
output wire [3 : 0] m_axi_bus_res_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARVALID" *)
output wire m_axi_bus_res_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARREADY" *)
input wire m_axi_bus_res_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res RDATA" *)
input wire [31 : 0] m_axi_bus_res_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res RRESP" *)
input wire [1 : 0] m_axi_bus_res_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res RLAST" *)
input wire m_axi_bus_res_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res RVALID" *)
input wire m_axi_bus_res_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_bus_res, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 125000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN\
 /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_bus_res RREADY" *)
output wire m_axi_bus_res_RREADY;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  test_scalaire #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(6),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_M_AXI_BUS_A_ID_WIDTH(1),
    .C_M_AXI_BUS_A_ADDR_WIDTH(32),
    .C_M_AXI_BUS_A_DATA_WIDTH(32),
    .C_M_AXI_BUS_A_AWUSER_WIDTH(1),
    .C_M_AXI_BUS_A_ARUSER_WIDTH(1),
    .C_M_AXI_BUS_A_WUSER_WIDTH(1),
    .C_M_AXI_BUS_A_RUSER_WIDTH(1),
    .C_M_AXI_BUS_A_BUSER_WIDTH(1),
    .C_M_AXI_BUS_A_USER_VALUE(32'H00000000),
    .C_M_AXI_BUS_A_PROT_VALUE(3'B000),
    .C_M_AXI_BUS_A_CACHE_VALUE(4'B0011),
    .C_M_AXI_BUS_B_ID_WIDTH(1),
    .C_M_AXI_BUS_B_ADDR_WIDTH(32),
    .C_M_AXI_BUS_B_DATA_WIDTH(32),
    .C_M_AXI_BUS_B_AWUSER_WIDTH(1),
    .C_M_AXI_BUS_B_ARUSER_WIDTH(1),
    .C_M_AXI_BUS_B_WUSER_WIDTH(1),
    .C_M_AXI_BUS_B_RUSER_WIDTH(1),
    .C_M_AXI_BUS_B_BUSER_WIDTH(1),
    .C_M_AXI_BUS_B_USER_VALUE(32'H00000000),
    .C_M_AXI_BUS_B_PROT_VALUE(3'B000),
    .C_M_AXI_BUS_B_CACHE_VALUE(4'B0011),
    .C_M_AXI_BUS_RES_ID_WIDTH(1),
    .C_M_AXI_BUS_RES_ADDR_WIDTH(32),
    .C_M_AXI_BUS_RES_DATA_WIDTH(32),
    .C_M_AXI_BUS_RES_AWUSER_WIDTH(1),
    .C_M_AXI_BUS_RES_ARUSER_WIDTH(1),
    .C_M_AXI_BUS_RES_WUSER_WIDTH(1),
    .C_M_AXI_BUS_RES_RUSER_WIDTH(1),
    .C_M_AXI_BUS_RES_BUSER_WIDTH(1),
    .C_M_AXI_BUS_RES_USER_VALUE(32'H00000000),
    .C_M_AXI_BUS_RES_PROT_VALUE(3'B000),
    .C_M_AXI_BUS_RES_CACHE_VALUE(4'B0011)
  ) inst (
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_bus_A_AWID(),
    .m_axi_bus_A_AWADDR(m_axi_bus_A_AWADDR),
    .m_axi_bus_A_AWLEN(m_axi_bus_A_AWLEN),
    .m_axi_bus_A_AWSIZE(m_axi_bus_A_AWSIZE),
    .m_axi_bus_A_AWBURST(m_axi_bus_A_AWBURST),
    .m_axi_bus_A_AWLOCK(m_axi_bus_A_AWLOCK),
    .m_axi_bus_A_AWREGION(m_axi_bus_A_AWREGION),
    .m_axi_bus_A_AWCACHE(m_axi_bus_A_AWCACHE),
    .m_axi_bus_A_AWPROT(m_axi_bus_A_AWPROT),
    .m_axi_bus_A_AWQOS(m_axi_bus_A_AWQOS),
    .m_axi_bus_A_AWUSER(),
    .m_axi_bus_A_AWVALID(m_axi_bus_A_AWVALID),
    .m_axi_bus_A_AWREADY(m_axi_bus_A_AWREADY),
    .m_axi_bus_A_WID(),
    .m_axi_bus_A_WDATA(m_axi_bus_A_WDATA),
    .m_axi_bus_A_WSTRB(m_axi_bus_A_WSTRB),
    .m_axi_bus_A_WLAST(m_axi_bus_A_WLAST),
    .m_axi_bus_A_WUSER(),
    .m_axi_bus_A_WVALID(m_axi_bus_A_WVALID),
    .m_axi_bus_A_WREADY(m_axi_bus_A_WREADY),
    .m_axi_bus_A_BID(1'B0),
    .m_axi_bus_A_BRESP(m_axi_bus_A_BRESP),
    .m_axi_bus_A_BUSER(1'B0),
    .m_axi_bus_A_BVALID(m_axi_bus_A_BVALID),
    .m_axi_bus_A_BREADY(m_axi_bus_A_BREADY),
    .m_axi_bus_A_ARID(),
    .m_axi_bus_A_ARADDR(m_axi_bus_A_ARADDR),
    .m_axi_bus_A_ARLEN(m_axi_bus_A_ARLEN),
    .m_axi_bus_A_ARSIZE(m_axi_bus_A_ARSIZE),
    .m_axi_bus_A_ARBURST(m_axi_bus_A_ARBURST),
    .m_axi_bus_A_ARLOCK(m_axi_bus_A_ARLOCK),
    .m_axi_bus_A_ARREGION(m_axi_bus_A_ARREGION),
    .m_axi_bus_A_ARCACHE(m_axi_bus_A_ARCACHE),
    .m_axi_bus_A_ARPROT(m_axi_bus_A_ARPROT),
    .m_axi_bus_A_ARQOS(m_axi_bus_A_ARQOS),
    .m_axi_bus_A_ARUSER(),
    .m_axi_bus_A_ARVALID(m_axi_bus_A_ARVALID),
    .m_axi_bus_A_ARREADY(m_axi_bus_A_ARREADY),
    .m_axi_bus_A_RID(1'B0),
    .m_axi_bus_A_RDATA(m_axi_bus_A_RDATA),
    .m_axi_bus_A_RRESP(m_axi_bus_A_RRESP),
    .m_axi_bus_A_RLAST(m_axi_bus_A_RLAST),
    .m_axi_bus_A_RUSER(1'B0),
    .m_axi_bus_A_RVALID(m_axi_bus_A_RVALID),
    .m_axi_bus_A_RREADY(m_axi_bus_A_RREADY),
    .m_axi_bus_B_AWID(),
    .m_axi_bus_B_AWADDR(m_axi_bus_B_AWADDR),
    .m_axi_bus_B_AWLEN(m_axi_bus_B_AWLEN),
    .m_axi_bus_B_AWSIZE(m_axi_bus_B_AWSIZE),
    .m_axi_bus_B_AWBURST(m_axi_bus_B_AWBURST),
    .m_axi_bus_B_AWLOCK(m_axi_bus_B_AWLOCK),
    .m_axi_bus_B_AWREGION(m_axi_bus_B_AWREGION),
    .m_axi_bus_B_AWCACHE(m_axi_bus_B_AWCACHE),
    .m_axi_bus_B_AWPROT(m_axi_bus_B_AWPROT),
    .m_axi_bus_B_AWQOS(m_axi_bus_B_AWQOS),
    .m_axi_bus_B_AWUSER(),
    .m_axi_bus_B_AWVALID(m_axi_bus_B_AWVALID),
    .m_axi_bus_B_AWREADY(m_axi_bus_B_AWREADY),
    .m_axi_bus_B_WID(),
    .m_axi_bus_B_WDATA(m_axi_bus_B_WDATA),
    .m_axi_bus_B_WSTRB(m_axi_bus_B_WSTRB),
    .m_axi_bus_B_WLAST(m_axi_bus_B_WLAST),
    .m_axi_bus_B_WUSER(),
    .m_axi_bus_B_WVALID(m_axi_bus_B_WVALID),
    .m_axi_bus_B_WREADY(m_axi_bus_B_WREADY),
    .m_axi_bus_B_BID(1'B0),
    .m_axi_bus_B_BRESP(m_axi_bus_B_BRESP),
    .m_axi_bus_B_BUSER(1'B0),
    .m_axi_bus_B_BVALID(m_axi_bus_B_BVALID),
    .m_axi_bus_B_BREADY(m_axi_bus_B_BREADY),
    .m_axi_bus_B_ARID(),
    .m_axi_bus_B_ARADDR(m_axi_bus_B_ARADDR),
    .m_axi_bus_B_ARLEN(m_axi_bus_B_ARLEN),
    .m_axi_bus_B_ARSIZE(m_axi_bus_B_ARSIZE),
    .m_axi_bus_B_ARBURST(m_axi_bus_B_ARBURST),
    .m_axi_bus_B_ARLOCK(m_axi_bus_B_ARLOCK),
    .m_axi_bus_B_ARREGION(m_axi_bus_B_ARREGION),
    .m_axi_bus_B_ARCACHE(m_axi_bus_B_ARCACHE),
    .m_axi_bus_B_ARPROT(m_axi_bus_B_ARPROT),
    .m_axi_bus_B_ARQOS(m_axi_bus_B_ARQOS),
    .m_axi_bus_B_ARUSER(),
    .m_axi_bus_B_ARVALID(m_axi_bus_B_ARVALID),
    .m_axi_bus_B_ARREADY(m_axi_bus_B_ARREADY),
    .m_axi_bus_B_RID(1'B0),
    .m_axi_bus_B_RDATA(m_axi_bus_B_RDATA),
    .m_axi_bus_B_RRESP(m_axi_bus_B_RRESP),
    .m_axi_bus_B_RLAST(m_axi_bus_B_RLAST),
    .m_axi_bus_B_RUSER(1'B0),
    .m_axi_bus_B_RVALID(m_axi_bus_B_RVALID),
    .m_axi_bus_B_RREADY(m_axi_bus_B_RREADY),
    .m_axi_bus_res_AWID(),
    .m_axi_bus_res_AWADDR(m_axi_bus_res_AWADDR),
    .m_axi_bus_res_AWLEN(m_axi_bus_res_AWLEN),
    .m_axi_bus_res_AWSIZE(m_axi_bus_res_AWSIZE),
    .m_axi_bus_res_AWBURST(m_axi_bus_res_AWBURST),
    .m_axi_bus_res_AWLOCK(m_axi_bus_res_AWLOCK),
    .m_axi_bus_res_AWREGION(m_axi_bus_res_AWREGION),
    .m_axi_bus_res_AWCACHE(m_axi_bus_res_AWCACHE),
    .m_axi_bus_res_AWPROT(m_axi_bus_res_AWPROT),
    .m_axi_bus_res_AWQOS(m_axi_bus_res_AWQOS),
    .m_axi_bus_res_AWUSER(),
    .m_axi_bus_res_AWVALID(m_axi_bus_res_AWVALID),
    .m_axi_bus_res_AWREADY(m_axi_bus_res_AWREADY),
    .m_axi_bus_res_WID(),
    .m_axi_bus_res_WDATA(m_axi_bus_res_WDATA),
    .m_axi_bus_res_WSTRB(m_axi_bus_res_WSTRB),
    .m_axi_bus_res_WLAST(m_axi_bus_res_WLAST),
    .m_axi_bus_res_WUSER(),
    .m_axi_bus_res_WVALID(m_axi_bus_res_WVALID),
    .m_axi_bus_res_WREADY(m_axi_bus_res_WREADY),
    .m_axi_bus_res_BID(1'B0),
    .m_axi_bus_res_BRESP(m_axi_bus_res_BRESP),
    .m_axi_bus_res_BUSER(1'B0),
    .m_axi_bus_res_BVALID(m_axi_bus_res_BVALID),
    .m_axi_bus_res_BREADY(m_axi_bus_res_BREADY),
    .m_axi_bus_res_ARID(),
    .m_axi_bus_res_ARADDR(m_axi_bus_res_ARADDR),
    .m_axi_bus_res_ARLEN(m_axi_bus_res_ARLEN),
    .m_axi_bus_res_ARSIZE(m_axi_bus_res_ARSIZE),
    .m_axi_bus_res_ARBURST(m_axi_bus_res_ARBURST),
    .m_axi_bus_res_ARLOCK(m_axi_bus_res_ARLOCK),
    .m_axi_bus_res_ARREGION(m_axi_bus_res_ARREGION),
    .m_axi_bus_res_ARCACHE(m_axi_bus_res_ARCACHE),
    .m_axi_bus_res_ARPROT(m_axi_bus_res_ARPROT),
    .m_axi_bus_res_ARQOS(m_axi_bus_res_ARQOS),
    .m_axi_bus_res_ARUSER(),
    .m_axi_bus_res_ARVALID(m_axi_bus_res_ARVALID),
    .m_axi_bus_res_ARREADY(m_axi_bus_res_ARREADY),
    .m_axi_bus_res_RID(1'B0),
    .m_axi_bus_res_RDATA(m_axi_bus_res_RDATA),
    .m_axi_bus_res_RRESP(m_axi_bus_res_RRESP),
    .m_axi_bus_res_RLAST(m_axi_bus_res_RLAST),
    .m_axi_bus_res_RUSER(1'B0),
    .m_axi_bus_res_RVALID(m_axi_bus_res_RVALID),
    .m_axi_bus_res_RREADY(m_axi_bus_res_RREADY)
  );
endmodule
