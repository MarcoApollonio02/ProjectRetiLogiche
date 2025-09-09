----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2024 15:32:40
-- Design Name: 
-- Module Name: CounterK_TestBench - Behavioral
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

entity CounterK_TestBench is
--  Port ( );
end CounterK_TestBench;

architecture Behavioral of CounterK_TestBench is

    constant CLOCK_PERIOD : time := 20 ns;
    signal tb_clk : std_logic := '0';
    signal tb_i_k : std_logic_vector(9 downto 0);
    signal tb_loadK, tb_decreaseK : std_logic;
    
    signal tb_end_o : std_logic;
    signal tb_num_state : std_logic_vector(2 downto 0);
    
    component CounterK is
    port(
    i_clk : in std_logic;
    i_k : in std_logic_vector( 9 downto 0);
    loadK : in std_logic;
    decreaseK : in std_logic;
    
    end_o : out std_logic;
    num_state : out std_logic_vector(2 downto 0)
    );
    end component CounterK;
    
    
begin
    UUT: CounterK
    port map(
        i_clk => tb_clk,
        i_k => tb_i_k,
        loadK => tb_loadK,
        decreaseK => tb_decreaseK,
        
        end_o => tb_end_o,
        num_state => tb_num_state
    );
    
    tb_clk <= not tb_clk after CLOCK_PERIOD/2;
    
    test_routine : process
    begin
        wait for 1 ns;
        
        tb_i_k <= (0=>'1', 1=>'1', others=>'0');
        tb_loadK <= '0';
        tb_decreaseK <= '0';
        
        wait until rising_edge(tb_clk);
        
        assert tb_num_state = "000" report "S0 - Inizialization failed";
        wait until rising_edge(tb_clk);
        
        tb_loadK <= '1';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "001" report "S1 - Load failed";
        wait until falling_edge(tb_clk);
        
        tb_loadK <= '0';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "1 S2 - check k failed";
        wait until falling_edge(tb_clk);
        
        --primo decremento
        tb_decreaseK <= '1';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "011" report "S3 - decrease k failed";
        wait until falling_edge(tb_clk);
        
        tb_decreaseK <= '0';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "2 S2 - check k failed";
        wait until falling_edge(tb_clk);
        
        --secondo decremento
        tb_decreaseK <= '1';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "011" report "S3 - decrease k failed";
        wait until falling_edge(tb_clk);
        
        tb_decreaseK <= '0';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "3 S2 - check k failed";
        wait until falling_edge(tb_clk);
        
        --terzo decremento
        tb_decreaseK <= '1';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "011" report "S3 - decrease k failed";
        wait until falling_edge(tb_clk);
        
        tb_decreaseK <= '0';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "4 S2 - check k failed";
        wait until falling_edge(tb_clk);
        
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "K SHOULD BE ZERO S2 - check k failed";
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "100" report "S4 - end 1 failed";
        assert tb_end_o = '1' report "NOT ZERO";
        wait until falling_edge(tb_clk);
        
        tb_loadK <= '1';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "001" report "S1 - Load failed";
        wait until falling_edge(tb_clk);
        
        tb_loadK <= '0';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "S2 - check k failed";
        wait until falling_edge(tb_clk);
        
        --primo decremento
        tb_decreaseK <= '1';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "011" report "S3 - decrease k failed";
        wait until falling_edge(tb_clk);
        
        tb_decreaseK <= '0';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "S2 - check k failed";
        wait until falling_edge(tb_clk);
        
        tb_loadK <= '1';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "001" report "S1 - Load failed";
        wait until falling_edge(tb_clk);
        
        tb_loadK <= '0';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "S2 - check k failed";
        wait until falling_edge(tb_clk);
        
        --primo decremento
        tb_decreaseK <= '1';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "011" report "S3 - decrease k failed";
        wait until falling_edge(tb_clk);
        
        tb_decreaseK <= '0';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "S2 - check k failed";
        wait until falling_edge(tb_clk);
        
        --secondo decremento
        tb_decreaseK <= '1';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "011" report "S3 - decrease k failed";
        wait until falling_edge(tb_clk);
        
        tb_decreaseK <= '0';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "S2 - check k failed";
        wait until falling_edge(tb_clk);
        
        --terzo decremento
        tb_decreaseK <= '1';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "011" report "S3 - decrease k failed";
        wait until falling_edge(tb_clk);
        
        tb_decreaseK <= '0';
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "010" report "S2 - check k failed";
        wait until falling_edge(tb_clk);
        
        
        --wait until rising_edge(tb_clk);
        --wait for 1 ns;
        --assert tb_num_state = "010" report "K SHOULD BE ZERO S2 - check k failed";
        
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_num_state = "100" report "S4 - end 1 failed";
        assert tb_end_o = '1' report "NOT ZERO";
        wait until falling_edge(tb_clk);
        
        wait;
    end process test_routine;
    
    
end Behavioral;
