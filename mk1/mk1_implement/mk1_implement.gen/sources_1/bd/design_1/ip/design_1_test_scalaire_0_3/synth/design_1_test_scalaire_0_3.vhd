-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:test_scalaire:1.1
-- IP Revision: 2112359519

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_test_scalaire_0_3 IS
  PORT (
    s_axi_control_AWADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_control_AWVALID : IN STD_LOGIC;
    s_axi_control_AWREADY : OUT STD_LOGIC;
    s_axi_control_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_control_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_control_WVALID : IN STD_LOGIC;
    s_axi_control_WREADY : OUT STD_LOGIC;
    s_axi_control_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_control_BVALID : OUT STD_LOGIC;
    s_axi_control_BREADY : IN STD_LOGIC;
    s_axi_control_ARADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    s_axi_control_ARVALID : IN STD_LOGIC;
    s_axi_control_ARREADY : OUT STD_LOGIC;
    s_axi_control_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_control_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_control_RVALID : OUT STD_LOGIC;
    s_axi_control_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    m_axi_bus_A_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_A_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_bus_A_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_A_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_A_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_A_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_A_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_A_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_A_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_A_AWVALID : OUT STD_LOGIC;
    m_axi_bus_A_AWREADY : IN STD_LOGIC;
    m_axi_bus_A_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_A_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_A_WLAST : OUT STD_LOGIC;
    m_axi_bus_A_WVALID : OUT STD_LOGIC;
    m_axi_bus_A_WREADY : IN STD_LOGIC;
    m_axi_bus_A_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_A_BVALID : IN STD_LOGIC;
    m_axi_bus_A_BREADY : OUT STD_LOGIC;
    m_axi_bus_A_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_A_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_bus_A_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_A_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_A_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_A_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_A_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_A_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_A_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_A_ARVALID : OUT STD_LOGIC;
    m_axi_bus_A_ARREADY : IN STD_LOGIC;
    m_axi_bus_A_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_A_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_A_RLAST : IN STD_LOGIC;
    m_axi_bus_A_RVALID : IN STD_LOGIC;
    m_axi_bus_A_RREADY : OUT STD_LOGIC;
    m_axi_bus_B_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_B_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_bus_B_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_B_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_B_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_B_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_B_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_B_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_B_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_B_AWVALID : OUT STD_LOGIC;
    m_axi_bus_B_AWREADY : IN STD_LOGIC;
    m_axi_bus_B_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_B_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_B_WLAST : OUT STD_LOGIC;
    m_axi_bus_B_WVALID : OUT STD_LOGIC;
    m_axi_bus_B_WREADY : IN STD_LOGIC;
    m_axi_bus_B_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_B_BVALID : IN STD_LOGIC;
    m_axi_bus_B_BREADY : OUT STD_LOGIC;
    m_axi_bus_B_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_B_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_bus_B_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_B_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_B_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_B_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_B_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_B_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_B_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_B_ARVALID : OUT STD_LOGIC;
    m_axi_bus_B_ARREADY : IN STD_LOGIC;
    m_axi_bus_B_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_B_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_B_RLAST : IN STD_LOGIC;
    m_axi_bus_B_RVALID : IN STD_LOGIC;
    m_axi_bus_B_RREADY : OUT STD_LOGIC;
    m_axi_bus_res_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_res_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_bus_res_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_res_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_res_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_res_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_res_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_res_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_res_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_res_AWVALID : OUT STD_LOGIC;
    m_axi_bus_res_AWREADY : IN STD_LOGIC;
    m_axi_bus_res_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_res_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_res_WLAST : OUT STD_LOGIC;
    m_axi_bus_res_WVALID : OUT STD_LOGIC;
    m_axi_bus_res_WREADY : IN STD_LOGIC;
    m_axi_bus_res_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_res_BVALID : IN STD_LOGIC;
    m_axi_bus_res_BREADY : OUT STD_LOGIC;
    m_axi_bus_res_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_res_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_bus_res_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_res_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_res_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_res_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_res_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_res_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_bus_res_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_bus_res_ARVALID : OUT STD_LOGIC;
    m_axi_bus_res_ARREADY : IN STD_LOGIC;
    m_axi_bus_res_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_bus_res_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_bus_res_RLAST : IN STD_LOGIC;
    m_axi_bus_res_RVALID : IN STD_LOGIC;
    m_axi_bus_res_RREADY : OUT STD_LOGIC
  );
