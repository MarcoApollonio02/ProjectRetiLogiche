// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Mon Feb 26 16:04:40 2024
// Host        : DESKTOP-6G38AS2 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/marco/VivadoProjects/project_reti_logiche_final/project_reti_logiche_final.sim/case_begin_with_0/synth/timing/xsim/project_tb_time_synth.v
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CounterAdd
   (o_mem_addr_OBUF,
    CLK,
    loadK,
    \counterAdd_state_reg[0]_0 ,
    i_add_IBUF);
  output [15:0]o_mem_addr_OBUF;
  input CLK;
  input loadK;
  input \counterAdd_state_reg[0]_0 ;
  input [15:0]i_add_IBUF;

  wire CLK;
  wire count;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[0]_i_7_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire \count_reg[0]_i_2_n_0 ;
  wire \count_reg[0]_i_2_n_1 ;
  wire \count_reg[0]_i_2_n_2 ;
  wire \count_reg[0]_i_2_n_3 ;
  wire \count_reg[0]_i_2_n_4 ;
  wire \count_reg[0]_i_2_n_5 ;
  wire \count_reg[0]_i_2_n_6 ;
  wire \count_reg[0]_i_2_n_7 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [1:0]counterAdd_state;
  wire \counterAdd_state[0]_i_1_n_0 ;
  wire \counterAdd_state[1]_i_1_n_0 ;
  wire \counterAdd_state_reg[0]_0 ;
  wire [15:0]i_add_IBUF;
  wire loadK;
  wire [15:0]o_mem_addr_OBUF;
  wire [3:3]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0F20)) 
    \count[0]_i_1 
       (.I0(counterAdd_state[1]),
        .I1(counterAdd_state[0]),
        .I2(\counterAdd_state_reg[0]_0 ),
        .I3(loadK),
        .O(count));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[0]_i_3 
       (.I0(i_add_IBUF[0]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[0]),
        .O(\count[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[0]_i_4 
       (.I0(i_add_IBUF[3]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[3]),
        .O(\count[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[0]_i_5 
       (.I0(i_add_IBUF[2]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[2]),
        .O(\count[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[0]_i_6 
       (.I0(i_add_IBUF[1]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[1]),
        .O(\count[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count[0]_i_7 
       (.I0(o_mem_addr_OBUF[0]),
        .I1(i_add_IBUF[0]),
        .I2(loadK),
        .O(\count[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[12]_i_2 
       (.I0(i_add_IBUF[15]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[15]),
        .O(\count[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[12]_i_3 
       (.I0(i_add_IBUF[14]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[14]),
        .O(\count[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[12]_i_4 
       (.I0(i_add_IBUF[13]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[13]),
        .O(\count[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[12]_i_5 
       (.I0(i_add_IBUF[12]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[12]),
        .O(\count[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_2 
       (.I0(i_add_IBUF[7]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[7]),
        .O(\count[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_3 
       (.I0(i_add_IBUF[6]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[6]),
        .O(\count[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_4 
       (.I0(i_add_IBUF[5]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[5]),
        .O(\count[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[4]_i_5 
       (.I0(i_add_IBUF[4]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[4]),
        .O(\count[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[8]_i_2 
       (.I0(i_add_IBUF[11]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[11]),
        .O(\count[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[8]_i_3 
       (.I0(i_add_IBUF[10]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[10]),
        .O(\count[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[8]_i_4 
       (.I0(i_add_IBUF[9]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[9]),
        .O(\count[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \count[8]_i_5 
       (.I0(i_add_IBUF[8]),
        .I1(loadK),
        .I2(o_mem_addr_OBUF[8]),
        .O(\count[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2_n_7 ),
        .Q(o_mem_addr_OBUF[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_2_n_0 ,\count_reg[0]_i_2_n_1 ,\count_reg[0]_i_2_n_2 ,\count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count[0]_i_3_n_0 }),
        .O({\count_reg[0]_i_2_n_4 ,\count_reg[0]_i_2_n_5 ,\count_reg[0]_i_2_n_6 ,\count_reg[0]_i_2_n_7 }),
        .S({\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 ,\count[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(o_mem_addr_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(o_mem_addr_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(o_mem_addr_OBUF[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\NLW_count_reg[12]_i_1_CO_UNCONNECTED [3],\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(o_mem_addr_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(o_mem_addr_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(o_mem_addr_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2_n_6 ),
        .Q(o_mem_addr_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2_n_5 ),
        .Q(o_mem_addr_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[0]_i_2_n_4 ),
        .Q(o_mem_addr_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(o_mem_addr_OBUF[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_2_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(o_mem_addr_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(o_mem_addr_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(o_mem_addr_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(o_mem_addr_OBUF[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(count),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(o_mem_addr_OBUF[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \counterAdd_state[0]_i_1 
       (.I0(loadK),
        .I1(counterAdd_state[1]),
        .I2(\counterAdd_state_reg[0]_0 ),
        .O(\counterAdd_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    \counterAdd_state[1]_i_1 
       (.I0(counterAdd_state[1]),
        .I1(counterAdd_state[0]),
        .I2(\counterAdd_state_reg[0]_0 ),
        .I3(loadK),
        .O(\counterAdd_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counterAdd_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counterAdd_state[0]_i_1_n_0 ),
        .Q(counterAdd_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterAdd_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counterAdd_state[1]_i_1_n_0 ),
        .Q(counterAdd_state[1]),
        .R(1'b0));
endmodule

module CounterK
   (D,
    \FSM_sequential_controller_state_reg[2] ,
    \FSM_sequential_controller_state_reg[2]_0 ,
    \i_mem_data[2] ,
    increaseAdd,
    loadK,
    i_k_IBUF,
    i_start_IBUF,
    Q,
    mux_selector,
    \FSM_sequential_controller_state[1]_i_2_0 ,
    CLK);
  output [2:0]D;
  output \FSM_sequential_controller_state_reg[2] ;
  output \FSM_sequential_controller_state_reg[2]_0 ;
  output \i_mem_data[2] ;
  output increaseAdd;
  input loadK;
  input [9:0]i_k_IBUF;
  input i_start_IBUF;
  input [3:0]Q;
  input mux_selector;
  input [7:0]\FSM_sequential_controller_state[1]_i_2_0 ;
  input CLK;

  wire CLK;
  wire [2:0]D;
  wire [7:0]\FSM_sequential_controller_state[1]_i_2_0 ;
  wire \FSM_sequential_controller_state[1]_i_2_n_0 ;
  wire \FSM_sequential_controller_state[1]_i_3_n_0 ;
  wire \FSM_sequential_controller_state[1]_i_4_n_0 ;
  wire \FSM_sequential_controller_state[3]_i_2_n_0 ;
  wire \FSM_sequential_controller_state_reg[2] ;
  wire \FSM_sequential_controller_state_reg[2]_0 ;
  wire [3:0]Q;
  wire [1:0]counterK_state;
  wire \counterK_state[0]_i_1_n_0 ;
  wire \counterK_state[1]_i_1_n_0 ;
  wire [9:0]i_k_IBUF;
  wire \i_mem_data[2] ;
  wire i_start_IBUF;
  wire increaseAdd;
  wire k;
  wire \k[4]_i_2_n_0 ;
  wire \k[5]_i_2_n_0 ;
  wire \k[8]_i_2_n_0 ;
  wire \k[9]_i_3_n_0 ;
  wire [9:0]k_reg;
  wire loadK;
  wire mux_selector;
  wire [9:0]p_0_in;

  LUT6 #(
    .INIT(64'hFF77CF77CD77CD47)) 
    \FSM_sequential_controller_state[0]_i_1 
       (.I0(i_start_IBUF),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\FSM_sequential_controller_state[3]_i_2_n_0 ),
        .I5(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFCCFFCCEFCFCFCCC)) 
    \FSM_sequential_controller_state[1]_i_1 
       (.I0(\FSM_sequential_controller_state[3]_i_2_n_0 ),
        .I1(\FSM_sequential_controller_state[1]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00FC0000AAAA0000)) 
    \FSM_sequential_controller_state[1]_i_2 
       (.I0(i_start_IBUF),
        .I1(\FSM_sequential_controller_state[1]_i_3_n_0 ),
        .I2(\FSM_sequential_controller_state[1]_i_4_n_0 ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_sequential_controller_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_controller_state[1]_i_3 
       (.I0(\FSM_sequential_controller_state[1]_i_2_0 [1]),
        .I1(\FSM_sequential_controller_state[1]_i_2_0 [0]),
        .I2(\FSM_sequential_controller_state[1]_i_2_0 [3]),
        .I3(\FSM_sequential_controller_state[1]_i_2_0 [2]),
        .O(\FSM_sequential_controller_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_controller_state[1]_i_4 
       (.I0(\FSM_sequential_controller_state[1]_i_2_0 [5]),
        .I1(\FSM_sequential_controller_state[1]_i_2_0 [4]),
        .I2(\FSM_sequential_controller_state[1]_i_2_0 [7]),
        .I3(\FSM_sequential_controller_state[1]_i_2_0 [6]),
        .O(\FSM_sequential_controller_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6240404062405140)) 
    \FSM_sequential_controller_state[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(i_start_IBUF),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\FSM_sequential_controller_state[3]_i_2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_controller_state[3]_i_2 
       (.I0(k_reg[8]),
        .I1(k_reg[6]),
        .I2(\k[8]_i_2_n_0 ),
        .I3(k_reg[7]),
        .I4(k_reg[9]),
        .O(\FSM_sequential_controller_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \counterK_state[0]_i_1 
       (.I0(counterK_state[1]),
        .I1(mux_selector),
        .I2(loadK),
        .O(\counterK_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00CE)) 
    \counterK_state[1]_i_1 
       (.I0(counterK_state[0]),
        .I1(counterK_state[1]),
        .I2(mux_selector),
        .I3(loadK),
        .O(\counterK_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counterK_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counterK_state[0]_i_1_n_0 ),
        .Q(counterK_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counterK_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counterK_state[1]_i_1_n_0 ),
        .Q(counterK_state[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3003200000032000)) 
    increaseAdd_i_2
       (.I0(\i_mem_data[2] ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\FSM_sequential_controller_state[3]_i_2_n_0 ),
        .O(increaseAdd));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    increaseAdd_i_3
       (.I0(\FSM_sequential_controller_state[1]_i_2_0 [2]),
        .I1(\FSM_sequential_controller_state[1]_i_2_0 [3]),
        .I2(\FSM_sequential_controller_state[1]_i_2_0 [0]),
        .I3(\FSM_sequential_controller_state[1]_i_2_0 [1]),
        .I4(\FSM_sequential_controller_state[1]_i_4_n_0 ),
        .O(\i_mem_data[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \k[0]_i_1 
       (.I0(i_k_IBUF[0]),
        .I1(loadK),
        .I2(k_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \k[1]_i_1 
       (.I0(k_reg[1]),
        .I1(k_reg[0]),
        .I2(loadK),
        .I3(i_k_IBUF[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \k[2]_i_1 
       (.I0(k_reg[2]),
        .I1(k_reg[0]),
        .I2(k_reg[1]),
        .I3(loadK),
        .I4(i_k_IBUF[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \k[3]_i_1 
       (.I0(k_reg[3]),
        .I1(k_reg[1]),
        .I2(k_reg[0]),
        .I3(k_reg[2]),
        .I4(loadK),
        .I5(i_k_IBUF[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hF909)) 
    \k[4]_i_1 
       (.I0(k_reg[4]),
        .I1(\k[4]_i_2_n_0 ),
        .I2(loadK),
        .I3(i_k_IBUF[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \k[4]_i_2 
       (.I0(k_reg[2]),
        .I1(k_reg[0]),
        .I2(k_reg[1]),
        .I3(k_reg[3]),
        .O(\k[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \k[5]_i_1 
       (.I0(k_reg[5]),
        .I1(\k[5]_i_2_n_0 ),
        .I2(loadK),
        .I3(i_k_IBUF[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \k[5]_i_2 
       (.I0(k_reg[3]),
        .I1(k_reg[1]),
        .I2(k_reg[0]),
        .I3(k_reg[2]),
        .I4(k_reg[4]),
        .O(\k[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \k[6]_i_1 
       (.I0(k_reg[6]),
        .I1(\k[8]_i_2_n_0 ),
        .I2(loadK),
        .I3(i_k_IBUF[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \k[7]_i_1 
       (.I0(k_reg[7]),
        .I1(\k[8]_i_2_n_0 ),
        .I2(k_reg[6]),
        .I3(loadK),
        .I4(i_k_IBUF[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \k[8]_i_1 
       (.I0(k_reg[8]),
        .I1(k_reg[6]),
        .I2(\k[8]_i_2_n_0 ),
        .I3(k_reg[7]),
        .I4(loadK),
        .I5(i_k_IBUF[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \k[8]_i_2 
       (.I0(k_reg[4]),
        .I1(k_reg[2]),
        .I2(k_reg[0]),
        .I3(k_reg[1]),
        .I4(k_reg[3]),
        .I5(k_reg[5]),
        .O(\k[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0F20)) 
    \k[9]_i_1 
       (.I0(counterK_state[1]),
        .I1(counterK_state[0]),
        .I2(mux_selector),
        .I3(loadK),
        .O(k));
  LUT4 #(
    .INIT(16'hF909)) 
    \k[9]_i_2 
       (.I0(k_reg[9]),
        .I1(\k[9]_i_3_n_0 ),
        .I2(loadK),
        .I3(i_k_IBUF[9]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \k[9]_i_3 
       (.I0(k_reg[7]),
        .I1(\k[8]_i_2_n_0 ),
        .I2(k_reg[6]),
        .I3(k_reg[8]),
        .O(\k[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \k_reg[0] 
       (.C(CLK),
        .CE(k),
        .D(p_0_in[0]),
        .Q(k_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \k_reg[1] 
       (.C(CLK),
        .CE(k),
        .D(p_0_in[1]),
        .Q(k_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \k_reg[2] 
       (.C(CLK),
        .CE(k),
        .D(p_0_in[2]),
        .Q(k_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \k_reg[3] 
       (.C(CLK),
        .CE(k),
        .D(p_0_in[3]),
        .Q(k_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \k_reg[4] 
       (.C(CLK),
        .CE(k),
        .D(p_0_in[4]),
        .Q(k_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \k_reg[5] 
       (.C(CLK),
        .CE(k),
        .D(p_0_in[5]),
        .Q(k_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \k_reg[6] 
       (.C(CLK),
        .CE(k),
        .D(p_0_in[6]),
        .Q(k_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \k_reg[7] 
       (.C(CLK),
        .CE(k),
        .D(p_0_in[7]),
        .Q(k_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \k_reg[8] 
       (.C(CLK),
        .CE(k),
        .D(p_0_in[8]),
        .Q(k_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \k_reg[9] 
       (.C(CLK),
        .CE(k),
        .D(p_0_in[9]),
        .Q(k_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00003000000A0300)) 
    o_done_i_1
       (.I0(i_start_IBUF),
        .I1(\FSM_sequential_controller_state[3]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\FSM_sequential_controller_state_reg[2] ));
  LUT6 #(
    .INIT(64'h003311CC0000FC00)) 
    o_mem_en_i_1
       (.I0(\i_mem_data[2] ),
        .I1(Q[2]),
        .I2(\FSM_sequential_controller_state[3]_i_2_n_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\FSM_sequential_controller_state_reg[2]_0 ));
endmodule

module CredibilityT
   (o_mem_data_OBUF,
    CLK,
    state_reg,
    i_set31,
    mux_selector,
    Q,
    state_reg_0);
  output [4:0]o_mem_data_OBUF;
  input CLK;
  input state_reg;
  input i_set31;
  input mux_selector;
  input [4:0]Q;
  input state_reg_0;

  wire CLK;
  wire [4:0]Q;
  wire i_set31;
  wire mux_selector;
  wire [4:0]o_mem_data_OBUF;
  wire [4:0]o_wordCredibility;
  wire state_reg;
  wire state_reg_0;
  wire t0_n_1;
  wire t0_n_2;
  wire t1_n_1;
  wire t1_n_3;
  wire t1_n_4;
  wire t1_n_5;
  wire t3_n_1;
  wire t3_n_3;
  wire t3_n_4;

  FlipFlopT t0
       (.CLK(CLK),
        .Q(Q[0]),
        .i_dcrCredibility_reg(t0_n_2),
        .i_set31(i_set31),
        .mux_selector(mux_selector),
        .o_mem_data_OBUF(o_mem_data_OBUF[0]),
        .o_wordCredibility(o_wordCredibility[0]),
        .state_reg_0(t0_n_1),
        .state_reg_1(t3_n_3),
        .state_reg_2(state_reg));
  FlipFlopT_0 t1
       (.CLK(CLK),
        .Q(Q[1]),
        .i_read_reg(t1_n_3),
        .i_set31(i_set31),
        .mux_selector(mux_selector),
        .o_mem_data_OBUF(o_mem_data_OBUF[1]),
        .o_wordCredibility(o_wordCredibility[1]),
        .state_reg_0(t1_n_1),
        .state_reg_1(t1_n_4),
        .state_reg_2(t1_n_5),
        .state_reg_3(t3_n_4),
        .state_reg_4(o_wordCredibility[4:2]),
        .state_reg_5(t3_n_1),
        .state_reg_6(state_reg_0),
        .state_reg_7(t0_n_2),
        .state_reg_8(t0_n_1));
  FlipFlopT_1 t2
       (.CLK(CLK),
        .Q(Q[2]),
        .mux_selector(mux_selector),
        .o_mem_data_OBUF(o_mem_data_OBUF[2]),
        .state_reg_0(o_wordCredibility[2]),
        .state_reg_1(t1_n_3));
  FlipFlopT_2 t3
       (.CLK(CLK),
        .Q(Q[3]),
        .i_read_reg(t3_n_4),
        .i_set0_reg(t3_n_3),
        .i_set31(i_set31),
        .mux_selector(mux_selector),
        .o_mem_data_OBUF(o_mem_data_OBUF[3]),
        .o_wordCredibility({o_wordCredibility[4],o_wordCredibility[2:0]}),
        .state_reg_0(o_wordCredibility[3]),
        .state_reg_1(t3_n_1),
        .state_reg_2(t1_n_4),
        .state_reg_3(state_reg_0),
        .state_reg_4(t1_n_1),
        .state_reg_5(state_reg),
        .state_reg_6(t0_n_2));
  FlipFlopT_3 t4
       (.CLK(CLK),
        .Q(Q[4]),
        .mux_selector(mux_selector),
        .o_mem_data_OBUF(o_mem_data_OBUF[4]),
        .o_wordCredibility(o_wordCredibility[4]),
        .state_reg_0(t1_n_5));
endmodule

module FlipFlopT
   (o_wordCredibility,
    state_reg_0,
    i_dcrCredibility_reg,
    o_mem_data_OBUF,
    state_reg_1,
    CLK,
    state_reg_2,
    i_set31,
    mux_selector,
    Q);
  output [0:0]o_wordCredibility;
  output state_reg_0;
  output i_dcrCredibility_reg;
  output [0:0]o_mem_data_OBUF;
  input state_reg_1;
  input CLK;
  input state_reg_2;
  input i_set31;
  input mux_selector;
  input [0:0]Q;

  wire CLK;
  wire [0:0]Q;
  wire i_dcrCredibility_reg;
  wire i_set31;
  wire mux_selector;
  wire [0:0]o_mem_data_OBUF;
  wire [0:0]o_wordCredibility;
  wire state_reg_0;
  wire state_reg_1;
  wire state_reg_2;

  LUT3 #(
    .INIT(8'hB8)) 
    \o_mem_data_OBUF[0]_inst_i_1 
       (.I0(o_wordCredibility),
        .I1(mux_selector),
        .I2(Q),
        .O(o_mem_data_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    state_i_2
       (.I0(o_wordCredibility),
        .I1(state_reg_2),
        .I2(i_set31),
        .O(state_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    state_i_3
       (.I0(state_reg_2),
        .I1(o_wordCredibility),
        .O(i_dcrCredibility_reg));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(CLK),
        .CE(1'b1),
        .D(state_reg_1),
        .Q(o_wordCredibility),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlopT" *) 
module FlipFlopT_0
   (o_wordCredibility,
    state_reg_0,
    o_mem_data_OBUF,
    i_read_reg,
    state_reg_1,
    state_reg_2,
    state_reg_3,
    CLK,
    state_reg_4,
    mux_selector,
    Q,
    i_set31,
    state_reg_5,
    state_reg_6,
    state_reg_7,
    state_reg_8);
  output [0:0]o_wordCredibility;
  output state_reg_0;
  output [0:0]o_mem_data_OBUF;
  output i_read_reg;
  output state_reg_1;
  output state_reg_2;
  input state_reg_3;
  input CLK;
  input [2:0]state_reg_4;
  input mux_selector;
  input [0:0]Q;
  input i_set31;
  input state_reg_5;
  input state_reg_6;
  input state_reg_7;
  input state_reg_8;

  wire CLK;
  wire [0:0]Q;
  wire i_read_reg;
  wire i_set31;
  wire mux_selector;
  wire [0:0]o_mem_data_OBUF;
  wire [0:0]o_wordCredibility;
  wire state_reg_0;
  wire state_reg_1;
  wire state_reg_2;
  wire state_reg_3;
  wire [2:0]state_reg_4;
  wire state_reg_5;
  wire state_reg_6;
  wire state_reg_7;
  wire state_reg_8;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_mem_data_OBUF[1]_inst_i_1 
       (.I0(o_wordCredibility),
        .I1(mux_selector),
        .I2(Q),
        .O(o_mem_data_OBUF));
  LUT6 #(
    .INIT(64'hAAEEAAFFAABAAAAA)) 
    state_i_1__1
       (.I0(i_set31),
        .I1(o_wordCredibility),
        .I2(state_reg_5),
        .I3(state_reg_6),
        .I4(state_reg_7),
        .I5(state_reg_4[0]),
        .O(i_read_reg));
  LUT6 #(
    .INIT(64'hFFFF00AFFFFF0040)) 
    state_i_1__2
       (.I0(state_reg_0),
        .I1(state_reg_4[2]),
        .I2(state_reg_7),
        .I3(state_reg_6),
        .I4(i_set31),
        .I5(state_reg_4[1]),
        .O(state_reg_1));
  LUT6 #(
    .INIT(64'hEFEF00EFFFFF0000)) 
    state_i_1__3
       (.I0(state_reg_0),
        .I1(state_reg_4[1]),
        .I2(state_reg_8),
        .I3(state_reg_6),
        .I4(i_set31),
        .I5(state_reg_4[2]),
        .O(state_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    state_i_2__0
       (.I0(o_wordCredibility),
        .I1(state_reg_4[0]),
        .O(state_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(CLK),
        .CE(1'b1),
        .D(state_reg_3),
        .Q(o_wordCredibility),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlopT" *) 
module FlipFlopT_1
   (state_reg_0,
    o_mem_data_OBUF,
    state_reg_1,
    CLK,
    mux_selector,
    Q);
  output [0:0]state_reg_0;
  output [0:0]o_mem_data_OBUF;
  input state_reg_1;
  input CLK;
  input mux_selector;
  input [0:0]Q;

  wire CLK;
  wire [0:0]Q;
  wire mux_selector;
  wire [0:0]o_mem_data_OBUF;
  wire [0:0]state_reg_0;
  wire state_reg_1;

  LUT3 #(
    .INIT(8'hB8)) 
    \o_mem_data_OBUF[2]_inst_i_1 
       (.I0(state_reg_0),
        .I1(mux_selector),
        .I2(Q),
        .O(o_mem_data_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(CLK),
        .CE(1'b1),
        .D(state_reg_1),
        .Q(state_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlopT" *) 
module FlipFlopT_2
   (state_reg_0,
    state_reg_1,
    o_mem_data_OBUF,
    i_set0_reg,
    i_read_reg,
    state_reg_2,
    CLK,
    o_wordCredibility,
    mux_selector,
    Q,
    state_reg_3,
    state_reg_4,
    state_reg_5,
    i_set31,
    state_reg_6);
  output [0:0]state_reg_0;
  output state_reg_1;
  output [0:0]o_mem_data_OBUF;
  output i_set0_reg;
  output i_read_reg;
  input state_reg_2;
  input CLK;
  input [3:0]o_wordCredibility;
  input mux_selector;
  input [0:0]Q;
  input state_reg_3;
  input state_reg_4;
  input state_reg_5;
  input i_set31;
  input state_reg_6;

  wire CLK;
  wire [0:0]Q;
  wire i_read_reg;
  wire i_set0_reg;
  wire i_set31;
  wire mux_selector;
  wire [0:0]o_mem_data_OBUF;
  wire [3:0]o_wordCredibility;
  wire [0:0]state_reg_0;
  wire state_reg_1;
  wire state_reg_2;
  wire state_reg_3;
  wire state_reg_4;
  wire state_reg_5;
  wire state_reg_6;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \o_mem_data_OBUF[3]_inst_i_1 
       (.I0(state_reg_0),
        .I1(mux_selector),
        .I2(Q),
        .O(o_mem_data_OBUF));
  LUT6 #(
    .INIT(64'hFFFF0055FFFF5400)) 
    state_i_1
       (.I0(state_reg_3),
        .I1(state_reg_1),
        .I2(state_reg_4),
        .I3(state_reg_5),
        .I4(i_set31),
        .I5(o_wordCredibility[0]),
        .O(i_set0_reg));
  LUT6 #(
    .INIT(64'hAAAAAAFFAAFEAAAA)) 
    state_i_1__0
       (.I0(i_set31),
        .I1(state_reg_1),
        .I2(o_wordCredibility[2]),
        .I3(state_reg_3),
        .I4(state_reg_6),
        .I5(o_wordCredibility[1]),
        .O(i_read_reg));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    state_i_2__1
       (.I0(state_reg_0),
        .I1(o_wordCredibility[3]),
        .O(state_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(CLK),
        .CE(1'b1),
        .D(state_reg_2),
        .Q(state_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FlipFlopT" *) 
module FlipFlopT_3
   (o_wordCredibility,
    o_mem_data_OBUF,
    state_reg_0,
    CLK,
    mux_selector,
    Q);
  output [0:0]o_wordCredibility;
  output [0:0]o_mem_data_OBUF;
  input state_reg_0;
  input CLK;
  input mux_selector;
  input [0:0]Q;

  wire CLK;
  wire [0:0]Q;
  wire mux_selector;
  wire [0:0]o_mem_data_OBUF;
  wire [0:0]o_wordCredibility;
  wire state_reg_0;

  LUT3 #(
    .INIT(8'hB8)) 
    \o_mem_data_OBUF[4]_inst_i_1 
       (.I0(o_wordCredibility),
        .I1(mux_selector),
        .I2(Q),
        .O(o_mem_data_OBUF));
  FDRE #(
    .INIT(1'b0)) 
    state_reg
       (.C(CLK),
        .CE(1'b1),
        .D(state_reg_0),
        .Q(o_wordCredibility),
        .R(1'b0));
endmodule

module LVR
   (o_mem_data_OBUF,
    Q,
    mux_selector,
    SR,
    E,
    D,
    CLK);
  output [2:0]o_mem_data_OBUF;
  output [4:0]Q;
  input mux_selector;
  input [0:0]SR;
  input [0:0]E;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]SR;
  wire mux_selector;
  wire [2:0]o_mem_data_OBUF;
  wire [7:5]saved;

  LUT2 #(
    .INIT(4'h2)) 
    \o_mem_data_OBUF[5]_inst_i_1 
       (.I0(saved[5]),
        .I1(mux_selector),
        .O(o_mem_data_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_mem_data_OBUF[6]_inst_i_1 
       (.I0(saved[6]),
        .I1(mux_selector),
        .O(o_mem_data_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_mem_data_OBUF[7]_inst_i_1 
       (.I0(saved[7]),
        .I1(mux_selector),
        .O(o_mem_data_OBUF[2]));
  FDRE #(
    .INIT(1'b0)) 
    \saved_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saved_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saved_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saved_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saved_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saved_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(saved[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saved_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(saved[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \saved_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(saved[7]),
        .R(SR));
endmodule

(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_rst,
    i_start,
    i_add,
    i_k,
    o_done,
    o_mem_addr,
    i_mem_data,
    o_mem_data,
    o_mem_we,
    o_mem_en);
  input i_clk;
  input i_rst;
  input i_start;
  input [15:0]i_add;
  input [9:0]i_k;
  output o_done;
  output [15:0]o_mem_addr;
  input [7:0]i_mem_data;
  output [7:0]o_mem_data;
  output o_mem_we;
  output o_mem_en;

  wire CounterK_inst_n_3;
  wire CounterK_inst_n_4;
  wire CounterK_inst_n_5;
  wire [3:0]controller_state;
  wire [3:0]controller_state__0;
  wire decreaseK;
  wire [15:0]i_add;
  wire [15:0]i_add_IBUF;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire i_dcrCredibility;
  wire i_dcrCredibility_reg_n_0;
  wire [9:0]i_k;
  wire [9:0]i_k_IBUF;
  wire [7:0]i_mem_data;
  wire [7:0]i_mem_data_IBUF;
  wire i_read;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_set0;
  wire i_set0_reg_n_0;
  wire i_set31;
  wire i_start;
  wire i_start_IBUF;
  wire increaseAdd;
  wire increaseAdd_i_1_n_0;
  wire increaseAdd_reg_n_0;
  wire loadAdd;
  wire loadK;
  wire mux_selector;
  wire o_done;
  wire o_done_OBUF;
  wire [15:0]o_mem_addr;
  wire [15:0]o_mem_addr_OBUF;
  wire [7:0]o_mem_data;
  wire [7:0]o_mem_data_OBUF;
  wire o_mem_en;
  wire o_mem_en_OBUF;
  wire o_mem_we;
  wire o_mem_we_OBUF;
  wire o_mem_we_i_1_n_0;
  wire [4:0]saved;

initial begin
 $sdf_annotate("project_tb_time_synth.sdf",,,,"tool_control");
end
  CounterAdd CounterAdd_inst
       (.CLK(i_clk_IBUF_BUFG),
        .\counterAdd_state_reg[0]_0 (increaseAdd_reg_n_0),
        .i_add_IBUF(i_add_IBUF),
        .loadK(loadK),
        .o_mem_addr_OBUF(o_mem_addr_OBUF));
  CounterK CounterK_inst
       (.CLK(i_clk_IBUF_BUFG),
        .D({controller_state__0[3],controller_state__0[1:0]}),
        .\FSM_sequential_controller_state[1]_i_2_0 (i_mem_data_IBUF),
        .\FSM_sequential_controller_state_reg[2] (CounterK_inst_n_3),
        .\FSM_sequential_controller_state_reg[2]_0 (CounterK_inst_n_4),
        .Q(controller_state),
        .i_k_IBUF(i_k_IBUF),
        .\i_mem_data[2] (CounterK_inst_n_5),
        .i_start_IBUF(i_start_IBUF),
        .increaseAdd(increaseAdd),
        .loadK(loadK),
        .mux_selector(mux_selector));
  CredibilityT Credibility_inst
       (.CLK(i_clk_IBUF_BUFG),
        .Q(saved),
        .i_set31(i_set31),
        .mux_selector(mux_selector),
        .o_mem_data_OBUF(o_mem_data_OBUF[4:0]),
        .state_reg(i_dcrCredibility_reg_n_0),
        .state_reg_0(i_set0_reg_n_0));
  LUT4 #(
    .INIT(16'h006C)) 
    \FSM_sequential_controller_state[2]_i_1 
       (.I0(controller_state[1]),
        .I1(controller_state[2]),
        .I2(controller_state[0]),
        .I3(controller_state[3]),
        .O(controller_state__0[2]));
  (* FSM_ENCODED_STATES = "status_read_w:0011,status_read_0:0100,status_load:0010,status_start:0001,status_init:0000,status_write_credibility:0111,status_end:1000,status_increase_add_even:1001,status_increase_add_0:0101,status_read_not_0:0110" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_controller_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(controller_state__0[0]),
        .Q(controller_state[0]));
  (* FSM_ENCODED_STATES = "status_read_w:0011,status_read_0:0100,status_load:0010,status_start:0001,status_init:0000,status_write_credibility:0111,status_end:1000,status_increase_add_even:1001,status_increase_add_0:0101,status_read_not_0:0110" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_controller_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(controller_state__0[1]),
        .Q(controller_state[1]));
  (* FSM_ENCODED_STATES = "status_read_w:0011,status_read_0:0100,status_load:0010,status_start:0001,status_init:0000,status_write_credibility:0111,status_end:1000,status_increase_add_even:1001,status_increase_add_0:0101,status_read_not_0:0110" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_controller_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(controller_state__0[2]),
        .Q(controller_state[2]));
  (* FSM_ENCODED_STATES = "status_read_w:0011,status_read_0:0100,status_load:0010,status_start:0001,status_init:0000,status_write_credibility:0111,status_end:1000,status_increase_add_even:1001,status_increase_add_0:0101,status_read_not_0:0110" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_controller_state_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(i_rst_IBUF),
        .D(controller_state__0[3]),
        .Q(controller_state[3]));
  LVR LVR_inst
       (.CLK(i_clk_IBUF_BUFG),
        .D(i_mem_data_IBUF),
        .E(i_set31),
        .Q(saved),
        .SR(i_set0_reg_n_0),
        .mux_selector(mux_selector),
        .o_mem_data_OBUF(o_mem_data_OBUF[7:5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1200)) 
    decreaseK_i_1
       (.I0(controller_state[1]),
        .I1(controller_state[3]),
        .I2(controller_state[0]),
        .I3(controller_state[2]),
        .O(decreaseK));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    decreaseK_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(increaseAdd_i_1_n_0),
        .CLR(i_rst_IBUF),
        .D(decreaseK),
        .Q(mux_selector));
  IBUF \i_add_IBUF[0]_inst 
       (.I(i_add[0]),
        .O(i_add_IBUF[0]));
  IBUF \i_add_IBUF[10]_inst 
       (.I(i_add[10]),
        .O(i_add_IBUF[10]));
  IBUF \i_add_IBUF[11]_inst 
       (.I(i_add[11]),
        .O(i_add_IBUF[11]));
  IBUF \i_add_IBUF[12]_inst 
       (.I(i_add[12]),
        .O(i_add_IBUF[12]));
  IBUF \i_add_IBUF[13]_inst 
       (.I(i_add[13]),
        .O(i_add_IBUF[13]));
  IBUF \i_add_IBUF[14]_inst 
       (.I(i_add[14]),
        .O(i_add_IBUF[14]));
  IBUF \i_add_IBUF[15]_inst 
       (.I(i_add[15]),
        .O(i_add_IBUF[15]));
  IBUF \i_add_IBUF[1]_inst 
       (.I(i_add[1]),
        .O(i_add_IBUF[1]));
  IBUF \i_add_IBUF[2]_inst 
       (.I(i_add[2]),
        .O(i_add_IBUF[2]));
  IBUF \i_add_IBUF[3]_inst 
       (.I(i_add[3]),
        .O(i_add_IBUF[3]));
  IBUF \i_add_IBUF[4]_inst 
       (.I(i_add[4]),
        .O(i_add_IBUF[4]));
  IBUF \i_add_IBUF[5]_inst 
       (.I(i_add[5]),
        .O(i_add_IBUF[5]));
  IBUF \i_add_IBUF[6]_inst 
       (.I(i_add[6]),
        .O(i_add_IBUF[6]));
  IBUF \i_add_IBUF[7]_inst 
       (.I(i_add[7]),
        .O(i_add_IBUF[7]));
  IBUF \i_add_IBUF[8]_inst 
       (.I(i_add[8]),
        .O(i_add_IBUF[8]));
  IBUF \i_add_IBUF[9]_inst 
       (.I(i_add[9]),
        .O(i_add_IBUF[9]));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    i_dcrCredibility_i_1
       (.I0(controller_state[0]),
        .I1(controller_state[2]),
        .I2(controller_state[3]),
        .I3(controller_state[1]),
        .O(i_dcrCredibility));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    i_dcrCredibility_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(increaseAdd_i_1_n_0),
        .CLR(i_rst_IBUF),
        .D(i_dcrCredibility),
        .Q(i_dcrCredibility_reg_n_0));
  IBUF \i_k_IBUF[0]_inst 
       (.I(i_k[0]),
        .O(i_k_IBUF[0]));
  IBUF \i_k_IBUF[1]_inst 
       (.I(i_k[1]),
        .O(i_k_IBUF[1]));
  IBUF \i_k_IBUF[2]_inst 
       (.I(i_k[2]),
        .O(i_k_IBUF[2]));
  IBUF \i_k_IBUF[3]_inst 
       (.I(i_k[3]),
        .O(i_k_IBUF[3]));
  IBUF \i_k_IBUF[4]_inst 
       (.I(i_k[4]),
        .O(i_k_IBUF[4]));
  IBUF \i_k_IBUF[5]_inst 
       (.I(i_k[5]),
        .O(i_k_IBUF[5]));
  IBUF \i_k_IBUF[6]_inst 
       (.I(i_k[6]),
        .O(i_k_IBUF[6]));
  IBUF \i_k_IBUF[7]_inst 
       (.I(i_k[7]),
        .O(i_k_IBUF[7]));
  IBUF \i_k_IBUF[8]_inst 
       (.I(i_k[8]),
        .O(i_k_IBUF[8]));
  IBUF \i_k_IBUF[9]_inst 
       (.I(i_k[9]),
        .O(i_k_IBUF[9]));
  IBUF \i_mem_data_IBUF[0]_inst 
       (.I(i_mem_data[0]),
        .O(i_mem_data_IBUF[0]));
  IBUF \i_mem_data_IBUF[1]_inst 
       (.I(i_mem_data[1]),
        .O(i_mem_data_IBUF[1]));
  IBUF \i_mem_data_IBUF[2]_inst 
       (.I(i_mem_data[2]),
        .O(i_mem_data_IBUF[2]));
  IBUF \i_mem_data_IBUF[3]_inst 
       (.I(i_mem_data[3]),
        .O(i_mem_data_IBUF[3]));
  IBUF \i_mem_data_IBUF[4]_inst 
       (.I(i_mem_data[4]),
        .O(i_mem_data_IBUF[4]));
  IBUF \i_mem_data_IBUF[5]_inst 
       (.I(i_mem_data[5]),
        .O(i_mem_data_IBUF[5]));
  IBUF \i_mem_data_IBUF[6]_inst 
       (.I(i_mem_data[6]),
        .O(i_mem_data_IBUF[6]));
  IBUF \i_mem_data_IBUF[7]_inst 
       (.I(i_mem_data[7]),
        .O(i_mem_data_IBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    i_read_i_1
       (.I0(CounterK_inst_n_5),
        .I1(controller_state[3]),
        .I2(controller_state[1]),
        .I3(controller_state[0]),
        .I4(controller_state[2]),
        .O(i_read));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    i_read_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(increaseAdd_i_1_n_0),
        .CLR(i_rst_IBUF),
        .D(i_read),
        .Q(i_set31));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000017)) 
    i_set0_i_1
       (.I0(i_start_IBUF),
        .I1(controller_state[0]),
        .I2(controller_state[3]),
        .I3(controller_state[1]),
        .I4(controller_state[2]),
        .O(i_set0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    i_set0_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(increaseAdd_i_1_n_0),
        .CLR(i_rst_IBUF),
        .D(i_set0),
        .Q(i_set0_reg_n_0));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  LUT3 #(
    .INIT(8'h1F)) 
    increaseAdd_i_1
       (.I0(controller_state[2]),
        .I1(controller_state[1]),
        .I2(controller_state[3]),
        .O(increaseAdd_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    increaseAdd_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(increaseAdd_i_1_n_0),
        .CLR(i_rst_IBUF),
        .D(increaseAdd),
        .Q(increaseAdd_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    loadAdd_i_1
       (.I0(i_start_IBUF),
        .I1(controller_state[0]),
        .I2(controller_state[2]),
        .I3(controller_state[3]),
        .I4(controller_state[1]),
        .O(loadAdd));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    loadAdd_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(increaseAdd_i_1_n_0),
        .CLR(i_rst_IBUF),
        .D(loadAdd),
        .Q(loadK));
  OBUF o_done_OBUF_inst
       (.I(o_done_OBUF),
        .O(o_done));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    o_done_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(increaseAdd_i_1_n_0),
        .CLR(i_rst_IBUF),
        .D(CounterK_inst_n_3),
        .Q(o_done_OBUF));
  OBUF \o_mem_addr_OBUF[0]_inst 
       (.I(o_mem_addr_OBUF[0]),
        .O(o_mem_addr[0]));
  OBUF \o_mem_addr_OBUF[10]_inst 
       (.I(o_mem_addr_OBUF[10]),
        .O(o_mem_addr[10]));
  OBUF \o_mem_addr_OBUF[11]_inst 
       (.I(o_mem_addr_OBUF[11]),
        .O(o_mem_addr[11]));
  OBUF \o_mem_addr_OBUF[12]_inst 
       (.I(o_mem_addr_OBUF[12]),
        .O(o_mem_addr[12]));
  OBUF \o_mem_addr_OBUF[13]_inst 
       (.I(o_mem_addr_OBUF[13]),
        .O(o_mem_addr[13]));
  OBUF \o_mem_addr_OBUF[14]_inst 
       (.I(o_mem_addr_OBUF[14]),
        .O(o_mem_addr[14]));
  OBUF \o_mem_addr_OBUF[15]_inst 
       (.I(o_mem_addr_OBUF[15]),
        .O(o_mem_addr[15]));
  OBUF \o_mem_addr_OBUF[1]_inst 
       (.I(o_mem_addr_OBUF[1]),
        .O(o_mem_addr[1]));
  OBUF \o_mem_addr_OBUF[2]_inst 
       (.I(o_mem_addr_OBUF[2]),
        .O(o_mem_addr[2]));
  OBUF \o_mem_addr_OBUF[3]_inst 
       (.I(o_mem_addr_OBUF[3]),
        .O(o_mem_addr[3]));
  OBUF \o_mem_addr_OBUF[4]_inst 
       (.I(o_mem_addr_OBUF[4]),
        .O(o_mem_addr[4]));
  OBUF \o_mem_addr_OBUF[5]_inst 
       (.I(o_mem_addr_OBUF[5]),
        .O(o_mem_addr[5]));
  OBUF \o_mem_addr_OBUF[6]_inst 
       (.I(o_mem_addr_OBUF[6]),
        .O(o_mem_addr[6]));
  OBUF \o_mem_addr_OBUF[7]_inst 
       (.I(o_mem_addr_OBUF[7]),
        .O(o_mem_addr[7]));
  OBUF \o_mem_addr_OBUF[8]_inst 
       (.I(o_mem_addr_OBUF[8]),
        .O(o_mem_addr[8]));
  OBUF \o_mem_addr_OBUF[9]_inst 
       (.I(o_mem_addr_OBUF[9]),
        .O(o_mem_addr[9]));
  OBUF \o_mem_data_OBUF[0]_inst 
       (.I(o_mem_data_OBUF[0]),
        .O(o_mem_data[0]));
  OBUF \o_mem_data_OBUF[1]_inst 
       (.I(o_mem_data_OBUF[1]),
        .O(o_mem_data[1]));
  OBUF \o_mem_data_OBUF[2]_inst 
       (.I(o_mem_data_OBUF[2]),
        .O(o_mem_data[2]));
  OBUF \o_mem_data_OBUF[3]_inst 
       (.I(o_mem_data_OBUF[3]),
        .O(o_mem_data[3]));
  OBUF \o_mem_data_OBUF[4]_inst 
       (.I(o_mem_data_OBUF[4]),
        .O(o_mem_data[4]));
  OBUF \o_mem_data_OBUF[5]_inst 
       (.I(o_mem_data_OBUF[5]),
        .O(o_mem_data[5]));
  OBUF \o_mem_data_OBUF[6]_inst 
       (.I(o_mem_data_OBUF[6]),
        .O(o_mem_data[6]));
  OBUF \o_mem_data_OBUF[7]_inst 
       (.I(o_mem_data_OBUF[7]),
        .O(o_mem_data[7]));
  OBUF o_mem_en_OBUF_inst
       (.I(o_mem_en_OBUF),
        .O(o_mem_en));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    o_mem_en_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(increaseAdd_i_1_n_0),
        .CLR(i_rst_IBUF),
        .D(CounterK_inst_n_4),
        .Q(o_mem_en_OBUF));
  OBUF o_mem_we_OBUF_inst
       (.I(o_mem_we_OBUF),
        .O(o_mem_we));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h001C00C0)) 
    o_mem_we_i_1
       (.I0(CounterK_inst_n_5),
        .I1(controller_state[2]),
        .I2(controller_state[0]),
        .I3(controller_state[3]),
        .I4(controller_state[1]),
        .O(o_mem_we_i_1_n_0));
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    o_mem_we_reg
       (.C(i_clk_IBUF_BUFG),
        .CE(increaseAdd_i_1_n_0),
        .CLR(i_rst_IBUF),
        .D(o_mem_we_i_1_n_0),
        .Q(o_mem_we_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
