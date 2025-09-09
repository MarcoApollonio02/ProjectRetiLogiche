----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.02.2024 08:01:24
-- Design Name: 
-- Module Name: CounterAdd - Behavioral
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

entity CounterAdd is
--  Port ( );
    Port (
         i_clk : in std_logic;
         loadAdd : in std_logic;
         increaseAdd: in std_logic;
         i_add: in std_logic_vector(15 downto 0);
         add: out std_logic_vector(15 downto 0);
         num_state : out std_logic_vector(2 downto 0)
         );
end CounterAdd;

architecture CounterAdd_Arch of CounterAdd is
    type S is (S0, S1, S2, S3);
    signal curr_state: S;
    signal count: std_logic_vector(15 downto 0):= (others=>'0');
    
begin

    state_proc : process(i_clk, loadAdd, increaseAdd)
    begin
        if(i_clk'event and i_clk='1') then
            --Domina loadAdd
            case loadAdd is
                when '0' =>
                    case increaseAdd is
                        when '0' =>
                           case curr_state is
                                --ok status
                                when S0 =>
                                    curr_state <= S0;
                                --ok status
                                when S1 =>
                                    curr_state <= S2;
                                --autoanello (vedere se metterlo negli stati d'errore)
                                when S2 =>
                                    curr_state <= S2;
                                -- ok status
                                when S3 =>
                                    curr_state <= S2;
                                
                                -- se altri valori allora errore (ritorno a S0)
                                when others =>
                                    curr_state <= S0;
                            end case;     
                        when '1' =>
                            case curr_state is
                                --non si deve verificare
                                when S0 =>
                                    curr_state <= S0;
                                --non si deve verificare
                                when S1 =>
                                    curr_state <= S0;
                                --ok status
                                when S2 =>
                                    curr_state <= S3;
                                --autoanello (vedere se metterlo negli stati d'errore)
                                when S3 =>
                                    curr_state <= S3;
                                
                                -- se altri valori allora errore (rritorno a S0)
                                when others =>
                                    curr_state <= S0;
                            end case;
                        -- se altri valori allora errore (rritorno a S0)
                        when others =>
                            curr_state <= S0;
                    end case;
                    
                when '1' =>
                    -- indipendendte da tutti se sono in un qualsiasi stato e mi viene
                    -- richiesto di fare il load faccio il load
                    case increaseAdd is
                        when others =>
                            case curr_state is
                                when others =>
                                    curr_state <= S1;
                            end case;
                        end case;
                -- se altri valori allora errore (ritorno a S0)
                when others =>
                    curr_state <= S0;       
            end case;           
        end if; 
    
    end process;
    
    -- Capire come assegnare add negli stati che non fanno nessuna operaz su di esso
    add_proc : process(loadAdd, increaseAdd, curr_state)
    begin
        case loadAdd is
            when '1' =>
                --unico stato che fa qualcosa con loadAdd è S1
                case curr_state is
                    when S1 =>
                        count <= i_add;
                        add <= i_add;
                    when others =>
                        --count <= count;
                        null;
                end case;
            when '0' =>
                case increaseAdd is
                    when '1' =>
                        case curr_state is
                            when S3 =>
                                count <= count + '1';
                            when others =>
                                --count <= (others=>'X');
                                null;
                        end case;
                        
                     when '0' =>
                        case curr_state is
                            --inizzializzazione valori
                            when S0 =>
                                add <= (others=>'0');
                                count <= (others=>'0');
                            when S2 =>
                                add <= count;
                            when others =>
                                --count <= (others=>'X');
                                null;
                        end case; 
                    when others =>
                        --count <= (others=>'X');
                        null;
                end case;
            when others =>
                        --count <= (others=>'X');
                        null;   
        end case;
    end process;

    
    process(curr_state)
    begin
    case curr_state is
        when S0 =>
            num_state <= "000";        
        when S1 =>
            num_state <= "001";
        when S2 =>
            num_state <= "010";
        when S3 =>
            num_state <= "011";
        when others =>
            num_state <= "XXX";
        end case;        
    end process;

end CounterAdd_Arch;
