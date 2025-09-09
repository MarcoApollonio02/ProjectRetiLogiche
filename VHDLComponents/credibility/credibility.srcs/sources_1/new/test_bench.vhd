----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.02.2024 11:00:09
-- Design Name: 
-- Module Name: test_bench - Behavioral
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
use ieee.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_bench is
--  Port ( );
end test_bench;

architecture Behavioral of test_bench is

component credibilityT  is
    port(i_dcr, i_set31, i_set0, i_clk: in std_logic; o_word : out std_logic_vector(7 downto 0));    
end component;


constant clk_period : time := 20 ns;
signal clk: std_logic:='0';
signal dcr: std_logic:= '0';
signal set31: std_logic := '0';
signal set0: std_logic := '0';
signal word:std_logic_vector (7 downto 0);
begin

cred : credibilityT port map(i_dcr => dcr,i_set31 => set31, i_set0 => set0,i_clk => clk, o_word => word);
clk <= not clk after clk_period/2;

test :process
begin
    wait for 1ns;
    for i in 32 to 33 loop
        set31<='1';
        wait for clk_period;
        set31<='0';
        dcr<='1';
        wait for i*clk_period;
        dcr<='0';
        set0<='1';
        wait for 20ns;
        set0<='0';
    end loop;    
end process;         --it loops

end Behavioral;
