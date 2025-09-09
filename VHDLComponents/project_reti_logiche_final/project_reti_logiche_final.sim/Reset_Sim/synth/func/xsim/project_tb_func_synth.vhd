-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
-- Date        : Fri Mar  1 09:43:39 2024
-- Host        : DESKTOP-6G38AS2 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/marco/VivadoProjects/project_reti_logiche_final/project_reti_logiche_final.sim/Reset_Sim/synth/func/xsim/project_tb_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CounterAdd is
  port (
    o_mem_addr_OBUF : out STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    loadK : in STD_LOGIC;
    \counterAdd_state_reg[0]_0\ : in STD_LOGIC;
    i_add_IBUF : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end CounterAdd;

architecture STRUCTURE of CounterAdd is
  signal count : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[0]_i_7_n_0\ : STD_LOGIC;
  signal \count[12]_i_2_n_0\ : STD_LOGIC;
  signal \count[12]_i_3_n_0\ : STD_LOGIC;
  signal \count[12]_i_4_n_0\ : STD_LOGIC;
  signal \count[12]_i_5_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal counterAdd_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \counterAdd_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \counterAdd_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^o_mem_addr_obuf\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counterAdd_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counterAdd_state[1]_i_1\ : label is "soft_lutpair0";
begin
  o_mem_addr_OBUF(15 downto 0) <= \^o_mem_addr_obuf\(15 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F20"
    )
        port map (
      I0 => counterAdd_state(1),
      I1 => counterAdd_state(0),
      I2 => \counterAdd_state_reg[0]_0\,
      I3 => loadK,
      O => count
    );
\count[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(0),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(0),
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(3),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(3),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(2),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(2),
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(1),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(1),
      O => \count[0]_i_6_n_0\
    );
\count[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^o_mem_addr_obuf\(0),
      I1 => i_add_IBUF(0),
      I2 => loadK,
      O => \count[0]_i_7_n_0\
    );
\count[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(15),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(15),
      O => \count[12]_i_2_n_0\
    );
\count[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(14),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(14),
      O => \count[12]_i_3_n_0\
    );
\count[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(13),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(13),
      O => \count[12]_i_4_n_0\
    );
\count[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(12),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(12),
      O => \count[12]_i_5_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(7),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(7),
      O => \count[4]_i_2_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(6),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(6),
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(5),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(5),
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(4),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(4),
      O => \count[4]_i_5_n_0\
    );
\count[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(11),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(11),
      O => \count[8]_i_2_n_0\
    );
\count[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(10),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(10),
      O => \count[8]_i_3_n_0\
    );
\count[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(9),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(9),
      O => \count[8]_i_4_n_0\
    );
\count[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_add_IBUF(8),
      I1 => loadK,
      I2 => \^o_mem_addr_obuf\(8),
      O => \count[8]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[0]_i_2_n_7\,
      Q => \^o_mem_addr_obuf\(0),
      R => '0'
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2) => \count_reg[0]_i_2_n_1\,
      CO(1) => \count_reg[0]_i_2_n_2\,
      CO(0) => \count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count[0]_i_3_n_0\,
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3) => \count[0]_i_4_n_0\,
      S(2) => \count[0]_i_5_n_0\,
      S(1) => \count[0]_i_6_n_0\,
      S(0) => \count[0]_i_7_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[8]_i_1_n_5\,
      Q => \^o_mem_addr_obuf\(10),
      R => '0'
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[8]_i_1_n_4\,
      Q => \^o_mem_addr_obuf\(11),
      R => '0'
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[12]_i_1_n_7\,
      Q => \^o_mem_addr_obuf\(12),
      R => '0'
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \NLW_count_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3) => \count[12]_i_2_n_0\,
      S(2) => \count[12]_i_3_n_0\,
      S(1) => \count[12]_i_4_n_0\,
      S(0) => \count[12]_i_5_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[12]_i_1_n_6\,
      Q => \^o_mem_addr_obuf\(13),
      R => '0'
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[12]_i_1_n_5\,
      Q => \^o_mem_addr_obuf\(14),
      R => '0'
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[12]_i_1_n_4\,
      Q => \^o_mem_addr_obuf\(15),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[0]_i_2_n_6\,
      Q => \^o_mem_addr_obuf\(1),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[0]_i_2_n_5\,
      Q => \^o_mem_addr_obuf\(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[0]_i_2_n_4\,
      Q => \^o_mem_addr_obuf\(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[4]_i_1_n_7\,
      Q => \^o_mem_addr_obuf\(4),
      R => '0'
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => \count[4]_i_2_n_0\,
      S(2) => \count[4]_i_3_n_0\,
      S(1) => \count[4]_i_4_n_0\,
      S(0) => \count[4]_i_5_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[4]_i_1_n_6\,
      Q => \^o_mem_addr_obuf\(5),
      R => '0'
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[4]_i_1_n_5\,
      Q => \^o_mem_addr_obuf\(6),
      R => '0'
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[4]_i_1_n_4\,
      Q => \^o_mem_addr_obuf\(7),
      R => '0'
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[8]_i_1_n_7\,
      Q => \^o_mem_addr_obuf\(8),
      R => '0'
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3) => \count[8]_i_2_n_0\,
      S(2) => \count[8]_i_3_n_0\,
      S(1) => \count[8]_i_4_n_0\,
      S(0) => \count[8]_i_5_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => count,
      D => \count_reg[8]_i_1_n_6\,
      Q => \^o_mem_addr_obuf\(9),
      R => '0'
    );
