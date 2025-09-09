----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2024 20:58:11
-- Design Name: 
-- Module Name: CredibilityT - Behavioral
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

entity CredibilityT is
  Port (i_dcr, i_set31, i_set0 , i_clk :in std_logic; o_word : out std_logic_vector (7 downto 0)); --priority impelemnted set31->set0->dcr
end CredibilityT;

architecture Behavioral of CredibilityT is

    component FlipFlopT is                                              --default state is zero
        Port ( i_clk, i_toggle : in std_logic; o_value : out std_logic);
    end component;
    
    constant msb : std_logic_vector(2 downto 0) := "000";
    
    signal togg : std_logic_vector(4 downto 0) := "00000";  --gives the toggle signal the flipflops
    
    signal notzero :std_logic :='0';  --checks if the word stored is non zero
    
    signal enabled_dcr : std_logic := '0'; 
    
    signal word :std_logic_vector(4 downto 0);
    
    signal minus: std_logic_vector(4 downto 0);
    
begin
    t0 :FlipFlopT port map(i_clk =>i_clk,i_toggle=>togg(0),o_value=>word(0));   --are rising edge triggered
    t1 :FlipFlopT port map(i_clk =>i_clk,i_toggle=>togg(1),o_value=>word(1));
    t2 :FlipFlopT port map(i_clk =>i_clk,i_toggle=>togg(2),o_value=>word(2));
    t3 :FlipFlopT port map(i_clk =>i_clk,i_toggle=>togg(3),o_value=>word(3));
    t4 :FlipFlopT port map(i_clk =>i_clk,i_toggle=>togg(4),o_value=>word(4));
    
    o_word(7 downto 5)<=msb;
    o_word(4 downto 0)<=word(4 downto 0);
    
    notzero<= word(0)or word(1)or word(2)or word(3)or word(4);
    enabled_dcr <= notzero and i_dcr;
    
    minus(0)<='1';                               --parallel impelementation of decreasing counter with T flip flops (5 bits) 
    minus(1)<=not word(0);                       --the vector minus contains the values for the T flops to decrease the counter by one
    minus(2)<=(not word(0)) and (not word(1));
    minus(3)<=(not word(0)) and (not word(1))and (not word(2));
    minus(4)<=(not word(0)) and (not word(1))and (not word(2))and (not word(3));
    
    
     action: process(i_clk,i_set31, i_set0, enabled_dcr)
        begin 
            if i_set31 = '1'  then          --if it is zero toggle
                togg(0) <= not word(0);
                togg(1) <= not word(1);
                togg(2) <= not word(2);
                togg(3) <= not word(3);
                togg(4) <= not word(4);
                
            elsif i_set31 = '0' and i_set0 = '1' then      --if it is one toggle
                togg(0) <= word(0);
                togg(1) <= word(1);
                togg(2) <= word(2);
                togg(3) <= word(3);
                togg(4) <= word(4);
                
            elsif enabled_dcr = '1' and i_set31 = '0' and i_set0 = '0' then --pass the values of toggle to the flipflops for a decrease       
                togg(0) <= minus(0);
                togg(1) <= minus(1);
                togg(2) <= minus(2);
                togg(3) <= minus(3);
                togg(4) <= minus(4);
                
            elsif enabled_dcr = '0' and i_set31 = '0' and i_set0 = '0' then --dont' change anything
                togg(0) <= '0';
                togg(1) <= '0';
                togg(2) <= '0';
                togg(3) <= '0';
                togg(4) <='0';
            end if;
     end process;
      
end Behavioral;

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
