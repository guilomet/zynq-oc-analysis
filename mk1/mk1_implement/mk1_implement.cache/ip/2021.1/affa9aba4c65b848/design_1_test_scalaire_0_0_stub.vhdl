-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Wed Nov 10 11:46:25 2021
-- Host        : glomet-fixe running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_test_scalaire_0_0_stub.vhdl
-- Design      : design_1_test_scalaire_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_bus_A_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_A_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bus_A_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_A_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_A_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_A_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_A_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_A_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_A_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_A_AWVALID : out STD_LOGIC;
    m_axi_bus_A_AWREADY : in STD_LOGIC;
    m_axi_bus_A_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_A_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_A_WLAST : out STD_LOGIC;
    m_axi_bus_A_WVALID : out STD_LOGIC;
    m_axi_bus_A_WREADY : in STD_LOGIC;
    m_axi_bus_A_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_A_BVALID : in STD_LOGIC;
    m_axi_bus_A_BREADY : out STD_LOGIC;
    m_axi_bus_A_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_A_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bus_A_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_A_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_A_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_A_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_A_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_A_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_A_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_A_ARVALID : out STD_LOGIC;
    m_axi_bus_A_ARREADY : in STD_LOGIC;
    m_axi_bus_A_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_A_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_A_RLAST : in STD_LOGIC;
    m_axi_bus_A_RVALID : in STD_LOGIC;
    m_axi_bus_A_RREADY : out STD_LOGIC;
    m_axi_bus_B_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_B_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bus_B_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_B_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_B_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_B_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_B_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_B_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_B_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_B_AWVALID : out STD_LOGIC;
    m_axi_bus_B_AWREADY : in STD_LOGIC;
    m_axi_bus_B_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_B_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_B_WLAST : out STD_LOGIC;
    m_axi_bus_B_WVALID : out STD_LOGIC;
    m_axi_bus_B_WREADY : in STD_LOGIC;
    m_axi_bus_B_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_B_BVALID : in STD_LOGIC;
    m_axi_bus_B_BREADY : out STD_LOGIC;
    m_axi_bus_B_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_B_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bus_B_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_B_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_B_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_B_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_B_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_B_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_B_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_B_ARVALID : out STD_LOGIC;
    m_axi_bus_B_ARREADY : in STD_LOGIC;
    m_axi_bus_B_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_B_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_B_RLAST : in STD_LOGIC;
    m_axi_bus_B_RVALID : in STD_LOGIC;
    m_axi_bus_B_RREADY : out STD_LOGIC;
    m_axi_bus_res_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_res_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bus_res_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_res_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_res_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_res_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_res_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_res_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_res_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_res_AWVALID : out STD_LOGIC;
    m_axi_bus_res_AWREADY : in STD_LOGIC;
    m_axi_bus_res_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_res_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_res_WLAST : out STD_LOGIC;
    m_axi_bus_res_WVALID : out STD_LOGIC;
    m_axi_bus_res_WREADY : in STD_LOGIC;
    m_axi_bus_res_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_res_BVALID : in STD_LOGIC;
    m_axi_bus_res_BREADY : out STD_LOGIC;
    m_axi_bus_res_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_res_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_bus_res_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_res_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_res_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_res_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_res_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_res_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bus_res_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bus_res_ARVALID : out STD_LOGIC;
    m_axi_bus_res_ARREADY : in STD_LOGIC;
    m_axi_bus_res_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bus_res_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bus_res_RLAST : in STD_LOGIC;
    m_axi_bus_res_RVALID : in STD_LOGIC;
    m_axi_bus_res_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_AWADDR[5:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[5:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_bus_A_AWADDR[31:0],m_axi_bus_A_AWLEN[7:0],m_axi_bus_A_AWSIZE[2:0],m_axi_bus_A_AWBURST[1:0],m_axi_bus_A_AWLOCK[1:0],m_axi_bus_A_AWREGION[3:0],m_axi_bus_A_AWCACHE[3:0],m_axi_bus_A_AWPROT[2:0],m_axi_bus_A_AWQOS[3:0],m_axi_bus_A_AWVALID,m_axi_bus_A_AWREADY,m_axi_bus_A_WDATA[31:0],m_axi_bus_A_WSTRB[3:0],m_axi_bus_A_WLAST,m_axi_bus_A_WVALID,m_axi_bus_A_WREADY,m_axi_bus_A_BRESP[1:0],m_axi_bus_A_BVALID,m_axi_bus_A_BREADY,m_axi_bus_A_ARADDR[31:0],m_axi_bus_A_ARLEN[7:0],m_axi_bus_A_ARSIZE[2:0],m_axi_bus_A_ARBURST[1:0],m_axi_bus_A_ARLOCK[1:0],m_axi_bus_A_ARREGION[3:0],m_axi_bus_A_ARCACHE[3:0],m_axi_bus_A_ARPROT[2:0],m_axi_bus_A_ARQOS[3:0],m_axi_bus_A_ARVALID,m_axi_bus_A_ARREADY,m_axi_bus_A_RDATA[31:0],m_axi_bus_A_RRESP[1:0],m_axi_bus_A_RLAST,m_axi_bus_A_RVALID,m_axi_bus_A_RREADY,m_axi_bus_B_AWADDR[31:0],m_axi_bus_B_AWLEN[7:0],m_axi_bus_B_AWSIZE[2:0],m_axi_bus_B_AWBURST[1:0],m_axi_bus_B_AWLOCK[1:0],m_axi_bus_B_AWREGION[3:0],m_axi_bus_B_AWCACHE[3:0],m_axi_bus_B_AWPROT[2:0],m_axi_bus_B_AWQOS[3:0],m_axi_bus_B_AWVALID,m_axi_bus_B_AWREADY,m_axi_bus_B_WDATA[31:0],m_axi_bus_B_WSTRB[3:0],m_axi_bus_B_WLAST,m_axi_bus_B_WVALID,m_axi_bus_B_WREADY,m_axi_bus_B_BRESP[1:0],m_axi_bus_B_BVALID,m_axi_bus_B_BREADY,m_axi_bus_B_ARADDR[31:0],m_axi_bus_B_ARLEN[7:0],m_axi_bus_B_ARSIZE[2:0],m_axi_bus_B_ARBURST[1:0],m_axi_bus_B_ARLOCK[1:0],m_axi_bus_B_ARREGION[3:0],m_axi_bus_B_ARCACHE[3:0],m_axi_bus_B_ARPROT[2:0],m_axi_bus_B_ARQOS[3:0],m_axi_bus_B_ARVALID,m_axi_bus_B_ARREADY,m_axi_bus_B_RDATA[31:0],m_axi_bus_B_RRESP[1:0],m_axi_bus_B_RLAST,m_axi_bus_B_RVALID,m_axi_bus_B_RREADY,m_axi_bus_res_AWADDR[31:0],m_axi_bus_res_AWLEN[7:0],m_axi_bus_res_AWSIZE[2:0],m_axi_bus_res_AWBURST[1:0],m_axi_bus_res_AWLOCK[1:0],m_axi_bus_res_AWREGION[3:0],m_axi_bus_res_AWCACHE[3:0],m_axi_bus_res_AWPROT[2:0],m_axi_bus_res_AWQOS[3:0],m_axi_bus_res_AWVALID,m_axi_bus_res_AWREADY,m_axi_bus_res_WDATA[31:0],m_axi_bus_res_WSTRB[3:0],m_axi_bus_res_WLAST,m_axi_bus_res_WVALID,m_axi_bus_res_WREADY,m_axi_bus_res_BRESP[1:0],m_axi_bus_res_BVALID,m_axi_bus_res_BREADY,m_axi_bus_res_ARADDR[31:0],m_axi_bus_res_ARLEN[7:0],m_axi_bus_res_ARSIZE[2:0],m_axi_bus_res_ARBURST[1:0],m_axi_bus_res_ARLOCK[1:0],m_axi_bus_res_ARREGION[3:0],m_axi_bus_res_ARCACHE[3:0],m_axi_bus_res_ARPROT[2:0],m_axi_bus_res_ARQOS[3:0],m_axi_bus_res_ARVALID,m_axi_bus_res_ARREADY,m_axi_bus_res_RDATA[31:0],m_axi_bus_res_RRESP[1:0],m_axi_bus_res_RLAST,m_axi_bus_res_RVALID,m_axi_bus_res_RREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "test_scalaire,Vivado 2021.1";
begin
end;