\counterAdd_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4A"
    )
        port map (
      I0 => loadK,
      I1 => counterAdd_state(1),
      I2 => \counterAdd_state_reg[0]_0\,
      O => \counterAdd_state[0]_i_1_n_0\
    );
\counterAdd_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => counterAdd_state(1),
      I1 => counterAdd_state(0),
      I2 => \counterAdd_state_reg[0]_0\,
      I3 => loadK,
      O => \counterAdd_state[1]_i_1_n_0\
    );
\counterAdd_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \counterAdd_state[0]_i_1_n_0\,
      Q => counterAdd_state(0),
      R => '0'
    );
\counterAdd_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \counterAdd_state[1]_i_1_n_0\,
      Q => counterAdd_state(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CounterK is
  port (
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_controller_state_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_controller_state_reg[2]_0\ : out STD_LOGIC;
    \i_mem_data[2]\ : out STD_LOGIC;
    increaseAdd : out STD_LOGIC;
    loadK : in STD_LOGIC;
    i_k_IBUF : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_start_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mux_selector : in STD_LOGIC;
    \FSM_sequential_controller_state[1]_i_2_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
end CounterK;

architecture STRUCTURE of CounterK is
  signal \FSM_sequential_controller_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_controller_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_controller_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_controller_state[3]_i_2_n_0\ : STD_LOGIC;
  signal counterK_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \counterK_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \counterK_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^i_mem_data[2]\ : STD_LOGIC;
  signal k : STD_LOGIC;
  signal \k[4]_i_2_n_0\ : STD_LOGIC;
  signal \k[5]_i_2_n_0\ : STD_LOGIC;
  signal \k[8]_i_2_n_0\ : STD_LOGIC;
  signal \k[9]_i_3_n_0\ : STD_LOGIC;
  signal k_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_controller_state[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_controller_state[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counterK_state[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counterK_state[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of increaseAdd_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \k[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \k[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \k[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \k[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \k[9]_i_3\ : label is "soft_lutpair1";
begin
  \i_mem_data[2]\ <= \^i_mem_data[2]\;
\FSM_sequential_controller_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77CF77CD77CD47"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \FSM_sequential_controller_state[3]_i_2_n_0\,
      I5 => Q(2),
      O => D(0)
    );
\FSM_sequential_controller_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCFFCCEFCFCFCCC"
    )
        port map (
      I0 => \FSM_sequential_controller_state[3]_i_2_n_0\,
      I1 => \FSM_sequential_controller_state[1]_i_2_n_0\,
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(2),
      I5 => Q(1),
      O => D(1)
    );
\FSM_sequential_controller_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FC0000AAAA0000"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => \FSM_sequential_controller_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_controller_state[1]_i_4_n_0\,
      I3 => Q(2),
      I4 => Q(0),
      I5 => Q(1),
      O => \FSM_sequential_controller_state[1]_i_2_n_0\
    );
\FSM_sequential_controller_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_controller_state[1]_i_2_0\(1),
      I1 => \FSM_sequential_controller_state[1]_i_2_0\(0),
      I2 => \FSM_sequential_controller_state[1]_i_2_0\(3),
      I3 => \FSM_sequential_controller_state[1]_i_2_0\(2),
      O => \FSM_sequential_controller_state[1]_i_3_n_0\
    );
\FSM_sequential_controller_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_controller_state[1]_i_2_0\(5),
      I1 => \FSM_sequential_controller_state[1]_i_2_0\(4),
      I2 => \FSM_sequential_controller_state[1]_i_2_0\(7),
      I3 => \FSM_sequential_controller_state[1]_i_2_0\(6),
      O => \FSM_sequential_controller_state[1]_i_4_n_0\
    );
\FSM_sequential_controller_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6240404062405140"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      I2 => i_start_IBUF,
      I3 => Q(1),
      I4 => Q(2),
      I5 => \FSM_sequential_controller_state[3]_i_2_n_0\,
      O => D(2)
    );
\FSM_sequential_controller_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => k_reg(8),
      I1 => k_reg(6),
      I2 => \k[8]_i_2_n_0\,
      I3 => k_reg(7),
      I4 => k_reg(9),
      O => \FSM_sequential_controller_state[3]_i_2_n_0\
    );
\counterK_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => counterK_state(1),
      I1 => mux_selector,
      I2 => loadK,
      O => \counterK_state[0]_i_1_n_0\
    );
\counterK_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CE"
    )
        port map (
      I0 => counterK_state(0),
      I1 => counterK_state(1),
      I2 => mux_selector,
      I3 => loadK,
      O => \counterK_state[1]_i_1_n_0\
    );
\counterK_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \counterK_state[0]_i_1_n_0\,
      Q => counterK_state(0),
      R => '0'
    );
