// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Dec 28 13:23:26 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/readShare/firstOrder/readShareNetlist32Bit.v
// Design      : readShare
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* buswidth = "32" *) (* clear1 = "3'b010" *) (* clear2 = "3'b100" *) 
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
  input [31:0]X_i;
  input [31:0]Y_i;
  output [31:0]share_o;

  wire \<const1> ;
  wire \FSM_sequential_state_p[0]_i_1_n_0 ;
  wire \FSM_sequential_state_p[1]_i_1_n_0 ;
  wire \FSM_sequential_state_p[2]_i_1_n_0 ;
  wire [31:0]X;
  wire [31:0]X_i;
  wire [31:0]X_i_IBUF;
  wire \X_reg_n_0_[0] ;
  wire \X_reg_n_0_[10] ;
  wire \X_reg_n_0_[11] ;
  wire \X_reg_n_0_[12] ;
  wire \X_reg_n_0_[13] ;
  wire \X_reg_n_0_[14] ;
  wire \X_reg_n_0_[15] ;
  wire \X_reg_n_0_[16] ;
  wire \X_reg_n_0_[17] ;
  wire \X_reg_n_0_[18] ;
  wire \X_reg_n_0_[19] ;
  wire \X_reg_n_0_[1] ;
  wire \X_reg_n_0_[20] ;
  wire \X_reg_n_0_[21] ;
  wire \X_reg_n_0_[22] ;
  wire \X_reg_n_0_[23] ;
  wire \X_reg_n_0_[24] ;
  wire \X_reg_n_0_[25] ;
  wire \X_reg_n_0_[26] ;
  wire \X_reg_n_0_[27] ;
  wire \X_reg_n_0_[28] ;
  wire \X_reg_n_0_[29] ;
  wire \X_reg_n_0_[2] ;
  wire \X_reg_n_0_[30] ;
  wire \X_reg_n_0_[31] ;
  wire \X_reg_n_0_[3] ;
  wire \X_reg_n_0_[4] ;
  wire \X_reg_n_0_[5] ;
  wire \X_reg_n_0_[6] ;
  wire \X_reg_n_0_[7] ;
  wire \X_reg_n_0_[8] ;
  wire \X_reg_n_0_[9] ;
  wire [31:0]Y;
  wire \Y[31]_i_1_n_0 ;
  wire [31:0]Y_i;
  wire [31:0]Y_i_IBUF;
  wire \Y_reg_n_0_[0] ;
  wire \Y_reg_n_0_[10] ;
  wire \Y_reg_n_0_[11] ;
  wire \Y_reg_n_0_[12] ;
  wire \Y_reg_n_0_[13] ;
  wire \Y_reg_n_0_[14] ;
  wire \Y_reg_n_0_[15] ;
  wire \Y_reg_n_0_[16] ;
  wire \Y_reg_n_0_[17] ;
  wire \Y_reg_n_0_[18] ;
  wire \Y_reg_n_0_[19] ;
  wire \Y_reg_n_0_[1] ;
  wire \Y_reg_n_0_[20] ;
  wire \Y_reg_n_0_[21] ;
  wire \Y_reg_n_0_[22] ;
  wire \Y_reg_n_0_[23] ;
  wire \Y_reg_n_0_[24] ;
  wire \Y_reg_n_0_[25] ;
  wire \Y_reg_n_0_[26] ;
  wire \Y_reg_n_0_[27] ;
  wire \Y_reg_n_0_[28] ;
  wire \Y_reg_n_0_[29] ;
  wire \Y_reg_n_0_[2] ;
  wire \Y_reg_n_0_[30] ;
  wire \Y_reg_n_0_[31] ;
  wire \Y_reg_n_0_[3] ;
  wire \Y_reg_n_0_[4] ;
  wire \Y_reg_n_0_[5] ;
  wire \Y_reg_n_0_[6] ;
  wire \Y_reg_n_0_[7] ;
  wire \Y_reg_n_0_[8] ;
  wire \Y_reg_n_0_[9] ;
  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire [1:0]readAddr_p;
  wire \readAddr_p[0]_i_1_n_0 ;
  wire \readAddr_p[1]_i_1_n_0 ;
  wire rst_i;
  wire rst_i_IBUF;
  wire [31:0]share_o;
  wire [31:0]share_o_OBUF;
  wire start_i;
  wire start_i_IBUF;
  wire [2:0]state_p;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hC23E)) 
    \FSM_sequential_state_p[0]_i_1 
       (.I0(start_i_IBUF),
        .I1(state_p[2]),
        .I2(state_p[1]),
        .I3(state_p[0]),
        .O(\FSM_sequential_state_p[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hCDAA)) 
    \FSM_sequential_state_p[1]_i_1 
       (.I0(state_p[1]),
        .I1(state_p[2]),
        .I2(start_i_IBUF),
        .I3(state_p[0]),
        .O(\FSM_sequential_state_p[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[0]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[0]),
        .I3(state_p[0]),
        .O(X[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[10]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[10]),
        .I3(state_p[0]),
        .O(X[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[11]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[11]),
        .I3(state_p[0]),
        .O(X[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[12]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[12]),
        .I3(state_p[0]),
        .O(X[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[13]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[13]),
        .I3(state_p[0]),
        .O(X[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[14]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[14]),
        .I3(state_p[0]),
        .O(X[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[15]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[15]),
        .I3(state_p[0]),
        .O(X[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[16]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[16]),
        .I3(state_p[0]),
        .O(X[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[17]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[17]),
        .I3(state_p[0]),
        .O(X[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[18]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[18]),
        .I3(state_p[0]),
        .O(X[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[19]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[19]),
        .I3(state_p[0]),
        .O(X[19]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[1]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[1]),
        .I3(state_p[0]),
        .O(X[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[20]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[20]),
        .I3(state_p[0]),
        .O(X[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[21]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[21]),
        .I3(state_p[0]),
        .O(X[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[22]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[22]),
        .I3(state_p[0]),
        .O(X[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[23]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[23]),
        .I3(state_p[0]),
        .O(X[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[24]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[24]),
        .I3(state_p[0]),
        .O(X[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[25]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[25]),
        .I3(state_p[0]),
        .O(X[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[26]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[26]),
        .I3(state_p[0]),
        .O(X[26]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[27]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[27]),
        .I3(state_p[0]),
        .O(X[27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[28]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[28]),
        .I3(state_p[0]),
        .O(X[28]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[29]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[29]),
        .I3(state_p[0]),
        .O(X[29]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[2]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[2]),
        .I3(state_p[0]),
        .O(X[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[30]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[30]),
        .I3(state_p[0]),
        .O(X[30]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[31]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[31]),
        .I3(state_p[0]),
        .O(X[31]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[3]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[3]),
        .I3(state_p[0]),
        .O(X[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[4]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[4]),
        .I3(state_p[0]),
        .O(X[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[5]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[5]),
        .I3(state_p[0]),
        .O(X[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[6]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[6]),
        .I3(state_p[0]),
        .O(X[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[7]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[7]),
        .I3(state_p[0]),
        .O(X[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[8]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[8]),
        .I3(state_p[0]),
        .O(X[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \X[9]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(X_i_IBUF[9]),
        .I3(state_p[0]),
        .O(X[9]));
  IBUF \X_i_IBUF[0]_inst 
       (.I(X_i[0]),
        .O(X_i_IBUF[0]));
  IBUF \X_i_IBUF[10]_inst 
       (.I(X_i[10]),
        .O(X_i_IBUF[10]));
  IBUF \X_i_IBUF[11]_inst 
       (.I(X_i[11]),
        .O(X_i_IBUF[11]));
  IBUF \X_i_IBUF[12]_inst 
       (.I(X_i[12]),
        .O(X_i_IBUF[12]));
  IBUF \X_i_IBUF[13]_inst 
       (.I(X_i[13]),
        .O(X_i_IBUF[13]));
  IBUF \X_i_IBUF[14]_inst 
       (.I(X_i[14]),
        .O(X_i_IBUF[14]));
  IBUF \X_i_IBUF[15]_inst 
       (.I(X_i[15]),
        .O(X_i_IBUF[15]));
  IBUF \X_i_IBUF[16]_inst 
       (.I(X_i[16]),
        .O(X_i_IBUF[16]));
  IBUF \X_i_IBUF[17]_inst 
       (.I(X_i[17]),
        .O(X_i_IBUF[17]));
  IBUF \X_i_IBUF[18]_inst 
       (.I(X_i[18]),
        .O(X_i_IBUF[18]));
  IBUF \X_i_IBUF[19]_inst 
       (.I(X_i[19]),
        .O(X_i_IBUF[19]));
  IBUF \X_i_IBUF[1]_inst 
       (.I(X_i[1]),
        .O(X_i_IBUF[1]));
  IBUF \X_i_IBUF[20]_inst 
       (.I(X_i[20]),
        .O(X_i_IBUF[20]));
  IBUF \X_i_IBUF[21]_inst 
       (.I(X_i[21]),
        .O(X_i_IBUF[21]));
  IBUF \X_i_IBUF[22]_inst 
       (.I(X_i[22]),
        .O(X_i_IBUF[22]));
  IBUF \X_i_IBUF[23]_inst 
       (.I(X_i[23]),
        .O(X_i_IBUF[23]));
  IBUF \X_i_IBUF[24]_inst 
       (.I(X_i[24]),
        .O(X_i_IBUF[24]));
  IBUF \X_i_IBUF[25]_inst 
       (.I(X_i[25]),
        .O(X_i_IBUF[25]));
  IBUF \X_i_IBUF[26]_inst 
       (.I(X_i[26]),
        .O(X_i_IBUF[26]));
  IBUF \X_i_IBUF[27]_inst 
       (.I(X_i[27]),
        .O(X_i_IBUF[27]));
  IBUF \X_i_IBUF[28]_inst 
       (.I(X_i[28]),
        .O(X_i_IBUF[28]));
  IBUF \X_i_IBUF[29]_inst 
       (.I(X_i[29]),
        .O(X_i_IBUF[29]));
  IBUF \X_i_IBUF[2]_inst 
       (.I(X_i[2]),
        .O(X_i_IBUF[2]));
  IBUF \X_i_IBUF[30]_inst 
       (.I(X_i[30]),
        .O(X_i_IBUF[30]));
  IBUF \X_i_IBUF[31]_inst 
       (.I(X_i[31]),
        .O(X_i_IBUF[31]));
  IBUF \X_i_IBUF[3]_inst 
       (.I(X_i[3]),
        .O(X_i_IBUF[3]));
  IBUF \X_i_IBUF[4]_inst 
       (.I(X_i[4]),
        .O(X_i_IBUF[4]));
  IBUF \X_i_IBUF[5]_inst 
       (.I(X_i[5]),
        .O(X_i_IBUF[5]));
  IBUF \X_i_IBUF[6]_inst 
       (.I(X_i[6]),
        .O(X_i_IBUF[6]));
  IBUF \X_i_IBUF[7]_inst 
       (.I(X_i[7]),
        .O(X_i_IBUF[7]));
  IBUF \X_i_IBUF[8]_inst 
       (.I(X_i[8]),
        .O(X_i_IBUF[8]));
  IBUF \X_i_IBUF[9]_inst 
       (.I(X_i[9]),
        .O(X_i_IBUF[9]));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[0]),
        .Q(\X_reg_n_0_[0] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[10] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[10]),
        .Q(\X_reg_n_0_[10] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[11] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[11]),
        .Q(\X_reg_n_0_[11] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[12] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[12]),
        .Q(\X_reg_n_0_[12] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[13] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[13]),
        .Q(\X_reg_n_0_[13] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[14] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[14]),
        .Q(\X_reg_n_0_[14] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[15] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[15]),
        .Q(\X_reg_n_0_[15] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[16] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[16]),
        .Q(\X_reg_n_0_[16] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[17] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[17]),
        .Q(\X_reg_n_0_[17] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[18] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[18]),
        .Q(\X_reg_n_0_[18] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[19] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[19]),
        .Q(\X_reg_n_0_[19] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[1]),
        .Q(\X_reg_n_0_[1] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[20] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[20]),
        .Q(\X_reg_n_0_[20] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[21] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[21]),
        .Q(\X_reg_n_0_[21] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[22] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[22]),
        .Q(\X_reg_n_0_[22] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[23] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[23]),
        .Q(\X_reg_n_0_[23] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[24] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[24]),
        .Q(\X_reg_n_0_[24] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[25] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[25]),
        .Q(\X_reg_n_0_[25] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[26] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[26]),
        .Q(\X_reg_n_0_[26] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[27] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[27]),
        .Q(\X_reg_n_0_[27] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[28] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[28]),
        .Q(\X_reg_n_0_[28] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[29] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[29]),
        .Q(\X_reg_n_0_[29] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[2]),
        .Q(\X_reg_n_0_[2] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[30] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[30]),
        .Q(\X_reg_n_0_[30] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[31] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[31]),
        .Q(\X_reg_n_0_[31] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[3]),
        .Q(\X_reg_n_0_[3] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[4]),
        .Q(\X_reg_n_0_[4] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[5]),
        .Q(\X_reg_n_0_[5] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[6]),
        .Q(\X_reg_n_0_[6] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[7]),
        .Q(\X_reg_n_0_[7] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[8] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[8]),
        .Q(\X_reg_n_0_[8] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \X_reg[9] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(X[9]),
        .Q(\X_reg_n_0_[9] ),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[0]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[0]),
        .I3(state_p[0]),
        .O(Y[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[10]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[10]),
        .I3(state_p[0]),
        .O(Y[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[11]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[11]),
        .I3(state_p[0]),
        .O(Y[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[12]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[12]),
        .I3(state_p[0]),
        .O(Y[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[13]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[13]),
        .I3(state_p[0]),
        .O(Y[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[14]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[14]),
        .I3(state_p[0]),
        .O(Y[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[15]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[15]),
        .I3(state_p[0]),
        .O(Y[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[16]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[16]),
        .I3(state_p[0]),
        .O(Y[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[17]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[17]),
        .I3(state_p[0]),
        .O(Y[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[18]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[18]),
        .I3(state_p[0]),
        .O(Y[18]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[19]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[19]),
        .I3(state_p[0]),
        .O(Y[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[1]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[1]),
        .I3(state_p[0]),
        .O(Y[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[20]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[20]),
        .I3(state_p[0]),
        .O(Y[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[21]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[21]),
        .I3(state_p[0]),
        .O(Y[21]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[22]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[22]),
        .I3(state_p[0]),
        .O(Y[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[23]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[23]),
        .I3(state_p[0]),
        .O(Y[23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[24]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[24]),
        .I3(state_p[0]),
        .O(Y[24]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[25]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[25]),
        .I3(state_p[0]),
        .O(Y[25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[26]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[26]),
        .I3(state_p[0]),
        .O(Y[26]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[27]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[27]),
        .I3(state_p[0]),
        .O(Y[27]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[28]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[28]),
        .I3(state_p[0]),
        .O(Y[28]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[29]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[29]),
        .I3(state_p[0]),
        .O(Y[29]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[2]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[2]),
        .I3(state_p[0]),
        .O(Y[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[30]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[30]),
        .I3(state_p[0]),
        .O(Y[30]));
  LUT3 #(
    .INIT(8'h42)) 
    \Y[31]_i_1 
       (.I0(state_p[0]),
        .I1(state_p[1]),
        .I2(state_p[2]),
        .O(\Y[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[31]_i_2 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[31]),
        .I3(state_p[0]),
        .O(Y[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[3]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[3]),
        .I3(state_p[0]),
        .O(Y[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[4]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[4]),
        .I3(state_p[0]),
        .O(Y[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[5]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[5]),
        .I3(state_p[0]),
        .O(Y[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[6]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[6]),
        .I3(state_p[0]),
        .O(Y[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[7]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[7]),
        .I3(state_p[0]),
        .O(Y[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[8]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[8]),
        .I3(state_p[0]),
        .O(Y[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Y[9]_i_1 
       (.I0(state_p[2]),
        .I1(state_p[1]),
        .I2(Y_i_IBUF[9]),
        .I3(state_p[0]),
        .O(Y[9]));
  IBUF \Y_i_IBUF[0]_inst 
       (.I(Y_i[0]),
        .O(Y_i_IBUF[0]));
  IBUF \Y_i_IBUF[10]_inst 
       (.I(Y_i[10]),
        .O(Y_i_IBUF[10]));
  IBUF \Y_i_IBUF[11]_inst 
       (.I(Y_i[11]),
        .O(Y_i_IBUF[11]));
  IBUF \Y_i_IBUF[12]_inst 
       (.I(Y_i[12]),
        .O(Y_i_IBUF[12]));
  IBUF \Y_i_IBUF[13]_inst 
       (.I(Y_i[13]),
        .O(Y_i_IBUF[13]));
  IBUF \Y_i_IBUF[14]_inst 
       (.I(Y_i[14]),
        .O(Y_i_IBUF[14]));
  IBUF \Y_i_IBUF[15]_inst 
       (.I(Y_i[15]),
        .O(Y_i_IBUF[15]));
  IBUF \Y_i_IBUF[16]_inst 
       (.I(Y_i[16]),
        .O(Y_i_IBUF[16]));
  IBUF \Y_i_IBUF[17]_inst 
       (.I(Y_i[17]),
        .O(Y_i_IBUF[17]));
  IBUF \Y_i_IBUF[18]_inst 
       (.I(Y_i[18]),
        .O(Y_i_IBUF[18]));
  IBUF \Y_i_IBUF[19]_inst 
       (.I(Y_i[19]),
        .O(Y_i_IBUF[19]));
  IBUF \Y_i_IBUF[1]_inst 
       (.I(Y_i[1]),
        .O(Y_i_IBUF[1]));
  IBUF \Y_i_IBUF[20]_inst 
       (.I(Y_i[20]),
        .O(Y_i_IBUF[20]));
  IBUF \Y_i_IBUF[21]_inst 
       (.I(Y_i[21]),
        .O(Y_i_IBUF[21]));
  IBUF \Y_i_IBUF[22]_inst 
       (.I(Y_i[22]),
        .O(Y_i_IBUF[22]));
  IBUF \Y_i_IBUF[23]_inst 
       (.I(Y_i[23]),
        .O(Y_i_IBUF[23]));
  IBUF \Y_i_IBUF[24]_inst 
       (.I(Y_i[24]),
        .O(Y_i_IBUF[24]));
  IBUF \Y_i_IBUF[25]_inst 
       (.I(Y_i[25]),
        .O(Y_i_IBUF[25]));
  IBUF \Y_i_IBUF[26]_inst 
       (.I(Y_i[26]),
        .O(Y_i_IBUF[26]));
  IBUF \Y_i_IBUF[27]_inst 
       (.I(Y_i[27]),
        .O(Y_i_IBUF[27]));
  IBUF \Y_i_IBUF[28]_inst 
       (.I(Y_i[28]),
        .O(Y_i_IBUF[28]));
  IBUF \Y_i_IBUF[29]_inst 
       (.I(Y_i[29]),
        .O(Y_i_IBUF[29]));
  IBUF \Y_i_IBUF[2]_inst 
       (.I(Y_i[2]),
        .O(Y_i_IBUF[2]));
  IBUF \Y_i_IBUF[30]_inst 
       (.I(Y_i[30]),
        .O(Y_i_IBUF[30]));
  IBUF \Y_i_IBUF[31]_inst 
       (.I(Y_i[31]),
        .O(Y_i_IBUF[31]));
  IBUF \Y_i_IBUF[3]_inst 
       (.I(Y_i[3]),
        .O(Y_i_IBUF[3]));
  IBUF \Y_i_IBUF[4]_inst 
       (.I(Y_i[4]),
        .O(Y_i_IBUF[4]));
  IBUF \Y_i_IBUF[5]_inst 
       (.I(Y_i[5]),
        .O(Y_i_IBUF[5]));
  IBUF \Y_i_IBUF[6]_inst 
       (.I(Y_i[6]),
        .O(Y_i_IBUF[6]));
  IBUF \Y_i_IBUF[7]_inst 
       (.I(Y_i[7]),
        .O(Y_i_IBUF[7]));
  IBUF \Y_i_IBUF[8]_inst 
       (.I(Y_i[8]),
        .O(Y_i_IBUF[8]));
  IBUF \Y_i_IBUF[9]_inst 
       (.I(Y_i[9]),
        .O(Y_i_IBUF[9]));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[0]),
        .Q(\Y_reg_n_0_[0] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[10] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[10]),
        .Q(\Y_reg_n_0_[10] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[11] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[11]),
        .Q(\Y_reg_n_0_[11] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[12] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[12]),
        .Q(\Y_reg_n_0_[12] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[13] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[13]),
        .Q(\Y_reg_n_0_[13] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[14] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[14]),
        .Q(\Y_reg_n_0_[14] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[15] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[15]),
        .Q(\Y_reg_n_0_[15] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[16] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[16]),
        .Q(\Y_reg_n_0_[16] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[17] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[17]),
        .Q(\Y_reg_n_0_[17] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[18] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[18]),
        .Q(\Y_reg_n_0_[18] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[19] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[19]),
        .Q(\Y_reg_n_0_[19] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[1]),
        .Q(\Y_reg_n_0_[1] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[20] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[20]),
        .Q(\Y_reg_n_0_[20] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[21] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[21]),
        .Q(\Y_reg_n_0_[21] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[22] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[22]),
        .Q(\Y_reg_n_0_[22] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[23] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[23]),
        .Q(\Y_reg_n_0_[23] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[24] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[24]),
        .Q(\Y_reg_n_0_[24] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[25] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[25]),
        .Q(\Y_reg_n_0_[25] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[26] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[26]),
        .Q(\Y_reg_n_0_[26] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[27] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[27]),
        .Q(\Y_reg_n_0_[27] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[28] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[28]),
        .Q(\Y_reg_n_0_[28] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[29] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[29]),
        .Q(\Y_reg_n_0_[29] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[2]),
        .Q(\Y_reg_n_0_[2] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[30] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[30]),
        .Q(\Y_reg_n_0_[30] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[31] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[31]),
        .Q(\Y_reg_n_0_[31] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[3]),
        .Q(\Y_reg_n_0_[3] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[4]),
        .Q(\Y_reg_n_0_[4] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[5]),
        .Q(\Y_reg_n_0_[5] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[6]),
        .Q(\Y_reg_n_0_[6] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[7]),
        .Q(\Y_reg_n_0_[7] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[8] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[8]),
        .Q(\Y_reg_n_0_[8] ),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \Y_reg[9] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\Y[31]_i_1_n_0 ),
        .D(Y[9]),
        .Q(\Y_reg_n_0_[9] ),
        .R(rst_i_IBUF));
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  LUT4 #(
    .INIT(16'h8B08)) 
    \readAddr_p[0]_i_1 
       (.I0(state_p[0]),
        .I1(state_p[1]),
        .I2(state_p[2]),
        .I3(readAddr_p[0]),
        .O(\readAddr_p[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA320)) 
    \readAddr_p[1]_i_1 
       (.I0(state_p[0]),
        .I1(state_p[1]),
        .I2(state_p[2]),
        .I3(readAddr_p[1]),
        .O(\readAddr_p[1]_i_1_n_0 ));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \readAddr_p_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\readAddr_p[0]_i_1_n_0 ),
        .Q(readAddr_p[0]),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \readAddr_p_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\readAddr_p[1]_i_1_n_0 ),
        .Q(readAddr_p[1]),
        .R(rst_i_IBUF));
  IBUF rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
  OBUF \share_o_OBUF[0]_inst 
       (.I(share_o_OBUF[0]),
        .O(share_o[0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[0]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[0] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[0] ),
        .O(share_o_OBUF[0]));
  OBUF \share_o_OBUF[10]_inst 
       (.I(share_o_OBUF[10]),
        .O(share_o[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[10]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[10] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[10] ),
        .O(share_o_OBUF[10]));
  OBUF \share_o_OBUF[11]_inst 
       (.I(share_o_OBUF[11]),
        .O(share_o[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[11]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[11] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[11] ),
        .O(share_o_OBUF[11]));
  OBUF \share_o_OBUF[12]_inst 
       (.I(share_o_OBUF[12]),
        .O(share_o[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[12]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[12] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[12] ),
        .O(share_o_OBUF[12]));
  OBUF \share_o_OBUF[13]_inst 
       (.I(share_o_OBUF[13]),
        .O(share_o[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[13]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[13] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[13] ),
        .O(share_o_OBUF[13]));
  OBUF \share_o_OBUF[14]_inst 
       (.I(share_o_OBUF[14]),
        .O(share_o[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[14]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[14] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[14] ),
        .O(share_o_OBUF[14]));
  OBUF \share_o_OBUF[15]_inst 
       (.I(share_o_OBUF[15]),
        .O(share_o[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[15]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[15] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[15] ),
        .O(share_o_OBUF[15]));
  OBUF \share_o_OBUF[16]_inst 
       (.I(share_o_OBUF[16]),
        .O(share_o[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[16]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[16] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[16] ),
        .O(share_o_OBUF[16]));
  OBUF \share_o_OBUF[17]_inst 
       (.I(share_o_OBUF[17]),
        .O(share_o[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[17]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[17] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[17] ),
        .O(share_o_OBUF[17]));
  OBUF \share_o_OBUF[18]_inst 
       (.I(share_o_OBUF[18]),
        .O(share_o[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[18]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[18] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[18] ),
        .O(share_o_OBUF[18]));
  OBUF \share_o_OBUF[19]_inst 
       (.I(share_o_OBUF[19]),
        .O(share_o[19]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[19]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[19] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[19] ),
        .O(share_o_OBUF[19]));
  OBUF \share_o_OBUF[1]_inst 
       (.I(share_o_OBUF[1]),
        .O(share_o[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[1]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[1] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[1] ),
        .O(share_o_OBUF[1]));
  OBUF \share_o_OBUF[20]_inst 
       (.I(share_o_OBUF[20]),
        .O(share_o[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[20]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[20] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[20] ),
        .O(share_o_OBUF[20]));
  OBUF \share_o_OBUF[21]_inst 
       (.I(share_o_OBUF[21]),
        .O(share_o[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[21]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[21] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[21] ),
        .O(share_o_OBUF[21]));
  OBUF \share_o_OBUF[22]_inst 
       (.I(share_o_OBUF[22]),
        .O(share_o[22]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[22]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[22] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[22] ),
        .O(share_o_OBUF[22]));
  OBUF \share_o_OBUF[23]_inst 
       (.I(share_o_OBUF[23]),
        .O(share_o[23]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[23]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[23] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[23] ),
        .O(share_o_OBUF[23]));
  OBUF \share_o_OBUF[24]_inst 
       (.I(share_o_OBUF[24]),
        .O(share_o[24]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[24]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[24] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[24] ),
        .O(share_o_OBUF[24]));
  OBUF \share_o_OBUF[25]_inst 
       (.I(share_o_OBUF[25]),
        .O(share_o[25]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[25]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[25] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[25] ),
        .O(share_o_OBUF[25]));
  OBUF \share_o_OBUF[26]_inst 
       (.I(share_o_OBUF[26]),
        .O(share_o[26]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[26]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[26] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[26] ),
        .O(share_o_OBUF[26]));
  OBUF \share_o_OBUF[27]_inst 
       (.I(share_o_OBUF[27]),
        .O(share_o[27]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[27]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[27] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[27] ),
        .O(share_o_OBUF[27]));
  OBUF \share_o_OBUF[28]_inst 
       (.I(share_o_OBUF[28]),
        .O(share_o[28]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[28]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[28] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[28] ),
        .O(share_o_OBUF[28]));
  OBUF \share_o_OBUF[29]_inst 
       (.I(share_o_OBUF[29]),
        .O(share_o[29]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[29]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[29] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[29] ),
        .O(share_o_OBUF[29]));
  OBUF \share_o_OBUF[2]_inst 
       (.I(share_o_OBUF[2]),
        .O(share_o[2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[2]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[2] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[2] ),
        .O(share_o_OBUF[2]));
  OBUF \share_o_OBUF[30]_inst 
       (.I(share_o_OBUF[30]),
        .O(share_o[30]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[30]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[30] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[30] ),
        .O(share_o_OBUF[30]));
  OBUF \share_o_OBUF[31]_inst 
       (.I(share_o_OBUF[31]),
        .O(share_o[31]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[31]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[31] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[31] ),
        .O(share_o_OBUF[31]));
  OBUF \share_o_OBUF[3]_inst 
       (.I(share_o_OBUF[3]),
        .O(share_o[3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[3]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[3] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[3] ),
        .O(share_o_OBUF[3]));
  OBUF \share_o_OBUF[4]_inst 
       (.I(share_o_OBUF[4]),
        .O(share_o[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[4]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[4] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[4] ),
        .O(share_o_OBUF[4]));
  OBUF \share_o_OBUF[5]_inst 
       (.I(share_o_OBUF[5]),
        .O(share_o[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[5]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[5] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[5] ),
        .O(share_o_OBUF[5]));
  OBUF \share_o_OBUF[6]_inst 
       (.I(share_o_OBUF[6]),
        .O(share_o[6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[6]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[6] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[6] ),
        .O(share_o_OBUF[6]));
  OBUF \share_o_OBUF[7]_inst 
       (.I(share_o_OBUF[7]),
        .O(share_o[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[7]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[7] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[7] ),
        .O(share_o_OBUF[7]));
  OBUF \share_o_OBUF[8]_inst 
       (.I(share_o_OBUF[8]),
        .O(share_o[8]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[8]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[8] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[8] ),
        .O(share_o_OBUF[8]));
  OBUF \share_o_OBUF[9]_inst 
       (.I(share_o_OBUF[9]),
        .O(share_o[9]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share_o_OBUF[9]_inst_i_1 
       (.I0(readAddr_p[0]),
        .I1(\X_reg_n_0_[9] ),
        .I2(readAddr_p[1]),
        .I3(\Y_reg_n_0_[9] ),
        .O(share_o_OBUF[9]));
  IBUF start_i_IBUF_inst
       (.I(start_i),
        .O(start_i_IBUF));
endmodule