END design_1_test_scalaire_0_3;

ARCHITECTURE design_1_test_scalaire_0_3_arch OF design_1_test_scalaire_0_3 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_test_scalaire_0_3_arch: ARCHITECTURE IS "yes";
  COMPONENT test_scalaire IS
    GENERIC (
      C_S_AXI_CONTROL_ADDR_WIDTH : INTEGER;
      C_S_AXI_CONTROL_DATA_WIDTH : INTEGER;
      C_M_AXI_BUS_A_ID_WIDTH : INTEGER;
      C_M_AXI_BUS_A_ADDR_WIDTH : INTEGER;
      C_M_AXI_BUS_A_DATA_WIDTH : INTEGER;
      C_M_AXI_BUS_A_AWUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_A_ARUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_A_WUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_A_RUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_A_BUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_A_USER_VALUE : INTEGER;
      C_M_AXI_BUS_A_PROT_VALUE : INTEGER;
      C_M_AXI_BUS_A_CACHE_VALUE : INTEGER;
      C_M_AXI_BUS_B_ID_WIDTH : INTEGER;
      C_M_AXI_BUS_B_ADDR_WIDTH : INTEGER;
      C_M_AXI_BUS_B_DATA_WIDTH : INTEGER;
      C_M_AXI_BUS_B_AWUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_B_ARUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_B_WUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_B_RUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_B_BUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_B_USER_VALUE : INTEGER;
      C_M_AXI_BUS_B_PROT_VALUE : INTEGER;
      C_M_AXI_BUS_B_CACHE_VALUE : INTEGER;
      C_M_AXI_BUS_RES_ID_WIDTH : INTEGER;
      C_M_AXI_BUS_RES_ADDR_WIDTH : INTEGER;
      C_M_AXI_BUS_RES_DATA_WIDTH : INTEGER;
      C_M_AXI_BUS_RES_AWUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_RES_ARUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_RES_WUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_RES_RUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_RES_BUSER_WIDTH : INTEGER;
      C_M_AXI_BUS_RES_USER_VALUE : INTEGER;
      C_M_AXI_BUS_RES_PROT_VALUE : INTEGER;
      C_M_AXI_BUS_RES_CACHE_VALUE : INTEGER
    );
    PORT (
      s_axi_control_AWADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_control_AWVALID : IN STD_LOGIC;
      s_axi_control_AWREADY : OUT STD_LOGIC;
      s_axi_control_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_control_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_control_WVALID : IN STD_LOGIC;
      s_axi_control_WREADY : OUT STD_LOGIC;
      s_axi_control_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_control_BVALID : OUT STD_LOGIC;
      s_axi_control_BREADY : IN STD_LOGIC;
      s_axi_control_ARADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      s_axi_control_ARVALID : IN STD_LOGIC;
      s_axi_control_ARREADY : OUT STD_LOGIC;
      s_axi_control_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_control_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_control_RVALID : OUT STD_LOGIC;
      s_axi_control_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      m_axi_bus_A_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_A_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_A_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_bus_A_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_A_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_A_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_A_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_A_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_A_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_A_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_A_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_A_AWVALID : OUT STD_LOGIC;
      m_axi_bus_A_AWREADY : IN STD_LOGIC;
      m_axi_bus_A_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_A_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_A_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_A_WLAST : OUT STD_LOGIC;
      m_axi_bus_A_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_A_WVALID : OUT STD_LOGIC;
      m_axi_bus_A_WREADY : IN STD_LOGIC;
      m_axi_bus_A_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_A_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_A_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_A_BVALID : IN STD_LOGIC;
      m_axi_bus_A_BREADY : OUT STD_LOGIC;
      m_axi_bus_A_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_A_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_A_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_bus_A_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_A_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_A_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_A_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_A_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_A_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_A_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_A_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_A_ARVALID : OUT STD_LOGIC;
      m_axi_bus_A_ARREADY : IN STD_LOGIC;
      m_axi_bus_A_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_A_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_A_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_A_RLAST : IN STD_LOGIC;
      m_axi_bus_A_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_A_RVALID : IN STD_LOGIC;
      m_axi_bus_A_RREADY : OUT STD_LOGIC;
      m_axi_bus_B_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_B_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_B_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_bus_B_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_B_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_B_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_B_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_B_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_B_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_B_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_B_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_B_AWVALID : OUT STD_LOGIC;
      m_axi_bus_B_AWREADY : IN STD_LOGIC;
      m_axi_bus_B_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_B_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_B_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_B_WLAST : OUT STD_LOGIC;
      m_axi_bus_B_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_B_WVALID : OUT STD_LOGIC;
      m_axi_bus_B_WREADY : IN STD_LOGIC;
      m_axi_bus_B_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_B_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_B_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_B_BVALID : IN STD_LOGIC;
      m_axi_bus_B_BREADY : OUT STD_LOGIC;
      m_axi_bus_B_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_B_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_B_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_bus_B_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_B_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_B_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_B_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_B_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_B_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_B_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_B_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_B_ARVALID : OUT STD_LOGIC;
      m_axi_bus_B_ARREADY : IN STD_LOGIC;
      m_axi_bus_B_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_B_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_B_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_B_RLAST : IN STD_LOGIC;
      m_axi_bus_B_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_B_RVALID : IN STD_LOGIC;
      m_axi_bus_B_RREADY : OUT STD_LOGIC;
      m_axi_bus_res_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_res_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_res_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_bus_res_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_res_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_res_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_res_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_res_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_res_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_res_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_res_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_res_AWVALID : OUT STD_LOGIC;
      m_axi_bus_res_AWREADY : IN STD_LOGIC;
      m_axi_bus_res_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_res_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_res_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_res_WLAST : OUT STD_LOGIC;
      m_axi_bus_res_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_res_WVALID : OUT STD_LOGIC;
      m_axi_bus_res_WREADY : IN STD_LOGIC;
      m_axi_bus_res_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_res_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_res_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_res_BVALID : IN STD_LOGIC;
      m_axi_bus_res_BREADY : OUT STD_LOGIC;
      m_axi_bus_res_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_res_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_res_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_bus_res_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_res_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_res_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_res_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_res_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_res_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_bus_res_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_bus_res_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_res_ARVALID : OUT STD_LOGIC;
      m_axi_bus_res_ARREADY : IN STD_LOGIC;
      m_axi_bus_res_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_res_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_bus_res_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_bus_res_RLAST : IN STD_LOGIC;
      m_axi_bus_res_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_bus_res_RVALID : IN STD_LOGIC;
      m_axi_bus_res_RREADY : OUT STD_LOGIC
    );
  END COMPONENT test_scalaire;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_test_scalaire_0_3_arch: ARCHITECTURE IS "test_scalaire,Vivado 2021.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_test_scalaire_0_3_arch : ARCHITECTURE IS "design_1_test_scalaire_0_3,test_scalaire,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_test_scalaire_0_3_arch: ARCHITECTURE IS "design_1_test_scalaire_0_3,test_scalaire,{x_ipProduct=Vivado 2021.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=test_scalaire,x_ipVersion=1.1,x_ipCoreRevision=2112359519,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_ADDR_WIDTH=6,C_S_AXI_CONTROL_DATA_WIDTH=32,C_M_AXI_BUS_A_ID_WIDTH=1,C_M_AXI_BUS_A_ADDR_WIDTH=32,C_M_AXI_BUS_A_DATA_WIDTH=32,C_M_AXI_BUS_A_AWUSER_WIDTH=1,C_M_AXI_BUS_A_ARUSER_WIDTH=1,C_M_AXI_BUS_A_WUSER_WIDTH=1,C_M_AXI_BUS_A_RUSER_WIDTH=1,C_M_AXI_BUS_A_BUSER_WIDTH=1,C_M_A" & 