\counterK_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \counterK_state[1]_i_1_n_0\,
      Q => counterK_state(1),
      R => '0'
    );
increaseAdd_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3003200000032000"
    )
        port map (
      I0 => \^i_mem_data[2]\,
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \FSM_sequential_controller_state[3]_i_2_n_0\,
      O => increaseAdd
    );
increaseAdd_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_controller_state[1]_i_2_0\(2),
      I1 => \FSM_sequential_controller_state[1]_i_2_0\(3),
      I2 => \FSM_sequential_controller_state[1]_i_2_0\(0),
      I3 => \FSM_sequential_controller_state[1]_i_2_0\(1),
      I4 => \FSM_sequential_controller_state[1]_i_4_n_0\,
      O => \^i_mem_data[2]\
    );
\k[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => i_k_IBUF(0),
      I1 => loadK,
      I2 => k_reg(0),
      O => p_0_in(0)
    );
\k[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => k_reg(1),
      I1 => k_reg(0),
      I2 => loadK,
      I3 => i_k_IBUF(1),
      O => p_0_in(1)
    );
\k[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => k_reg(2),
      I1 => k_reg(0),
      I2 => k_reg(1),
      I3 => loadK,
      I4 => i_k_IBUF(2),
      O => p_0_in(2)
    );
\k[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA90000AAA9"
    )
        port map (
      I0 => k_reg(3),
      I1 => k_reg(1),
      I2 => k_reg(0),
      I3 => k_reg(2),
      I4 => loadK,
      I5 => i_k_IBUF(3),
      O => p_0_in(3)
    );
\k[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => k_reg(4),
      I1 => \k[4]_i_2_n_0\,
      I2 => loadK,
      I3 => i_k_IBUF(4),
      O => p_0_in(4)
    );
\k[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => k_reg(2),
      I1 => k_reg(0),
      I2 => k_reg(1),
      I3 => k_reg(3),
      O => \k[4]_i_2_n_0\
    );
\k[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => k_reg(5),
      I1 => \k[5]_i_2_n_0\,
      I2 => loadK,
      I3 => i_k_IBUF(5),
      O => p_0_in(5)
    );
\k[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => k_reg(3),
      I1 => k_reg(1),
      I2 => k_reg(0),
      I3 => k_reg(2),
      I4 => k_reg(4),
      O => \k[5]_i_2_n_0\
    );
\k[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => k_reg(6),
      I1 => \k[8]_i_2_n_0\,
      I2 => loadK,
      I3 => i_k_IBUF(6),
      O => p_0_in(6)
    );
\k[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => k_reg(7),
      I1 => \k[8]_i_2_n_0\,
      I2 => k_reg(6),
      I3 => loadK,
      I4 => i_k_IBUF(7),
      O => p_0_in(7)
    );
\k[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA90000AAA9"
    )
        port map (
      I0 => k_reg(8),
      I1 => k_reg(6),
      I2 => \k[8]_i_2_n_0\,
      I3 => k_reg(7),
      I4 => loadK,
      I5 => i_k_IBUF(8),
      O => p_0_in(8)
    );
\k[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => k_reg(4),
      I1 => k_reg(2),
      I2 => k_reg(0),
      I3 => k_reg(1),
      I4 => k_reg(3),
      I5 => k_reg(5),
      O => \k[8]_i_2_n_0\
    );
\k[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F20"
    )
        port map (
      I0 => counterK_state(1),
      I1 => counterK_state(0),
      I2 => mux_selector,
      I3 => loadK,
      O => k
    );
\k[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F909"
    )
        port map (
      I0 => k_reg(9),
      I1 => \k[9]_i_3_n_0\,
      I2 => loadK,
      I3 => i_k_IBUF(9),
      O => p_0_in(9)
    );
\k[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => k_reg(7),
      I1 => \k[8]_i_2_n_0\,
      I2 => k_reg(6),
      I3 => k_reg(8),
      O => \k[9]_i_3_n_0\
    );
\k_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => k,
      D => p_0_in(0),
      Q => k_reg(0),
      R => '0'
    );
\k_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => k,
      D => p_0_in(1),
      Q => k_reg(1),
      R => '0'
    );
\k_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => k,
      D => p_0_in(2),
      Q => k_reg(2),
      R => '0'
    );
\k_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => k,
      D => p_0_in(3),
      Q => k_reg(3),
      R => '0'
    );
\k_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => k,
      D => p_0_in(4),
      Q => k_reg(4),
      R => '0'
    );
\k_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => k,
      D => p_0_in(5),
      Q => k_reg(5),
      R => '0'
    );
\k_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => k,
      D => p_0_in(6),
      Q => k_reg(6),
      R => '0'
    );
