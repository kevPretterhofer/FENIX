// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Dec 27 14:45:18 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/readShare/firstOrder/readShareNetlist1Bit.v
// Design      : readShare
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* buswidth = "1" *) (* clear1 = "3'b010" *) (* clear2 = "3'b100" *) 
(* clearReg = "3'b110" *) (* readData = "3'b001" *) (* readX = "3'b011" *) 
(* readY = "3'b101" *) (* start = "3'b000" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module readShare
   (clk_i,
    rst_i,
    start_i,
    X_i,
    Y_i,
    share_o);
  input clk_i;
  input rst_i;
  input start_i;
  input [0:0]X_i;
  input [0:0]Y_i;
  output [0:0]share_o;

  wire \<const1> ;
  wire \FSM_sequential_state_p[0]_i_1_n_0 ;
  wire \FSM_sequential_state_p[1]_i_1_n_0 ;
  wire \FSM_sequential_state_p[2]_i_1_n_0 ;
  wire \X[0]_i_1_n_0 ;
  wire [0:0]X_i;
  wire [0:0]X_i_IBUF;
  wire \X_reg_n_0_[0] ;
  wire \Y[0]_i_1_n_0 ;
  wire [0:0]Y_i;
  wire [0:0]Y_i_IBUF;
  wire \Y_reg_n_0_[0] ;
  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire p_0_in;
  wire p_0_in0_in;
  wire \readAddr_p[0]_i_1_n_0 ;
  wire \readAddr_p[1]_i_1_n_0 ;
  wire rst_i;
  wire rst_i_IBUF;
  wire [0:0]share_o;
  wire [0:0]share_o_OBUF;
  wire start_i;
  wire start_i_IBUF;
  wire [2:0]state_p;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC23E)) 
    \FSM_sequential_state_p[0]_i_1 
       (.I0(start_i_IBUF),
        .I1(state_p[2]),
        .I2(state_p[1]),
        .I3(state_p[0]),
        .O(\FSM_sequential_state_p[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCDAA)) 
    \FSM_sequential_state_p[1]_i_1 
       (.I0(state_p[1]),
        .I1(state_p[2]),
        .I2(start_i_IBUF),
        .I3(state_p[0]),
        .O(\FSM_sequential_state_p[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \FSM_sequential_state_p[2]_i_1 
       (.I0(state_p[1]),
        .I1(state_p[2]),
        .I2(state_p[0]),
        .O(\FSM_sequential_state_p[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "start:000,readData:001,clear1:010,readX:011,clear2:100,readY:101,clearReg:110," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_p_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_state_p[0]_i_1_n_0 ),
        .Q(state_p[0]),
        .R(rst_i_IBUF));
  (* FSM_ENCODED_STATES = "start:000,readData:001,clear1:010,readX:011,clear2:100,readY:101,clearReg:110," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_p_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_state_p[1]_i_1_n_0 ),
        .Q(state_p[1]),
        .R(rst_i_IBUF));
  (* FSM_ENCODED_STATES = "start:000,readData:001,clear1:010,readX:011,clear2:100,readY:101,clearReg:110," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_p_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_state_p[2]_i_1_n_0 ),
        .Q(state_p[2]),
        .R(rst_i_IBUF));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFE3F0200)) 
    \X[0]_i_1 
       (.I0(X_i_IBUF),
        .I1(state_p[2]),
        .I2(state_p[1]),
        .I3(state_p[0]),
        .I4(\X_reg_n_0_[0] ),
        .O(\X[0]_i_1_n_0 ));
  IBUF \X_i_IBUF[0]_inst 
       (.I(X_i),
        .O(X_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\X[0]_i_1_n_0 ),
        .Q(\X_reg_n_0_[0] ),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFE3F0200)) 
    \Y[0]_i_1 
       (.I0(Y_i_IBUF),
        .I1(state_p[2]),
        .I2(state_p[1]),
        .I3(state_p[0]),
        .I4(\Y_reg_n_0_[0] ),
        .O(\Y[0]_i_1_n_0 ));
  IBUF \Y_i_IBUF[0]_inst 
       (.I(Y_i),
        .O(Y_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\Y[0]_i_1_n_0 ),
        .Q(\Y_reg_n_0_[0] ),
        .R(rst_i_IBUF));
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8B08)) 
    \readAddr_p[0]_i_1 
       (.I0(state_p[0]),
        .I1(state_p[1]),
        .I2(state_p[2]),
        .I3(p_0_in0_in),
        .O(\readAddr_p[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA320)) 
    \readAddr_p[1]_i_1 
       (.I0(state_p[0]),
        .I1(state_p[1]),
        .I2(state_p[2]),
        .I3(p_0_in),
        .O(\readAddr_p[1]_i_1_n_0 ));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \readAddr_p_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\readAddr_p[0]_i_1_n_0 ),
        .Q(p_0_in0_in),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \readAddr_p_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\readAddr_p[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(rst_i_IBUF));
  IBUF rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
  OBUF \share_o_OBUF[0]_inst 
       (.I(share_o_OBUF),
        .O(share_o));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[0]_inst_i_1 
       (.I0(p_0_in0_in),
        .I1(\X_reg_n_0_[0] ),
        .I2(p_0_in),
        .I3(\Y_reg_n_0_[0] ),
        .O(share_o_OBUF));
  IBUF start_i_IBUF_inst
       (.I(start_i),
        .O(start_i_IBUF));
endmodule
