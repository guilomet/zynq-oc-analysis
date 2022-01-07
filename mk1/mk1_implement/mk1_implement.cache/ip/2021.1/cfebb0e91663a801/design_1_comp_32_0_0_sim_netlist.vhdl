-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Thu Dec 30 15:25:26 2021
-- Host        : glomet-fixe running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_comp_32_0_0_sim_netlist.vhdl
-- Design      : design_1_comp_32_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_32 is
  port (
    res : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_32 is
  signal \comp1[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp1[9]_i_1_n_0\ : STD_LOGIC;
  signal comp1_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal comp2 : STD_LOGIC;
  signal \comp2[5]_i_1_n_0\ : STD_LOGIC;
  signal \comp2[9]_i_3_n_0\ : STD_LOGIC;
  signal comp2_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal comp3 : STD_LOGIC;
  signal \comp3[5]_i_3_n_0\ : STD_LOGIC;
  signal \comp3[5]_i_4_n_0\ : STD_LOGIC;
  signal \comp3[5]_i_5_n_0\ : STD_LOGIC;
  signal comp3_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^res\ : STD_LOGIC;
  signal res_s_i_1_n_0 : STD_LOGIC;
  signal res_s_i_2_n_0 : STD_LOGIC;
  signal res_s_i_3_n_0 : STD_LOGIC;
  signal res_s_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \comp1[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \comp1[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \comp1[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \comp1[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \comp1[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \comp1[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \comp1[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \comp2[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \comp2[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \comp2[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \comp2[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \comp2[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \comp2[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \comp2[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \comp2[9]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \comp3[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \comp3[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \comp3[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \comp3[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \comp3[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \comp3[5]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \comp3[5]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of res_s_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of res_s_i_4 : label is "soft_lutpair2";
begin
  res <= \^res\;
\comp1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => comp1_reg(0),
      O => \p_0_in__1\(0)
    );
\comp1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => comp1_reg(0),
      I1 => comp1_reg(1),
      O => \p_0_in__1\(1)
    );
\comp1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => comp1_reg(2),
      I1 => comp1_reg(0),
      I2 => comp1_reg(1),
      O => \p_0_in__1\(2)
    );
\comp1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => comp1_reg(3),
      I1 => comp1_reg(1),
      I2 => comp1_reg(0),
      I3 => comp1_reg(2),
      O => \p_0_in__1\(3)
    );
\comp1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => comp1_reg(4),
      I1 => comp1_reg(2),
      I2 => comp1_reg(0),
      I3 => comp1_reg(1),
      I4 => comp1_reg(3),
      O => \p_0_in__1\(4)
    );
\comp1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => comp1_reg(5),
      I1 => comp1_reg(4),
      I2 => comp1_reg(2),
      I3 => comp1_reg(0),
      I4 => comp1_reg(1),
      I5 => comp1_reg(3),
      O => \comp1[5]_i_1_n_0\
    );
\comp1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => comp1_reg(6),
      I1 => res_s_i_4_n_0,
      I2 => comp1_reg(5),
      O => \p_0_in__1\(6)
    );
\comp1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => comp1_reg(7),
      I1 => comp1_reg(5),
      I2 => res_s_i_4_n_0,
      I3 => comp1_reg(6),
      O => \p_0_in__1\(7)
    );
\comp1[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => comp1_reg(8),
      I1 => comp1_reg(6),
      I2 => comp1_reg(7),
      I3 => comp1_reg(5),
      I4 => res_s_i_4_n_0,
      O => \p_0_in__1\(8)
    );
\comp1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => res_s_i_4_n_0,
      I1 => \comp3[5]_i_5_n_0\,
      I2 => \comp3[5]_i_4_n_0\,
      I3 => \comp3[5]_i_3_n_0\,
      O => \comp1[9]_i_1_n_0\
    );
\comp1[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => comp1_reg(9),
      I1 => res_s_i_4_n_0,
      I2 => comp1_reg(5),
      I3 => comp1_reg(7),
      I4 => comp1_reg(6),
      I5 => comp1_reg(8),
      O => \p_0_in__1\(9)
    );
\comp1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \comp1[9]_i_1_n_0\,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__1\(0),
      Q => comp1_reg(0)
    );
\comp1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \comp1[9]_i_1_n_0\,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__1\(1),
      Q => comp1_reg(1)
    );
\comp1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \comp1[9]_i_1_n_0\,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__1\(2),
      Q => comp1_reg(2)
    );
\comp1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \comp1[9]_i_1_n_0\,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__1\(3),
      Q => comp1_reg(3)
    );
\comp1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \comp1[9]_i_1_n_0\,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__1\(4),
      Q => comp1_reg(4)
    );
\comp1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \comp1[9]_i_1_n_0\,
      CLR => res_s_i_2_n_0,
      D => \comp1[5]_i_1_n_0\,
      Q => comp1_reg(5)
    );
\comp1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \comp1[9]_i_1_n_0\,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__1\(6),
      Q => comp1_reg(6)
    );
\comp1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \comp1[9]_i_1_n_0\,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__1\(7),
      Q => comp1_reg(7)
    );
\comp1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \comp1[9]_i_1_n_0\,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__1\(8),
      Q => comp1_reg(8)
    );
\comp1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \comp1[9]_i_1_n_0\,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__1\(9),
      Q => comp1_reg(9)
    );
\comp2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => comp2_reg(0),
      O => \p_0_in__0\(0)
    );
\comp2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => comp2_reg(0),
      I1 => comp2_reg(1),
      O => \p_0_in__0\(1)
    );
