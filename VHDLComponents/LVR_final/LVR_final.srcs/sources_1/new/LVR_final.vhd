----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2024 22:42:39
-- Design Name: 
-- Module Name: LVR_final - Behavioral
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

entity LVR_final is
  Port (i_clk, i_set0, i_read : in std_logic; i_word : in std_logic_vector(7 downto 0); o_word : out std_logic_vector(7 downto 0));
end LVR_final;

architecture Behavioral of LVR_final is

signal saved : std_logic_vector(7 downto 0);

begin
o_word <= saved;
action: process(i_clk)
begin
        if i_clk'event and i_clk ='1' then
            if i_set0  = '1' then
                saved <= "00000000";
            elsif i_set0 = '0' and i_read = '1' then
                saved <= i_word;
            end if;
         end if;
     end process;
                

end Behavioral;
