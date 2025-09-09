----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.02.2024 13:00:39
-- Design Name: 
-- Module Name: CounterK - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CounterK is
    port(
        i_clk : in std_logic;
        i_k : in std_logic_vector( 9 downto 0);
        loadK : in std_logic;
        decreaseK : in std_logic;
        
        end_o : out std_logic;
        num_state : out std_logic_vector(2 downto 0)
    );
end CounterK;

architecture Behavioral of CounterK is
    
    type S is (S0, S1, S2, S3, S4);
    signal counterK_state : S;
    signal k : std_logic_vector( 9 downto 0);
    
begin

    counterK_state_process : process(i_clk, loadK, decreaseK, k) --vedere se k nella sensitivity list va bene
    begin
    
        if(k = "0000000000") then
            counterK_state <= S4;
            end_o <= '1';
        else
            end_o <= '0';
        end if;
        
        if(rising_edge(i_clk)) then
            
            case loadK is
                when '0'=>
                    case decreaseK is
                        when '0' =>
                            case counterK_state is
                                when S0 =>
                                    counterK_state <= S0;
                                when S1 =>
                                    counterK_state <= S2;
                                when S2 =>
                                    counterK_state <= S2;
                                when S3 =>
                                    counterK_state <= S2;
                                when S4 =>
                                    counterK_state <= S4;
                            end case;
                    
                        when '1' =>
                            case counterK_state is
                            -- non si deve verificare
                                when S0 =>
                                    counterK_state <= S0;
                                --non si deve verificare
                                when S1 =>
                                    counterK_state <= S0;
                                    
                                --verificare che k !=0
                                --non si dovrebbe verificare
                                when S2 =>
                                    counterK_state <= S3;
                                    k <= k - 1;                                    
                                when S3 =>
                                    counterK_state <= S3;
                                --non si deve verificare
                                when S4 =>
                                    counterK_state <= S0;
                            end case;
                        when others =>
                            counterK_state <= S0;
                    end case;
                    
                when '1' =>
                    -- indipendendte da tutti se sono in un qualsiasi stato e mi viene
                    -- richiesto di fare il load faccio il load
                    case decreaseK is
                        when others =>
                            case counterK_state is
                                when others =>
                                    counterK_state <= S1;
                                    k <= i_k;
                            end case;
                        end case;
                -- se altri valori allora errore (ritorno a S0)
                when others =>
                    counterK_state <= S0;
            end case;
        end if;
    
    
    
    end process counterK_state_process;
    
    
    
    
    process(counterK_state)
    begin
    case counterK_state is
        when S0 =>
            num_state <= "000";        
        when S1 =>
            num_state <= "001";
        when S2 =>
            num_state <= "010";
        when S3 =>
            num_state <= "011";
        when S4 =>
            num_state <= "100";
        when others =>
            num_state <= "XXX";
        end case;        
    end process;
end Behavioral;