\comp2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => comp2_reg(2),
      I1 => comp2_reg(0),
      I2 => comp2_reg(1),
      O => \p_0_in__0\(2)
    );
\comp2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => comp2_reg(3),
      I1 => comp2_reg(1),
      I2 => comp2_reg(0),
      I3 => comp2_reg(2),
      O => \p_0_in__0\(3)
    );
\comp2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => comp2_reg(4),
      I1 => comp2_reg(2),
      I2 => comp2_reg(0),
      I3 => comp2_reg(1),
      I4 => comp2_reg(3),
      O => \p_0_in__0\(4)
    );
\comp2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => comp2_reg(5),
      I1 => comp2_reg(4),
      I2 => comp2_reg(2),
      I3 => comp2_reg(0),
      I4 => comp2_reg(1),
      I5 => comp2_reg(3),
      O => \comp2[5]_i_1_n_0\
    );
\comp2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => comp2_reg(6),
      I1 => \comp3[5]_i_4_n_0\,
      I2 => comp2_reg(5),
      O => \p_0_in__0\(6)
    );
\comp2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => comp2_reg(7),
      I1 => comp2_reg(5),
      I2 => \comp3[5]_i_4_n_0\,
      I3 => comp2_reg(6),
      O => \p_0_in__0\(7)
    );
\comp2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => comp2_reg(8),
      I1 => comp2_reg(6),
      I2 => \comp3[5]_i_4_n_0\,
      I3 => comp2_reg(5),
      I4 => comp2_reg(7),
      O => \p_0_in__0\(8)
    );
\comp2[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F111F111F1110000"
    )
        port map (
      I0 => \comp3[5]_i_4_n_0\,
      I1 => \comp3[5]_i_3_n_0\,
      I2 => comp3_reg(5),
      I3 => \comp2[9]_i_3_n_0\,
      I4 => \comp3[5]_i_5_n_0\,
      I5 => res_s_i_4_n_0,
      O => comp2
    );
\comp2[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => comp2_reg(9),
      I1 => comp2_reg(7),
      I2 => comp2_reg(5),
      I3 => \comp3[5]_i_4_n_0\,
      I4 => comp2_reg(6),
      I5 => comp2_reg(8),
      O => \p_0_in__0\(9)
    );
\comp2[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => comp3_reg(4),
      I1 => comp3_reg(3),
      I2 => comp3_reg(1),
      I3 => comp3_reg(0),
      I4 => comp3_reg(2),
      O => \comp2[9]_i_3_n_0\
    );
\comp2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp2,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__0\(0),
      Q => comp2_reg(0)
    );
\comp2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp2,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__0\(1),
      Q => comp2_reg(1)
    );
\comp2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp2,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__0\(2),
      Q => comp2_reg(2)
    );
\comp2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp2,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__0\(3),
      Q => comp2_reg(3)
    );
\comp2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp2,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__0\(4),
      Q => comp2_reg(4)
    );
\comp2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp2,
      CLR => res_s_i_2_n_0,
      D => \comp2[5]_i_1_n_0\,
      Q => comp2_reg(5)
    );
