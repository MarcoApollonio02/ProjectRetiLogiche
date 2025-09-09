----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 14.02.2024 11:29:19
-- Design Name: 
-- Module Name: CounterAdd_TestBench - CounterAdd_TestBench_Arch
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

entity CounterAdd_TestBench is
--  Port ( );
end CounterAdd_TestBench;

architecture CounterAdd_TestBench_Arch of CounterAdd_TestBench is
    constant CLOCK_PERIOD : time := 20 ns;
    signal tb_clk : std_logic := '0';
    signal tb_loadAdd, tb_increaseAdd : std_logic;
    signal tb_i_add : std_logic_vector(15 downto 0);
    signal tb_add : std_logic_vector(15 downto 0);
    signal tb_num_state : std_logic_vector(2 downto 0);
    component CounterAdd is
        port(
            i_clk : in std_logic;
            loadAdd : in std_logic;
            increaseAdd: in std_logic;
            i_add: in std_logic_vector(15 downto 0);
            add: out std_logic_vector(15 downto 0);
            num_state : out std_logic_vector(2 downto 0)
        );
    end component CounterAdd;
    
begin
    UUT: CounterAdd
    port map(
        i_clk => tb_clk,
        loadAdd => tb_loadAdd,
        increaseAdd => tb_increaseAdd,
        i_add => tb_i_add,
        add => tb_add,
        num_state => tb_num_state
    );
    
    tb_clk <= not tb_clk after CLOCK_PERIOD/2;
    
    test_routine : process
    
    begin
        wait for 1 ns;
        
        --tb_i_add <= (others=>'0');
        tb_loadAdd <= '0';
        tb_increaseAdd <='0';
        tb_i_add <= (0=> '1',others =>'0');
        wait for 1 ns;
        
        
        tb_loadAdd <= '0';
        wait for 1 ns;
        assert tb_add = "0000000000000000" report "Step 0 - Inizializzazione failed";
        wait until falling_edge(tb_clk);
        
        
        tb_loadAdd <= '1';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_add = "0000000000000001" report "Step 1.1 - Load failed";
        wait until falling_edge(tb_clk);
        
        tb_loadAdd <= '0';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_add = "0000000000000001" report "Step 2.1 - Temp failed";
        wait until falling_edge(tb_clk);
        
        tb_increaseAdd <= '1';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_add = "0000000000000001" report "Step 3.1 - Increase failed";
        wait until falling_edge(tb_clk);
        
        tb_increaseAdd <= '0';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_add = "0000000000000010" report "Step 2.2 - Temp failed";
        wait until falling_edge(tb_clk);
        
        tb_increaseAdd <= '1';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_add = "0000000000000010" report "Step 3.2 - Increase failed";
        wait until falling_edge(tb_clk);
        
        tb_increaseAdd <= '0';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_add = "0000000000000011" report "Step 2.3 - Temp failed";
        wait until falling_edge(tb_clk);
        
        tb_i_add <= (3=>'1', others=>'0');
        tb_loadAdd <= '1';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_add = "0000000000001000" report "Step 1.2 - Load failed";
        wait until falling_edge(tb_clk);
        
        tb_loadAdd <= '0';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_add = "0000000000001000" report "Step 2.4 - Temp failed";
        wait until falling_edge(tb_clk);
        
        tb_increaseAdd <= '1';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_add = "0000000000001000" report "Step 3.3 - Increase failed";
        wait until falling_edge(tb_clk);
        
        
        tb_increaseAdd <= '0';
        wait until rising_edge(tb_clk);
        wait for 1 ns;
        assert tb_add = "0000000000001001" report "Step 2.5 - Temp failed";
        
        wait;
    end process test_routine;
    
    
end CounterAdd_TestBench_Arch;