"XI_BUS_A_USER_VALUE=0x00000000,C_M_AXI_BUS_A_PROT_VALUE=000,C_M_AXI_BUS_A_CACHE_VALUE=0011,C_M_AXI_BUS_B_ID_WIDTH=1,C_M_AXI_BUS_B_ADDR_WIDTH=32,C_M_AXI_BUS_B_DATA_WIDTH=32,C_M_AXI_BUS_B_AWUSER_WIDTH=1,C_M_AXI_BUS_B_ARUSER_WIDTH=1,C_M_AXI_BUS_B_WUSER_WIDTH=1,C_M_AXI_BUS_B_RUSER_WIDTH=1,C_M_AXI_BUS_B_BUSER_WIDTH=1,C_M_AXI_BUS_B_USER_VALUE=0x00000000,C_M_AXI_BUS_B_PROT_VALUE=000,C_M_AXI_BUS_B_CACHE_VALUE=0011,C_M_AXI_BUS_RES_ID_WIDTH=1,C_M_AXI_BUS_RES_ADDR_WIDTH=32,C_M_AXI_BUS_RES_DATA_WIDTH=32,C_M" & 
"_AXI_BUS_RES_AWUSER_WIDTH=1,C_M_AXI_BUS_RES_ARUSER_WIDTH=1,C_M_AXI_BUS_RES_WUSER_WIDTH=1,C_M_AXI_BUS_RES_RUSER_WIDTH=1,C_M_AXI_BUS_RES_BUSER_WIDTH=1,C_M_AXI_BUS_RES_USER_VALUE=0x00000000,C_M_AXI_BUS_RES_PROT_VALUE=000,C_M_AXI_BUS_RES_CACHE_VALUE=0011}";
  ATTRIBUTE SDX_KERNEL : STRING;
  ATTRIBUTE SDX_KERNEL OF test_scalaire: COMPONENT IS "true";
  ATTRIBUTE SDX_KERNEL_TYPE : STRING;
  ATTRIBUTE SDX_KERNEL_TYPE OF test_scalaire: COMPONENT IS "hls";
  ATTRIBUTE SDX_KERNEL_SYNTH_INST : STRING;
  ATTRIBUTE SDX_KERNEL_SYNTH_INST OF test_scalaire: COMPONENT IS "U0";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_test_scalaire_0_3_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_bus_res_AWADDR: SIGNAL IS "XIL_INTERFACENAME m_axi_bus_res, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 150000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN" & 