\comp2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp2,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__0\(6),
      Q => comp2_reg(6)
    );
\comp2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp2,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__0\(7),
      Q => comp2_reg(7)
    );
\comp2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp2,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__0\(8),
      Q => comp2_reg(8)
    );
\comp2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp2,
      CLR => res_s_i_2_n_0,
      D => \p_0_in__0\(9),
      Q => comp2_reg(9)
    );
\comp3[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => comp3_reg(0),
      O => p_0_in(0)
    );
\comp3[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => comp3_reg(0),
      I1 => comp3_reg(1),
      O => p_0_in(1)
    );
\comp3[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => comp3_reg(2),
      I1 => comp3_reg(0),
      I2 => comp3_reg(1),
      O => p_0_in(2)
    );
\comp3[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => comp3_reg(3),
      I1 => comp3_reg(1),
      I2 => comp3_reg(0),
      I3 => comp3_reg(2),
      O => p_0_in(3)
    );
\comp3[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => comp3_reg(2),
      I1 => comp3_reg(0),
      I2 => comp3_reg(1),
      I3 => comp3_reg(3),
      I4 => comp3_reg(4),
      O => p_0_in(4)
    );
\comp3[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => \comp3[5]_i_3_n_0\,
      I1 => \comp3[5]_i_4_n_0\,
      I2 => \comp3[5]_i_5_n_0\,
      I3 => res_s_i_4_n_0,
      O => comp3
    );
\comp3[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => comp3_reg(5),
      I1 => comp3_reg(2),
      I2 => comp3_reg(0),
      I3 => comp3_reg(1),
      I4 => comp3_reg(3),
      I5 => comp3_reg(4),
      O => p_0_in(5)
    );
\comp3[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => comp2_reg(7),
      I1 => comp2_reg(6),
      I2 => comp2_reg(5),
      I3 => comp2_reg(8),
      I4 => comp2_reg(9),
      O => \comp3[5]_i_3_n_0\
    );
\comp3[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => comp2_reg(3),
      I1 => comp2_reg(1),
      I2 => comp2_reg(0),
      I3 => comp2_reg(2),
      I4 => comp2_reg(4),
      O => \comp3[5]_i_4_n_0\
    );
\comp3[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => comp1_reg(7),
      I1 => comp1_reg(6),
      I2 => comp1_reg(5),
      I3 => comp1_reg(8),
      I4 => comp1_reg(9),
      O => \comp3[5]_i_5_n_0\
    );
\comp3_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp3,
      CLR => res_s_i_2_n_0,
      D => p_0_in(0),
      Q => comp3_reg(0)
    );
\comp3_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp3,
      CLR => res_s_i_2_n_0,
      D => p_0_in(1),
      Q => comp3_reg(1)
    );
\comp3_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp3,
      CLR => res_s_i_2_n_0,
      D => p_0_in(2),
      Q => comp3_reg(2)
    );
\comp3_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp3,
      CLR => res_s_i_2_n_0,
      D => p_0_in(3),
      Q => comp3_reg(3)
    );
\comp3_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp3,
      CLR => res_s_i_2_n_0,
      D => p_0_in(4),
      Q => comp3_reg(4)
    );
\comp3_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => comp3,
      CLR => res_s_i_2_n_0,
      D => p_0_in(5),
      Q => comp3_reg(5)
    );
res_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00004000"
    )
        port map (
      I0 => res_s_i_3_n_0,
      I1 => comp1_reg(5),
      I2 => comp1_reg(8),
      I3 => comp1_reg(9),
      I4 => res_s_i_4_n_0,
      I5 => \^res\,
      O => res_s_i_1_n_0
    );
res_s_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => res_s_i_2_n_0
    );
res_s_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => comp1_reg(6),
      I1 => comp1_reg(7),
      O => res_s_i_3_n_0
    );
res_s_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => comp1_reg(3),
      I1 => comp1_reg(1),
      I2 => comp1_reg(0),
      I3 => comp1_reg(2),
      I4 => comp1_reg(4),
      O => res_s_i_4_n_0
    );
res_s_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => res_s_i_2_n_0,
      D => res_s_i_1_n_0,
      Q => \^res\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_comp_32_0_0,comp_32,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "comp_32,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_32
     port map (
      clk => clk,
      res => res,
      rst => rst
    );
end STRUCTURE;
