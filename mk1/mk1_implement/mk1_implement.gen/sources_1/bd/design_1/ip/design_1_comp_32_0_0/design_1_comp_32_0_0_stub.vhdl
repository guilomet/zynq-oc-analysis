-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Thu Dec 30 15:25:27 2021
-- Host        : glomet-fixe running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/projet_m2/mk1/mk1_implement/mk1_implement.gen/sources_1/bd/design_1/ip/design_1_comp_32_0_0/design_1_comp_32_0_0_stub.vhdl
-- Design      : design_1_comp_32_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_comp_32_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    res : out STD_LOGIC
  );

end design_1_comp_32_0_0;

architecture stub of design_1_comp_32_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,res";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "comp_32,Vivado 2021.1";
begin
end;