\k_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => k,
      D => p_0_in(7),
      Q => k_reg(7),
      R => '0'
    );
\k_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => k,
      D => p_0_in(8),
      Q => k_reg(8),
      R => '0'
    );
\k_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => k,
      D => p_0_in(9),
      Q => k_reg(9),
      R => '0'
    );
o_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003000000A0300"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => \FSM_sequential_controller_state[3]_i_2_n_0\,
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(0),
      O => \FSM_sequential_controller_state_reg[2]\
    );
o_mem_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003311CC0000FC00"
    )
        port map (
      I0 => \^i_mem_data[2]\,
      I1 => Q(2),
      I2 => \FSM_sequential_controller_state[3]_i_2_n_0\,
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(0),
      O => \FSM_sequential_controller_state_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FlipFlopT is
  port (
    o_wordCredibility : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_reg_0 : out STD_LOGIC;
    i_dcrCredibility_reg : out STD_LOGIC;
    o_mem_data_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_reg_1 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    state_reg_2 : in STD_LOGIC;
    i_set31 : in STD_LOGIC;
    mux_selector : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end FlipFlopT;

architecture STRUCTURE of FlipFlopT is
  signal \^o_wordcredibility\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of state_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of state_i_3 : label is "soft_lutpair6";
begin
  o_wordCredibility(0) <= \^o_wordcredibility\(0);
\o_mem_data_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o_wordcredibility\(0),
      I1 => mux_selector,
      I2 => Q(0),
      O => o_mem_data_OBUF(0)
    );
state_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^o_wordcredibility\(0),
      I1 => state_reg_2,
      I2 => i_set31,
      O => state_reg_0
    );
state_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_reg_2,
      I1 => \^o_wordcredibility\(0),
      O => i_dcrCredibility_reg
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => state_reg_1,
      Q => \^o_wordcredibility\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FlipFlopT_0 is
  port (
    o_wordCredibility : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_reg_0 : out STD_LOGIC;
    o_mem_data_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_read_reg : out STD_LOGIC;
    state_reg_1 : out STD_LOGIC;
    state_reg_2 : out STD_LOGIC;
    state_reg_3 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    state_reg_4 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mux_selector : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_set31 : in STD_LOGIC;
    state_reg_5 : in STD_LOGIC;
    state_reg_6 : in STD_LOGIC;
    state_reg_7 : in STD_LOGIC;
    state_reg_8 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FlipFlopT_0 : entity is "FlipFlopT";
end FlipFlopT_0;

architecture STRUCTURE of FlipFlopT_0 is
  signal \^o_wordcredibility\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^state_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[1]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \state_i_2__0\ : label is "soft_lutpair7";
begin
  o_wordCredibility(0) <= \^o_wordcredibility\(0);
  state_reg_0 <= \^state_reg_0\;
\o_mem_data_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o_wordcredibility\(0),
      I1 => mux_selector,
      I2 => Q(0),
      O => o_mem_data_OBUF(0)
    );
\state_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEEAAFFAABAAAAA"
    )
        port map (
      I0 => i_set31,
      I1 => \^o_wordcredibility\(0),
      I2 => state_reg_5,
      I3 => state_reg_6,
      I4 => state_reg_7,
      I5 => state_reg_4(0),
      O => i_read_reg
    );
\state_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00AFFFFF0040"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => state_reg_4(2),
      I2 => state_reg_7,
      I3 => state_reg_6,
      I4 => i_set31,
      I5 => state_reg_4(1),
      O => state_reg_1
    );
\state_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEF00EFFFFF0000"
    )
        port map (
      I0 => \^state_reg_0\,
      I1 => state_reg_4(1),
      I2 => state_reg_8,
      I3 => state_reg_6,
      I4 => i_set31,
      I5 => state_reg_4(2),
      O => state_reg_2
    );
\state_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^o_wordcredibility\(0),
      I1 => state_reg_4(0),
      O => \^state_reg_0\
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => state_reg_3,
      Q => \^o_wordcredibility\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FlipFlopT_1 is
  port (
    state_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_mem_data_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_reg_1 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    mux_selector : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FlipFlopT_1 : entity is "FlipFlopT";
end FlipFlopT_1;

architecture STRUCTURE of FlipFlopT_1 is
  signal \^state_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  state_reg_0(0) <= \^state_reg_0\(0);
\o_mem_data_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^state_reg_0\(0),
      I1 => mux_selector,
      I2 => Q(0),
      O => o_mem_data_OBUF(0)
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => state_reg_1,
      Q => \^state_reg_0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FlipFlopT_2 is
  port (
    state_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_reg_1 : out STD_LOGIC;
    o_mem_data_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    i_set0_reg : out STD_LOGIC;
    i_read_reg : out STD_LOGIC;
    state_reg_2 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    o_wordCredibility : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mux_selector : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    state_reg_3 : in STD_LOGIC;
    state_reg_4 : in STD_LOGIC;
    state_reg_5 : in STD_LOGIC;
    i_set31 : in STD_LOGIC;
    state_reg_6 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FlipFlopT_2 : entity is "FlipFlopT";
end FlipFlopT_2;

architecture STRUCTURE of FlipFlopT_2 is
  signal \^state_reg_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^state_reg_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[3]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state_i_2__1\ : label is "soft_lutpair8";
begin
  state_reg_0(0) <= \^state_reg_0\(0);
  state_reg_1 <= \^state_reg_1\;
\o_mem_data_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^state_reg_0\(0),
      I1 => mux_selector,
      I2 => Q(0),
      O => o_mem_data_OBUF(0)
    );
state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0055FFFF5400"
    )
        port map (
      I0 => state_reg_3,
      I1 => \^state_reg_1\,
      I2 => state_reg_4,
      I3 => state_reg_5,
      I4 => i_set31,
      I5 => o_wordCredibility(0),
      O => i_set0_reg
    );
