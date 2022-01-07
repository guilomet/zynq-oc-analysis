----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.12.2021 22:53:04
-- Design Name: 
-- Module Name: comp_32 - Behavioral
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
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comp_32 is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           res : out STD_LOGIC);
end comp_32;

architecture Behavioral of comp_32 is

signal res_s : std_logic;
signal comp1 : std_logic_vector(9 downto 0);
signal comp2 : std_logic_vector(9 downto 0);
signal comp3 : std_logic_vector(5 downto 0);
begin
    res <= res_s;
    process (rst, clk)
    begin      
        if rst = '0' then
            res_s <= '0';
            comp1 <= (others=>'0');
            comp2 <= (others=>'0');
            comp3 <= (others=>'0');
        elsif rising_edge (clk) then
            if comp1 < "1111111111" then
                if comp2 < "1111111111" then
                    if comp3 < "111111" then
                        comp3 <= comp3 + 1;
                    else 
                        comp3 <= (others=>'0');
                        comp2 <= comp2 + 1;
                    end if;
                else 
                    comp2 <= (others=>'0');
                    comp1 <= comp1 + 1;
                end if;
             else 
                comp1 <= (others=>'0');
                res_s <= not(res_s);
             end if;
        end if;
    end process;

end Behavioral;
