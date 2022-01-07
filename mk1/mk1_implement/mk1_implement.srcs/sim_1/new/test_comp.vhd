----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.12.2021 16:28:09
-- Design Name: 
-- Module Name: test_comp - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_comp is
--  Port ( );
end test_comp;

architecture Behavioral of test_comp is

component comp_32 
    port(
        clk : in std_logic;
        rst : in std_logic;
        res : out std_logic);
end component;

signal clk : std_logic;
signal rst : std_logic;
signal res : std_logic;

begin
uut : comp_32 port map(
    clk => clk,
    rst => rst,
    res => res);
    
    process
    begin
        clk <= '0';
        wait for 50 ps;
        clk <= '1';
        wait for 50 ps;
    end process;
    
    process
    begin
        rst <= '0';
        wait for 50 ps;
        rst <= '1';
        wait for 50000 ns;
    end process;
    

end Behavioral;