\state_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFFAAFEAAAA"
    )
        port map (
      I0 => i_set31,
      I1 => \^state_reg_1\,
      I2 => o_wordCredibility(2),
      I3 => state_reg_3,
      I4 => state_reg_6,
      I5 => o_wordCredibility(1),
      O => i_read_reg
    );
\state_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^state_reg_0\(0),
      I1 => o_wordCredibility(3),
      O => \^state_reg_1\
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => state_reg_2,
      Q => \^state_reg_0\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FlipFlopT_3 is
  port (
    o_wordCredibility : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_mem_data_OBUF : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_reg_0 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    mux_selector : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of FlipFlopT_3 : entity is "FlipFlopT";
end FlipFlopT_3;

architecture STRUCTURE of FlipFlopT_3 is
  signal \^o_wordcredibility\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  o_wordCredibility(0) <= \^o_wordcredibility\(0);
\o_mem_data_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^o_wordcredibility\(0),
      I1 => mux_selector,
      I2 => Q(0),
      O => o_mem_data_OBUF(0)
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => state_reg_0,
      Q => \^o_wordcredibility\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LVR is
  port (
    o_mem_data_OBUF : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mux_selector : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
end LVR;

architecture STRUCTURE of LVR is
  signal saved : STD_LOGIC_VECTOR ( 7 downto 5 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[6]_inst_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_mem_data_OBUF[7]_inst_i_1\ : label is "soft_lutpair9";
begin
\o_mem_data_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => saved(5),
      I1 => mux_selector,
      O => o_mem_data_OBUF(0)
    );
\o_mem_data_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => saved(6),
      I1 => mux_selector,
      O => o_mem_data_OBUF(1)
    );
\o_mem_data_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => saved(7),
      I1 => mux_selector,
      O => o_mem_data_OBUF(2)
    );
\saved_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\saved_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\saved_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => Q(2),
      R => SR(0)
    );
\saved_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => Q(3),
      R => SR(0)
    );
\saved_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => Q(4),
      R => SR(0)
    );
\saved_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(5),
      Q => saved(5),
      R => SR(0)
    );
\saved_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(6),
      Q => saved(6),
      R => SR(0)
    );
