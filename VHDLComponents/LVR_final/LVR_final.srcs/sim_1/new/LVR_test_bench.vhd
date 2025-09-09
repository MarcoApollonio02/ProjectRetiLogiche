----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2024 22:52:54
-- Design Name: 
-- Module Name: LVR_test_bench - Behavioral
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

entity LVR_test_bench is
--  Port ( );
end LVR_test_bench;

architecture Behavioral of LVR_test_bench is
component LVR_final is
    Port (i_clk, i_set0, i_read : in std_logic; i_word : in std_logic_vector(7 downto 0); o_word : out std_logic_vector(7 downto 0));
end component;
constant clk_period : time := 20 ns;
signal clk : std_logic :='0';
signal set0 : std_logic;
signal read: std_logic;
signal word: std_logic_vector(7 downto 0);
signal output : std_logic_vector(7 downto 0);

begin

LVR :LVR_final port map(i_clk=>clk, i_set0=>set0, i_read=>read, i_word=>word, o_word=>output);

clk <= not clk after clk_period/2;

testing : process
begin
    wait for 1 ns;
    word<= "11111111";
    read<='1';
    set0<='0';
    wait for 20 ns;
    read<='0';
    word<="10101010";
    wait for 20 ns;
    set0<='1';
    wait for 20 ns;
    word<= "01101001";
    read<='1';
    set0<='0';
    wait;
end process;

end Behavioral;