" /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_res_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_res AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_bus_B_AWADDR: SIGNAL IS "XIL_INTERFACENAME m_axi_bus_B, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 150000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN /" & 
"clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_B_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_B AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_bus_A_AWADDR: SIGNAL IS "XIL_INTERFACENAME m_axi_bus_A, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 150000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN /" & 
"clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_bus_A_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_bus_A AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:m_axi_bus_A:m_axi_bus_B:m_axi_bus_res, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 150000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_control_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 150000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_TH" & 
"READS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_control_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
BEGIN
  U0 : test_scalaire
    GENERIC MAP (
      C_S_AXI_CONTROL_ADDR_WIDTH => 6,
      C_S_AXI_CONTROL_DATA_WIDTH => 32,
      C_M_AXI_BUS_A_ID_WIDTH => 1,
      C_M_AXI_BUS_A_ADDR_WIDTH => 32,
      C_M_AXI_BUS_A_DATA_WIDTH => 32,
      C_M_AXI_BUS_A_AWUSER_WIDTH => 1,
      C_M_AXI_BUS_A_ARUSER_WIDTH => 1,
      C_M_AXI_BUS_A_WUSER_WIDTH => 1,
      C_M_AXI_BUS_A_RUSER_WIDTH => 1,
      C_M_AXI_BUS_A_BUSER_WIDTH => 1,
      C_M_AXI_BUS_A_USER_VALUE => 0,
      C_M_AXI_BUS_A_PROT_VALUE => 0,
      C_M_AXI_BUS_A_CACHE_VALUE => 3,
      C_M_AXI_BUS_B_ID_WIDTH => 1,
      C_M_AXI_BUS_B_ADDR_WIDTH => 32,
      C_M_AXI_BUS_B_DATA_WIDTH => 32,
      C_M_AXI_BUS_B_AWUSER_WIDTH => 1,
      C_M_AXI_BUS_B_ARUSER_WIDTH => 1,
      C_M_AXI_BUS_B_WUSER_WIDTH => 1,
      C_M_AXI_BUS_B_RUSER_WIDTH => 1,
      C_M_AXI_BUS_B_BUSER_WIDTH => 1,
      C_M_AXI_BUS_B_USER_VALUE => 0,
      C_M_AXI_BUS_B_PROT_VALUE => 0,
      C_M_AXI_BUS_B_CACHE_VALUE => 3,
      C_M_AXI_BUS_RES_ID_WIDTH => 1,
      C_M_AXI_BUS_RES_ADDR_WIDTH => 32,
      C_M_AXI_BUS_RES_DATA_WIDTH => 32,
      C_M_AXI_BUS_RES_AWUSER_WIDTH => 1,
      C_M_AXI_BUS_RES_ARUSER_WIDTH => 1,
      C_M_AXI_BUS_RES_WUSER_WIDTH => 1,
      C_M_AXI_BUS_RES_RUSER_WIDTH => 1,
      C_M_AXI_BUS_RES_BUSER_WIDTH => 1,
      C_M_AXI_BUS_RES_USER_VALUE => 0,
      C_M_AXI_BUS_RES_PROT_VALUE => 0,
      C_M_AXI_BUS_RES_CACHE_VALUE => 3
    )
    PORT MAP (
      s_axi_control_AWADDR => s_axi_control_AWADDR,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_WDATA => s_axi_control_WDATA,
      s_axi_control_WSTRB => s_axi_control_WSTRB,
      s_axi_control_WVALID => s_axi_control_WVALID,
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_BRESP => s_axi_control_BRESP,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_ARADDR => s_axi_control_ARADDR,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_RDATA => s_axi_control_RDATA,
      s_axi_control_RRESP => s_axi_control_RRESP,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_RREADY => s_axi_control_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      m_axi_bus_A_AWADDR => m_axi_bus_A_AWADDR,
      m_axi_bus_A_AWLEN => m_axi_bus_A_AWLEN,
      m_axi_bus_A_AWSIZE => m_axi_bus_A_AWSIZE,
      m_axi_bus_A_AWBURST => m_axi_bus_A_AWBURST,
      m_axi_bus_A_AWLOCK => m_axi_bus_A_AWLOCK,
      m_axi_bus_A_AWREGION => m_axi_bus_A_AWREGION,
      m_axi_bus_A_AWCACHE => m_axi_bus_A_AWCACHE,
      m_axi_bus_A_AWPROT => m_axi_bus_A_AWPROT,
      m_axi_bus_A_AWQOS => m_axi_bus_A_AWQOS,
      m_axi_bus_A_AWVALID => m_axi_bus_A_AWVALID,
      m_axi_bus_A_AWREADY => m_axi_bus_A_AWREADY,
      m_axi_bus_A_WDATA => m_axi_bus_A_WDATA,
      m_axi_bus_A_WSTRB => m_axi_bus_A_WSTRB,
      m_axi_bus_A_WLAST => m_axi_bus_A_WLAST,
      m_axi_bus_A_WVALID => m_axi_bus_A_WVALID,
      m_axi_bus_A_WREADY => m_axi_bus_A_WREADY,
      m_axi_bus_A_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_A_BRESP => m_axi_bus_A_BRESP,
      m_axi_bus_A_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_A_BVALID => m_axi_bus_A_BVALID,
      m_axi_bus_A_BREADY => m_axi_bus_A_BREADY,
      m_axi_bus_A_ARADDR => m_axi_bus_A_ARADDR,
      m_axi_bus_A_ARLEN => m_axi_bus_A_ARLEN,
      m_axi_bus_A_ARSIZE => m_axi_bus_A_ARSIZE,
      m_axi_bus_A_ARBURST => m_axi_bus_A_ARBURST,
      m_axi_bus_A_ARLOCK => m_axi_bus_A_ARLOCK,
      m_axi_bus_A_ARREGION => m_axi_bus_A_ARREGION,
      m_axi_bus_A_ARCACHE => m_axi_bus_A_ARCACHE,
      m_axi_bus_A_ARPROT => m_axi_bus_A_ARPROT,
      m_axi_bus_A_ARQOS => m_axi_bus_A_ARQOS,
      m_axi_bus_A_ARVALID => m_axi_bus_A_ARVALID,
      m_axi_bus_A_ARREADY => m_axi_bus_A_ARREADY,
      m_axi_bus_A_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_A_RDATA => m_axi_bus_A_RDATA,
      m_axi_bus_A_RRESP => m_axi_bus_A_RRESP,
      m_axi_bus_A_RLAST => m_axi_bus_A_RLAST,
      m_axi_bus_A_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_A_RVALID => m_axi_bus_A_RVALID,
      m_axi_bus_A_RREADY => m_axi_bus_A_RREADY,
      m_axi_bus_B_AWADDR => m_axi_bus_B_AWADDR,
      m_axi_bus_B_AWLEN => m_axi_bus_B_AWLEN,
      m_axi_bus_B_AWSIZE => m_axi_bus_B_AWSIZE,
      m_axi_bus_B_AWBURST => m_axi_bus_B_AWBURST,
      m_axi_bus_B_AWLOCK => m_axi_bus_B_AWLOCK,
      m_axi_bus_B_AWREGION => m_axi_bus_B_AWREGION,
      m_axi_bus_B_AWCACHE => m_axi_bus_B_AWCACHE,
      m_axi_bus_B_AWPROT => m_axi_bus_B_AWPROT,
      m_axi_bus_B_AWQOS => m_axi_bus_B_AWQOS,
      m_axi_bus_B_AWVALID => m_axi_bus_B_AWVALID,
      m_axi_bus_B_AWREADY => m_axi_bus_B_AWREADY,
      m_axi_bus_B_WDATA => m_axi_bus_B_WDATA,
      m_axi_bus_B_WSTRB => m_axi_bus_B_WSTRB,
      m_axi_bus_B_WLAST => m_axi_bus_B_WLAST,
      m_axi_bus_B_WVALID => m_axi_bus_B_WVALID,
      m_axi_bus_B_WREADY => m_axi_bus_B_WREADY,
      m_axi_bus_B_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_B_BRESP => m_axi_bus_B_BRESP,
      m_axi_bus_B_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_B_BVALID => m_axi_bus_B_BVALID,
      m_axi_bus_B_BREADY => m_axi_bus_B_BREADY,
      m_axi_bus_B_ARADDR => m_axi_bus_B_ARADDR,
      m_axi_bus_B_ARLEN => m_axi_bus_B_ARLEN,
      m_axi_bus_B_ARSIZE => m_axi_bus_B_ARSIZE,
      m_axi_bus_B_ARBURST => m_axi_bus_B_ARBURST,
      m_axi_bus_B_ARLOCK => m_axi_bus_B_ARLOCK,
      m_axi_bus_B_ARREGION => m_axi_bus_B_ARREGION,
      m_axi_bus_B_ARCACHE => m_axi_bus_B_ARCACHE,
      m_axi_bus_B_ARPROT => m_axi_bus_B_ARPROT,
      m_axi_bus_B_ARQOS => m_axi_bus_B_ARQOS,
      m_axi_bus_B_ARVALID => m_axi_bus_B_ARVALID,
      m_axi_bus_B_ARREADY => m_axi_bus_B_ARREADY,
      m_axi_bus_B_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_B_RDATA => m_axi_bus_B_RDATA,
      m_axi_bus_B_RRESP => m_axi_bus_B_RRESP,
      m_axi_bus_B_RLAST => m_axi_bus_B_RLAST,
      m_axi_bus_B_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_B_RVALID => m_axi_bus_B_RVALID,
      m_axi_bus_B_RREADY => m_axi_bus_B_RREADY,
      m_axi_bus_res_AWADDR => m_axi_bus_res_AWADDR,
      m_axi_bus_res_AWLEN => m_axi_bus_res_AWLEN,
      m_axi_bus_res_AWSIZE => m_axi_bus_res_AWSIZE,
      m_axi_bus_res_AWBURST => m_axi_bus_res_AWBURST,
      m_axi_bus_res_AWLOCK => m_axi_bus_res_AWLOCK,
      m_axi_bus_res_AWREGION => m_axi_bus_res_AWREGION,
      m_axi_bus_res_AWCACHE => m_axi_bus_res_AWCACHE,
      m_axi_bus_res_AWPROT => m_axi_bus_res_AWPROT,
      m_axi_bus_res_AWQOS => m_axi_bus_res_AWQOS,
      m_axi_bus_res_AWVALID => m_axi_bus_res_AWVALID,
      m_axi_bus_res_AWREADY => m_axi_bus_res_AWREADY,
      m_axi_bus_res_WDATA => m_axi_bus_res_WDATA,
      m_axi_bus_res_WSTRB => m_axi_bus_res_WSTRB,
      m_axi_bus_res_WLAST => m_axi_bus_res_WLAST,
      m_axi_bus_res_WVALID => m_axi_bus_res_WVALID,
      m_axi_bus_res_WREADY => m_axi_bus_res_WREADY,
      m_axi_bus_res_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_res_BRESP => m_axi_bus_res_BRESP,
      m_axi_bus_res_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_res_BVALID => m_axi_bus_res_BVALID,
      m_axi_bus_res_BREADY => m_axi_bus_res_BREADY,
      m_axi_bus_res_ARADDR => m_axi_bus_res_ARADDR,
      m_axi_bus_res_ARLEN => m_axi_bus_res_ARLEN,
      m_axi_bus_res_ARSIZE => m_axi_bus_res_ARSIZE,
      m_axi_bus_res_ARBURST => m_axi_bus_res_ARBURST,
      m_axi_bus_res_ARLOCK => m_axi_bus_res_ARLOCK,
      m_axi_bus_res_ARREGION => m_axi_bus_res_ARREGION,
      m_axi_bus_res_ARCACHE => m_axi_bus_res_ARCACHE,
      m_axi_bus_res_ARPROT => m_axi_bus_res_ARPROT,
      m_axi_bus_res_ARQOS => m_axi_bus_res_ARQOS,
      m_axi_bus_res_ARVALID => m_axi_bus_res_ARVALID,
      m_axi_bus_res_ARREADY => m_axi_bus_res_ARREADY,
      m_axi_bus_res_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_res_RDATA => m_axi_bus_res_RDATA,
      m_axi_bus_res_RRESP => m_axi_bus_res_RRESP,
      m_axi_bus_res_RLAST => m_axi_bus_res_RLAST,
      m_axi_bus_res_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_bus_res_RVALID => m_axi_bus_res_RVALID,
      m_axi_bus_res_RREADY => m_axi_bus_res_RREADY
    );
END design_1_test_scalaire_0_3_arch;