\saved_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(7),
      Q => saved(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CredibilityT is
  port (
    o_mem_data_OBUF : out STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    state_reg : in STD_LOGIC;
    i_set31 : in STD_LOGIC;
    mux_selector : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    state_reg_0 : in STD_LOGIC
  );
end CredibilityT;

architecture STRUCTURE of CredibilityT is
  signal o_wordCredibility : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal t0_n_1 : STD_LOGIC;
  signal t0_n_2 : STD_LOGIC;
  signal t1_n_1 : STD_LOGIC;
  signal t1_n_3 : STD_LOGIC;
  signal t1_n_4 : STD_LOGIC;
  signal t1_n_5 : STD_LOGIC;
  signal t3_n_1 : STD_LOGIC;
  signal t3_n_3 : STD_LOGIC;
  signal t3_n_4 : STD_LOGIC;
begin
t0: entity work.FlipFlopT
     port map (
      CLK => CLK,
      Q(0) => Q(0),
      i_dcrCredibility_reg => t0_n_2,
      i_set31 => i_set31,
      mux_selector => mux_selector,
      o_mem_data_OBUF(0) => o_mem_data_OBUF(0),
      o_wordCredibility(0) => o_wordCredibility(0),
      state_reg_0 => t0_n_1,
      state_reg_1 => t3_n_3,
      state_reg_2 => state_reg
    );
t1: entity work.FlipFlopT_0
     port map (
      CLK => CLK,
      Q(0) => Q(1),
      i_read_reg => t1_n_3,
      i_set31 => i_set31,
      mux_selector => mux_selector,
      o_mem_data_OBUF(0) => o_mem_data_OBUF(1),
      o_wordCredibility(0) => o_wordCredibility(1),
      state_reg_0 => t1_n_1,
      state_reg_1 => t1_n_4,
      state_reg_2 => t1_n_5,
      state_reg_3 => t3_n_4,
      state_reg_4(2 downto 0) => o_wordCredibility(4 downto 2),
      state_reg_5 => t3_n_1,
      state_reg_6 => state_reg_0,
      state_reg_7 => t0_n_2,
      state_reg_8 => t0_n_1
    );
t2: entity work.FlipFlopT_1
     port map (
      CLK => CLK,
      Q(0) => Q(2),
      mux_selector => mux_selector,
      o_mem_data_OBUF(0) => o_mem_data_OBUF(2),
      state_reg_0(0) => o_wordCredibility(2),
      state_reg_1 => t1_n_3
    );
t3: entity work.FlipFlopT_2
     port map (
      CLK => CLK,
      Q(0) => Q(3),
      i_read_reg => t3_n_4,
      i_set0_reg => t3_n_3,
      i_set31 => i_set31,
      mux_selector => mux_selector,
      o_mem_data_OBUF(0) => o_mem_data_OBUF(3),
      o_wordCredibility(3) => o_wordCredibility(4),
      o_wordCredibility(2 downto 0) => o_wordCredibility(2 downto 0),
      state_reg_0(0) => o_wordCredibility(3),
      state_reg_1 => t3_n_1,
      state_reg_2 => t1_n_4,
      state_reg_3 => state_reg_0,
      state_reg_4 => t1_n_1,
      state_reg_5 => state_reg,
      state_reg_6 => t0_n_2
    );
t4: entity work.FlipFlopT_3
     port map (
      CLK => CLK,
      Q(0) => Q(4),
      mux_selector => mux_selector,
      o_mem_data_OBUF(0) => o_mem_data_OBUF(4),
      o_wordCredibility(0) => o_wordCredibility(4),
      state_reg_0 => t1_n_5
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_add : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_k : in STD_LOGIC_VECTOR ( 9 downto 0 );
    o_done : out STD_LOGIC;
    o_mem_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    i_mem_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_mem_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_mem_we : out STD_LOGIC;
    o_mem_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal CounterK_inst_n_3 : STD_LOGIC;
  signal CounterK_inst_n_4 : STD_LOGIC;
  signal CounterK_inst_n_5 : STD_LOGIC;
  signal controller_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \controller_state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal decreaseK : STD_LOGIC;
  signal i_add_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_dcrCredibility : STD_LOGIC;
  signal i_dcrCredibility_reg_n_0 : STD_LOGIC;
  signal i_k_IBUF : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal i_mem_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_read : STD_LOGIC;
  signal i_rst_IBUF : STD_LOGIC;
  signal i_set0 : STD_LOGIC;
  signal i_set0_reg_n_0 : STD_LOGIC;
  signal i_set31 : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal increaseAdd : STD_LOGIC;
  signal increaseAdd_i_1_n_0 : STD_LOGIC;
  signal increaseAdd_reg_n_0 : STD_LOGIC;
  signal loadAdd : STD_LOGIC;
  signal loadK : STD_LOGIC;
  signal mux_selector : STD_LOGIC;
  signal o_done_OBUF : STD_LOGIC;
  signal o_mem_addr_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_mem_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_mem_en_OBUF : STD_LOGIC;
  signal o_mem_we_OBUF : STD_LOGIC;
  signal o_mem_we_i_1_n_0 : STD_LOGIC;
  signal saved : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_controller_state_reg[0]\ : label is "status_read_w:0011,status_read_0:0100,status_load:0010,status_start:0001,status_init:0000,status_write_credibility:0111,status_end:1000,status_increase_add_even:1001,status_increase_add_0:0101,status_read_not_0:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_controller_state_reg[1]\ : label is "status_read_w:0011,status_read_0:0100,status_load:0010,status_start:0001,status_init:0000,status_write_credibility:0111,status_end:1000,status_increase_add_even:1001,status_increase_add_0:0101,status_read_not_0:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_controller_state_reg[2]\ : label is "status_read_w:0011,status_read_0:0100,status_load:0010,status_start:0001,status_init:0000,status_write_credibility:0111,status_end:1000,status_increase_add_even:1001,status_increase_add_0:0101,status_read_not_0:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_controller_state_reg[3]\ : label is "status_read_w:0011,status_read_0:0100,status_load:0010,status_start:0001,status_init:0000,status_write_credibility:0111,status_end:1000,status_increase_add_even:1001,status_increase_add_0:0101,status_read_not_0:0110";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of decreaseK_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of i_dcrCredibility_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of i_read_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of i_set0_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of loadAdd_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of o_mem_we_i_1 : label is "soft_lutpair10";
begin
CounterAdd_inst: entity work.CounterAdd
     port map (
      CLK => i_clk_IBUF_BUFG,
      \counterAdd_state_reg[0]_0\ => increaseAdd_reg_n_0,
      i_add_IBUF(15 downto 0) => i_add_IBUF(15 downto 0),
      loadK => loadK,
      o_mem_addr_OBUF(15 downto 0) => o_mem_addr_OBUF(15 downto 0)
    );
CounterK_inst: entity work.CounterK
     port map (
      CLK => i_clk_IBUF_BUFG,
      D(2) => \controller_state__0\(3),
      D(1 downto 0) => \controller_state__0\(1 downto 0),
      \FSM_sequential_controller_state[1]_i_2_0\(7 downto 0) => i_mem_data_IBUF(7 downto 0),
      \FSM_sequential_controller_state_reg[2]\ => CounterK_inst_n_3,
      \FSM_sequential_controller_state_reg[2]_0\ => CounterK_inst_n_4,
      Q(3 downto 0) => controller_state(3 downto 0),
      i_k_IBUF(9 downto 0) => i_k_IBUF(9 downto 0),
      \i_mem_data[2]\ => CounterK_inst_n_5,
      i_start_IBUF => i_start_IBUF,
      increaseAdd => increaseAdd,
      loadK => loadK,
      mux_selector => mux_selector
    );
Credibility_inst: entity work.CredibilityT
     port map (
      CLK => i_clk_IBUF_BUFG,
      Q(4 downto 0) => saved(4 downto 0),
      i_set31 => i_set31,
      mux_selector => mux_selector,
      o_mem_data_OBUF(4 downto 0) => o_mem_data_OBUF(4 downto 0),
      state_reg => i_dcrCredibility_reg_n_0,
      state_reg_0 => i_set0_reg_n_0
    );
\FSM_sequential_controller_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006C"
    )
        port map (
      I0 => controller_state(1),
      I1 => controller_state(2),
      I2 => controller_state(0),
      I3 => controller_state(3),
      O => \controller_state__0\(2)
    );
\FSM_sequential_controller_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \controller_state__0\(0),
      Q => controller_state(0)
    );
