----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2024 20:28:03
-- Design Name: 
-- Module Name: FlipFlopT - Behavioral
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

entity FlipFlopT is
  Port ( i_clk, i_toggle : in std_logic; o_value : out std_logic);
end FlipFlopT;

architecture Behavioral of FlipFlopT is
    
    signal state: std_logic :='0'; 
    
begin
    o_value <= state;
    
    update : process (i_clk)
    begin
        if i_clk'event and i_clk = '1' then
            if i_toggle = '1' then
                if state = '1'then
                    state <= '0';
                 elsif state = '0' then
                    state <= '1';
               end if;
            end if;
         end if;
     end process;
        

end Behavioral;
