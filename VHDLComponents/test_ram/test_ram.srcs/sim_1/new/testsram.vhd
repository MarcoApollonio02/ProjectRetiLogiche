----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2024 22:04:02
-- Design Name: 
-- Module Name: test_ram - Behavioral
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


-- TB EXAMPLE PFRL 2023-2024

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity test_ram is
end entity;


architecture testing of test_ram is

constant CLOCK_PERIOD : time := 20 ns;
signal tb_clk : std_logic := '0';
signal tb_o_mem_en :std_logic := '0';
signal tb_o_mem_we :std_logic := '0';
signal tb_o_mem_addr : std_logic_vector(15 downto 0) := "0000000000000000";
signal tb_o_mem_data : std_logic_vector (7 downto 0) := "00000000";
signal tb_i_mem_data : std_logic_vector (7 downto 0) := "00000000";

type ram_type is array (65535 downto 0) of std_logic_vector(7 downto 0);
    signal RAM : ram_type := (OTHERS => "00000000");
    
    begin
    
    tb_clk <= not tb_clk after CLOCK_PERIOD/2;

    -- Process related to the memory
    MEM : process (tb_clk)
    begin
        if tb_clk'event and tb_clk = '1' then
            if tb_o_mem_en = '1' then
                if tb_o_mem_we = '1' then
                    RAM(to_integer(unsigned(tb_o_mem_addr))) <= tb_o_mem_data after 1 ns;
                    tb_i_mem_data <= tb_o_mem_data after 1 ns;
                else
                    tb_i_mem_data <= RAM(to_integer(unsigned(tb_o_mem_addr))) after 1 ns;
                end if;
            end if;
        end if;
    end process;
    
  test: process
   begin
    wait for 1 ns;                          --scrive 129 all'indirizzo 32 della memoria
    tb_o_mem_addr<= "0000000000001000";
    tb_o_mem_data <="10000001";
    tb_o_mem_en <= '1';
    tb_o_mem_we <= '1';
    wait for 20 ns;                     --ciclo clock successivo 
    tb_o_mem_we <= '0';
    tb_o_mem_en <= '0';
    wait for 20 ns;                     -- faccio leggere dato sbagliato
    tb_o_mem_en <= '1'; 
    tb_o_mem_addr<= "0000000000001001";
    wait for 20 ns;
    tb_o_mem_addr<= "0000000000001000"; --continuo a leggere ma sull' ind precedente
    wait for 20 ns;
    tb_o_mem_en <= '0';    
    wait;
   end process;
end architecture;