\FSM_sequential_controller_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \controller_state__0\(1),
      Q => controller_state(1)
    );
\FSM_sequential_controller_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \controller_state__0\(2),
      Q => controller_state(2)
    );
\FSM_sequential_controller_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \controller_state__0\(3),
      Q => controller_state(3)
    );
LVR_inst: entity work.LVR
     port map (
      CLK => i_clk_IBUF_BUFG,
      D(7 downto 0) => i_mem_data_IBUF(7 downto 0),
      E(0) => i_set31,
      Q(4 downto 0) => saved(4 downto 0),
      SR(0) => i_set0_reg_n_0,
      mux_selector => mux_selector,
      o_mem_data_OBUF(2 downto 0) => o_mem_data_OBUF(7 downto 5)
    );
decreaseK_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1200"
    )
        port map (
      I0 => controller_state(1),
      I1 => controller_state(3),
      I2 => controller_state(0),
      I3 => controller_state(2),
      O => decreaseK
    );
decreaseK_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => increaseAdd_i_1_n_0,
      CLR => i_rst_IBUF,
      D => decreaseK,
      Q => mux_selector
    );
\i_add_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(0),
      O => i_add_IBUF(0)
    );
\i_add_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(10),
      O => i_add_IBUF(10)
    );
\i_add_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(11),
      O => i_add_IBUF(11)
    );
\i_add_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(12),
      O => i_add_IBUF(12)
    );
\i_add_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(13),
      O => i_add_IBUF(13)
    );
\i_add_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(14),
      O => i_add_IBUF(14)
    );
\i_add_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(15),
      O => i_add_IBUF(15)
    );
\i_add_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(1),
      O => i_add_IBUF(1)
    );
\i_add_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(2),
      O => i_add_IBUF(2)
    );
\i_add_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(3),
      O => i_add_IBUF(3)
    );
\i_add_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(4),
      O => i_add_IBUF(4)
    );
\i_add_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(5),
      O => i_add_IBUF(5)
    );
\i_add_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(6),
      O => i_add_IBUF(6)
    );
\i_add_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(7),
      O => i_add_IBUF(7)
    );
\i_add_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(8),
      O => i_add_IBUF(8)
    );
\i_add_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_add(9),
      O => i_add_IBUF(9)
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
i_dcrCredibility_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => controller_state(0),
      I1 => controller_state(2),
      I2 => controller_state(3),
      I3 => controller_state(1),
      O => i_dcrCredibility
    );
i_dcrCredibility_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => increaseAdd_i_1_n_0,
      CLR => i_rst_IBUF,
      D => i_dcrCredibility,
      Q => i_dcrCredibility_reg_n_0
    );
\i_k_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(0),
      O => i_k_IBUF(0)
    );
\i_k_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(1),
      O => i_k_IBUF(1)
    );
\i_k_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(2),
      O => i_k_IBUF(2)
    );
\i_k_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(3),
      O => i_k_IBUF(3)
    );
\i_k_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(4),
      O => i_k_IBUF(4)
    );
\i_k_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(5),
      O => i_k_IBUF(5)
    );
\i_k_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(6),
      O => i_k_IBUF(6)
    );
\i_k_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(7),
      O => i_k_IBUF(7)
    );
\i_k_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(8),
      O => i_k_IBUF(8)
    );
\i_k_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_k(9),
      O => i_k_IBUF(9)
    );
\i_mem_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(0),
      O => i_mem_data_IBUF(0)
    );
\i_mem_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(1),
      O => i_mem_data_IBUF(1)
    );
\i_mem_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(2),
      O => i_mem_data_IBUF(2)
    );
\i_mem_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(3),
      O => i_mem_data_IBUF(3)
    );
\i_mem_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(4),
      O => i_mem_data_IBUF(4)
    );
\i_mem_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(5),
      O => i_mem_data_IBUF(5)
    );
\i_mem_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(6),
      O => i_mem_data_IBUF(6)
    );
\i_mem_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_mem_data(7),
      O => i_mem_data_IBUF(7)
    );
i_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => CounterK_inst_n_5,
      I1 => controller_state(3),
      I2 => controller_state(1),
      I3 => controller_state(0),
      I4 => controller_state(2),
      O => i_read
    );
i_read_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => increaseAdd_i_1_n_0,
      CLR => i_rst_IBUF,
      D => i_read,
      Q => i_set31
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_set0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000017"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => controller_state(0),
      I2 => controller_state(3),
      I3 => controller_state(1),
      I4 => controller_state(2),
      O => i_set0
    );
i_set0_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => increaseAdd_i_1_n_0,
      CLR => i_rst_IBUF,
      D => i_set0,
      Q => i_set0_reg_n_0
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
increaseAdd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => controller_state(2),
      I1 => controller_state(1),
      I2 => controller_state(3),
      O => increaseAdd_i_1_n_0
    );
increaseAdd_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => increaseAdd_i_1_n_0,
      CLR => i_rst_IBUF,
      D => increaseAdd,
      Q => increaseAdd_reg_n_0
    );
loadAdd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => controller_state(0),
      I2 => controller_state(2),
      I3 => controller_state(3),
      I4 => controller_state(1),
      O => loadAdd
    );
loadAdd_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => increaseAdd_i_1_n_0,
      CLR => i_rst_IBUF,
      D => loadAdd,
      Q => loadK
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => increaseAdd_i_1_n_0,
      CLR => i_rst_IBUF,
      D => CounterK_inst_n_3,
      Q => o_done_OBUF
    );
\o_mem_addr_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(0),
      O => o_mem_addr(0)
    );
\o_mem_addr_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(10),
      O => o_mem_addr(10)
    );
\o_mem_addr_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(11),
      O => o_mem_addr(11)
    );
\o_mem_addr_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(12),
      O => o_mem_addr(12)
    );
\o_mem_addr_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(13),
      O => o_mem_addr(13)
    );
\o_mem_addr_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(14),
      O => o_mem_addr(14)
    );
\o_mem_addr_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(15),
      O => o_mem_addr(15)
    );
\o_mem_addr_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(1),
      O => o_mem_addr(1)
    );
\o_mem_addr_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(2),
      O => o_mem_addr(2)
    );
\o_mem_addr_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(3),
      O => o_mem_addr(3)
    );
\o_mem_addr_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(4),
      O => o_mem_addr(4)
    );
\o_mem_addr_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(5),
      O => o_mem_addr(5)
    );
\o_mem_addr_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(6),
      O => o_mem_addr(6)
    );
\o_mem_addr_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(7),
      O => o_mem_addr(7)
    );
\o_mem_addr_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(8),
      O => o_mem_addr(8)
    );
\o_mem_addr_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_addr_OBUF(9),
      O => o_mem_addr(9)
    );
\o_mem_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(0),
      O => o_mem_data(0)
    );
\o_mem_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(1),
      O => o_mem_data(1)
    );
\o_mem_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(2),
      O => o_mem_data(2)
    );
\o_mem_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(3),
      O => o_mem_data(3)
    );
\o_mem_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(4),
      O => o_mem_data(4)
    );
\o_mem_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(5),
      O => o_mem_data(5)
    );
\o_mem_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(6),
      O => o_mem_data(6)
    );
\o_mem_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_mem_data_OBUF(7),
      O => o_mem_data(7)
    );
o_mem_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_mem_en_OBUF,
      O => o_mem_en
    );
o_mem_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => increaseAdd_i_1_n_0,
      CLR => i_rst_IBUF,
      D => CounterK_inst_n_4,
      Q => o_mem_en_OBUF
    );
o_mem_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_mem_we_OBUF,
      O => o_mem_we
    );
o_mem_we_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001C00C0"
    )
        port map (
      I0 => CounterK_inst_n_5,
      I1 => controller_state(2),
      I2 => controller_state(0),
      I3 => controller_state(3),
      I4 => controller_state(1),
      O => o_mem_we_i_1_n_0
    );
o_mem_we_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => increaseAdd_i_1_n_0,
      CLR => i_rst_IBUF,
      D => o_mem_we_i_1_n_0,
      Q => o_mem_we_OBUF
    );
end STRUCTURE;
