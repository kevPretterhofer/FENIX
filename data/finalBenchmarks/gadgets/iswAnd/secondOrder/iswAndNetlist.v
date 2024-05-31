// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Wed Nov 30 14:36:41 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/gadgets/iswAnd/secondOrder/iswAndNetlist.v
// Design      : isw_and
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module isw_and
   (clk_i,
    rst_i,
    X0_i,
    X1_i,
    X2_i,
    Y0_i,
    Y1_i,
    Y2_i,
    R01_i,
    R02_i,
    R12_i,
    Q0_o,
    Q1_o,
    Q2_o);
  input clk_i;
  input rst_i;
  input [7:0]X0_i;
  input [7:0]X1_i;
  input [7:0]X2_i;
  input [7:0]Y0_i;
  input [7:0]Y1_i;
  input [7:0]Y2_i;
  input [7:0]R01_i;
  input [7:0]R02_i;
  input [7:0]R12_i;
  output [7:0]Q0_o;
  output [7:0]Q1_o;
  output [7:0]Q2_o;

  wire \<const1> ;
  wire [7:0]C0_q;
  wire [7:0]C0_q0;
  wire [7:0]C1_q;
  wire [7:0]C1_q0;
  wire [7:0]C2_q;
  wire [7:0]C2_q0;
  wire [7:0]Q0_o;
  wire [7:0]Q0_o_OBUF;
  wire [7:0]Q1_o;
  wire [7:0]Q1_o_OBUF;
  wire [7:0]Q2_o;
  wire [7:0]Q2_o_OBUF;
  wire [7:0]R01_i;
  wire [7:0]R01_i_IBUF;
  wire [7:0]R02_i;
  wire [7:0]R02_i_IBUF;
  wire [7:0]R10_q;
  wire [7:0]R10_q0;
  wire [7:0]R12_i;
  wire [7:0]R12_i_IBUF;
  wire [7:0]R20_q;
  wire [7:0]R20_q0;
  wire [7:0]R21_q;
  wire [7:0]R21_q0;
  wire [7:0]X0_i;
  wire [7:0]X0_i_IBUF;
  wire [7:0]X1_i;
  wire [7:0]X1_i_IBUF;
  wire [7:0]X2_i;
  wire [7:0]X2_i_IBUF;
  wire [7:0]Y0_i;
  wire [7:0]Y0_i_IBUF;
  wire [7:0]Y1_i;
  wire [7:0]Y1_i_IBUF;
  wire [7:0]Y2_i;
  wire [7:0]Y2_i_IBUF;
  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire rst_i;
  wire rst_i_IBUF;
  wire [7:0]tmp0_q;
  wire [7:0]tmp0_q0;
  wire [7:0]tmp1_q;
  wire [7:0]tmp1_q0;
  wire [7:0]tmp2_q;
  wire [7:0]tmp2_q0;
  wire [7:0]tmp3_q;
  wire [7:0]tmp3_q0;
  wire [7:0]tmp4_q;
  wire [7:0]tmp4_q0;
  wire [7:0]tmp5_q;
  wire [7:0]tmp5_q0;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C0_q[0]_i_1 
       (.I0(X0_i_IBUF[0]),
        .I1(Y0_i_IBUF[0]),
        .O(C0_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C0_q[1]_i_1 
       (.I0(X0_i_IBUF[1]),
        .I1(Y0_i_IBUF[1]),
        .O(C0_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C0_q[2]_i_1 
       (.I0(X0_i_IBUF[2]),
        .I1(Y0_i_IBUF[2]),
        .O(C0_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C0_q[3]_i_1 
       (.I0(X0_i_IBUF[3]),
        .I1(Y0_i_IBUF[3]),
        .O(C0_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C0_q[4]_i_1 
       (.I0(X0_i_IBUF[4]),
        .I1(Y0_i_IBUF[4]),
        .O(C0_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C0_q[5]_i_1 
       (.I0(X0_i_IBUF[5]),
        .I1(Y0_i_IBUF[5]),
        .O(C0_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C0_q[6]_i_1 
       (.I0(X0_i_IBUF[6]),
        .I1(Y0_i_IBUF[6]),
        .O(C0_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C0_q[7]_i_1 
       (.I0(X0_i_IBUF[7]),
        .I1(Y0_i_IBUF[7]),
        .O(C0_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \C0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C0_q0[0]),
        .Q(C0_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C0_q0[1]),
        .Q(C0_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C0_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C0_q0[2]),
        .Q(C0_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C0_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C0_q0[3]),
        .Q(C0_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C0_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C0_q0[4]),
        .Q(C0_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C0_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C0_q0[5]),
        .Q(C0_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C0_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C0_q0[6]),
        .Q(C0_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C0_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C0_q0[7]),
        .Q(C0_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C1_q[0]_i_1 
       (.I0(X1_i_IBUF[0]),
        .I1(Y1_i_IBUF[0]),
        .O(C1_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C1_q[1]_i_1 
       (.I0(X1_i_IBUF[1]),
        .I1(Y1_i_IBUF[1]),
        .O(C1_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C1_q[2]_i_1 
       (.I0(X1_i_IBUF[2]),
        .I1(Y1_i_IBUF[2]),
        .O(C1_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C1_q[3]_i_1 
       (.I0(X1_i_IBUF[3]),
        .I1(Y1_i_IBUF[3]),
        .O(C1_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C1_q[4]_i_1 
       (.I0(X1_i_IBUF[4]),
        .I1(Y1_i_IBUF[4]),
        .O(C1_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C1_q[5]_i_1 
       (.I0(X1_i_IBUF[5]),
        .I1(Y1_i_IBUF[5]),
        .O(C1_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C1_q[6]_i_1 
       (.I0(X1_i_IBUF[6]),
        .I1(Y1_i_IBUF[6]),
        .O(C1_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C1_q[7]_i_1 
       (.I0(X1_i_IBUF[7]),
        .I1(Y1_i_IBUF[7]),
        .O(C1_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \C1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C1_q0[0]),
        .Q(C1_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C1_q0[1]),
        .Q(C1_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C1_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C1_q0[2]),
        .Q(C1_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C1_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C1_q0[3]),
        .Q(C1_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C1_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C1_q0[4]),
        .Q(C1_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C1_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C1_q0[5]),
        .Q(C1_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C1_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C1_q0[6]),
        .Q(C1_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C1_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C1_q0[7]),
        .Q(C1_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C2_q[0]_i_1 
       (.I0(X2_i_IBUF[0]),
        .I1(Y2_i_IBUF[0]),
        .O(C2_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C2_q[1]_i_1 
       (.I0(X2_i_IBUF[1]),
        .I1(Y2_i_IBUF[1]),
        .O(C2_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C2_q[2]_i_1 
       (.I0(X2_i_IBUF[2]),
        .I1(Y2_i_IBUF[2]),
        .O(C2_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C2_q[3]_i_1 
       (.I0(X2_i_IBUF[3]),
        .I1(Y2_i_IBUF[3]),
        .O(C2_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C2_q[4]_i_1 
       (.I0(X2_i_IBUF[4]),
        .I1(Y2_i_IBUF[4]),
        .O(C2_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C2_q[5]_i_1 
       (.I0(X2_i_IBUF[5]),
        .I1(Y2_i_IBUF[5]),
        .O(C2_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C2_q[6]_i_1 
       (.I0(X2_i_IBUF[6]),
        .I1(Y2_i_IBUF[6]),
        .O(C2_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \C2_q[7]_i_1 
       (.I0(X2_i_IBUF[7]),
        .I1(Y2_i_IBUF[7]),
        .O(C2_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \C2_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C2_q0[0]),
        .Q(C2_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C2_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C2_q0[1]),
        .Q(C2_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C2_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C2_q0[2]),
        .Q(C2_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C2_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C2_q0[3]),
        .Q(C2_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C2_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C2_q0[4]),
        .Q(C2_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C2_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C2_q0[5]),
        .Q(C2_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C2_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C2_q0[6]),
        .Q(C2_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \C2_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(C2_q0[7]),
        .Q(C2_q[7]),
        .R(rst_i_IBUF));
  OBUF \Q0_o_OBUF[0]_inst 
       (.I(Q0_o_OBUF[0]),
        .O(Q0_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q0_o_OBUF[0]_inst_i_1 
       (.I0(R01_i_IBUF[0]),
        .I1(C0_q[0]),
        .I2(R02_i_IBUF[0]),
        .O(Q0_o_OBUF[0]));
  OBUF \Q0_o_OBUF[1]_inst 
       (.I(Q0_o_OBUF[1]),
        .O(Q0_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q0_o_OBUF[1]_inst_i_1 
       (.I0(R01_i_IBUF[1]),
        .I1(C0_q[1]),
        .I2(R02_i_IBUF[1]),
        .O(Q0_o_OBUF[1]));
  OBUF \Q0_o_OBUF[2]_inst 
       (.I(Q0_o_OBUF[2]),
        .O(Q0_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q0_o_OBUF[2]_inst_i_1 
       (.I0(R01_i_IBUF[2]),
        .I1(C0_q[2]),
        .I2(R02_i_IBUF[2]),
        .O(Q0_o_OBUF[2]));
  OBUF \Q0_o_OBUF[3]_inst 
       (.I(Q0_o_OBUF[3]),
        .O(Q0_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q0_o_OBUF[3]_inst_i_1 
       (.I0(R01_i_IBUF[3]),
        .I1(C0_q[3]),
        .I2(R02_i_IBUF[3]),
        .O(Q0_o_OBUF[3]));
  OBUF \Q0_o_OBUF[4]_inst 
       (.I(Q0_o_OBUF[4]),
        .O(Q0_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q0_o_OBUF[4]_inst_i_1 
       (.I0(R01_i_IBUF[4]),
        .I1(C0_q[4]),
        .I2(R02_i_IBUF[4]),
        .O(Q0_o_OBUF[4]));
  OBUF \Q0_o_OBUF[5]_inst 
       (.I(Q0_o_OBUF[5]),
        .O(Q0_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q0_o_OBUF[5]_inst_i_1 
       (.I0(R01_i_IBUF[5]),
        .I1(C0_q[5]),
        .I2(R02_i_IBUF[5]),
        .O(Q0_o_OBUF[5]));
  OBUF \Q0_o_OBUF[6]_inst 
       (.I(Q0_o_OBUF[6]),
        .O(Q0_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q0_o_OBUF[6]_inst_i_1 
       (.I0(R01_i_IBUF[6]),
        .I1(C0_q[6]),
        .I2(R02_i_IBUF[6]),
        .O(Q0_o_OBUF[6]));
  OBUF \Q0_o_OBUF[7]_inst 
       (.I(Q0_o_OBUF[7]),
        .O(Q0_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q0_o_OBUF[7]_inst_i_1 
       (.I0(R01_i_IBUF[7]),
        .I1(C0_q[7]),
        .I2(R02_i_IBUF[7]),
        .O(Q0_o_OBUF[7]));
  OBUF \Q1_o_OBUF[0]_inst 
       (.I(Q1_o_OBUF[0]),
        .O(Q1_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q1_o_OBUF[0]_inst_i_1 
       (.I0(R10_q[0]),
        .I1(C1_q[0]),
        .I2(R12_i_IBUF[0]),
        .O(Q1_o_OBUF[0]));
  OBUF \Q1_o_OBUF[1]_inst 
       (.I(Q1_o_OBUF[1]),
        .O(Q1_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q1_o_OBUF[1]_inst_i_1 
       (.I0(R10_q[1]),
        .I1(C1_q[1]),
        .I2(R12_i_IBUF[1]),
        .O(Q1_o_OBUF[1]));
  OBUF \Q1_o_OBUF[2]_inst 
       (.I(Q1_o_OBUF[2]),
        .O(Q1_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q1_o_OBUF[2]_inst_i_1 
       (.I0(R10_q[2]),
        .I1(C1_q[2]),
        .I2(R12_i_IBUF[2]),
        .O(Q1_o_OBUF[2]));
  OBUF \Q1_o_OBUF[3]_inst 
       (.I(Q1_o_OBUF[3]),
        .O(Q1_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q1_o_OBUF[3]_inst_i_1 
       (.I0(R10_q[3]),
        .I1(C1_q[3]),
        .I2(R12_i_IBUF[3]),
        .O(Q1_o_OBUF[3]));
  OBUF \Q1_o_OBUF[4]_inst 
       (.I(Q1_o_OBUF[4]),
        .O(Q1_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q1_o_OBUF[4]_inst_i_1 
       (.I0(R10_q[4]),
        .I1(C1_q[4]),
        .I2(R12_i_IBUF[4]),
        .O(Q1_o_OBUF[4]));
  OBUF \Q1_o_OBUF[5]_inst 
       (.I(Q1_o_OBUF[5]),
        .O(Q1_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q1_o_OBUF[5]_inst_i_1 
       (.I0(R10_q[5]),
        .I1(C1_q[5]),
        .I2(R12_i_IBUF[5]),
        .O(Q1_o_OBUF[5]));
  OBUF \Q1_o_OBUF[6]_inst 
       (.I(Q1_o_OBUF[6]),
        .O(Q1_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q1_o_OBUF[6]_inst_i_1 
       (.I0(R10_q[6]),
        .I1(C1_q[6]),
        .I2(R12_i_IBUF[6]),
        .O(Q1_o_OBUF[6]));
  OBUF \Q1_o_OBUF[7]_inst 
       (.I(Q1_o_OBUF[7]),
        .O(Q1_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \Q1_o_OBUF[7]_inst_i_1 
       (.I0(R10_q[7]),
        .I1(C1_q[7]),
        .I2(R12_i_IBUF[7]),
        .O(Q1_o_OBUF[7]));
  OBUF \Q2_o_OBUF[0]_inst 
       (.I(Q2_o_OBUF[0]),
        .O(Q2_o[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q2_o_OBUF[0]_inst_i_1 
       (.I0(R20_q[0]),
        .I1(C2_q[0]),
        .I2(R21_q[0]),
        .O(Q2_o_OBUF[0]));
  OBUF \Q2_o_OBUF[1]_inst 
       (.I(Q2_o_OBUF[1]),
        .O(Q2_o[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q2_o_OBUF[1]_inst_i_1 
       (.I0(R20_q[1]),
        .I1(C2_q[1]),
        .I2(R21_q[1]),
        .O(Q2_o_OBUF[1]));
  OBUF \Q2_o_OBUF[2]_inst 
       (.I(Q2_o_OBUF[2]),
        .O(Q2_o[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q2_o_OBUF[2]_inst_i_1 
       (.I0(R20_q[2]),
        .I1(C2_q[2]),
        .I2(R21_q[2]),
        .O(Q2_o_OBUF[2]));
  OBUF \Q2_o_OBUF[3]_inst 
       (.I(Q2_o_OBUF[3]),
        .O(Q2_o[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q2_o_OBUF[3]_inst_i_1 
       (.I0(R20_q[3]),
        .I1(C2_q[3]),
        .I2(R21_q[3]),
        .O(Q2_o_OBUF[3]));
  OBUF \Q2_o_OBUF[4]_inst 
       (.I(Q2_o_OBUF[4]),
        .O(Q2_o[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q2_o_OBUF[4]_inst_i_1 
       (.I0(R20_q[4]),
        .I1(C2_q[4]),
        .I2(R21_q[4]),
        .O(Q2_o_OBUF[4]));
  OBUF \Q2_o_OBUF[5]_inst 
       (.I(Q2_o_OBUF[5]),
        .O(Q2_o[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q2_o_OBUF[5]_inst_i_1 
       (.I0(R20_q[5]),
        .I1(C2_q[5]),
        .I2(R21_q[5]),
        .O(Q2_o_OBUF[5]));
  OBUF \Q2_o_OBUF[6]_inst 
       (.I(Q2_o_OBUF[6]),
        .O(Q2_o[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q2_o_OBUF[6]_inst_i_1 
       (.I0(R20_q[6]),
        .I1(C2_q[6]),
        .I2(R21_q[6]),
        .O(Q2_o_OBUF[6]));
  OBUF \Q2_o_OBUF[7]_inst 
       (.I(Q2_o_OBUF[7]),
        .O(Q2_o[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \Q2_o_OBUF[7]_inst_i_1 
       (.I0(R20_q[7]),
        .I1(C2_q[7]),
        .I2(R21_q[7]),
        .O(Q2_o_OBUF[7]));
  IBUF \R01_i_IBUF[0]_inst 
       (.I(R01_i[0]),
        .O(R01_i_IBUF[0]));
  IBUF \R01_i_IBUF[1]_inst 
       (.I(R01_i[1]),
        .O(R01_i_IBUF[1]));
  IBUF \R01_i_IBUF[2]_inst 
       (.I(R01_i[2]),
        .O(R01_i_IBUF[2]));
  IBUF \R01_i_IBUF[3]_inst 
       (.I(R01_i[3]),
        .O(R01_i_IBUF[3]));
  IBUF \R01_i_IBUF[4]_inst 
       (.I(R01_i[4]),
        .O(R01_i_IBUF[4]));
  IBUF \R01_i_IBUF[5]_inst 
       (.I(R01_i[5]),
        .O(R01_i_IBUF[5]));
  IBUF \R01_i_IBUF[6]_inst 
       (.I(R01_i[6]),
        .O(R01_i_IBUF[6]));
  IBUF \R01_i_IBUF[7]_inst 
       (.I(R01_i[7]),
        .O(R01_i_IBUF[7]));
  IBUF \R02_i_IBUF[0]_inst 
       (.I(R02_i[0]),
        .O(R02_i_IBUF[0]));
  IBUF \R02_i_IBUF[1]_inst 
       (.I(R02_i[1]),
        .O(R02_i_IBUF[1]));
  IBUF \R02_i_IBUF[2]_inst 
       (.I(R02_i[2]),
        .O(R02_i_IBUF[2]));
  IBUF \R02_i_IBUF[3]_inst 
       (.I(R02_i[3]),
        .O(R02_i_IBUF[3]));
  IBUF \R02_i_IBUF[4]_inst 
       (.I(R02_i[4]),
        .O(R02_i_IBUF[4]));
  IBUF \R02_i_IBUF[5]_inst 
       (.I(R02_i[5]),
        .O(R02_i_IBUF[5]));
  IBUF \R02_i_IBUF[6]_inst 
       (.I(R02_i[6]),
        .O(R02_i_IBUF[6]));
  IBUF \R02_i_IBUF[7]_inst 
       (.I(R02_i[7]),
        .O(R02_i_IBUF[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \R10_q[0]_i_1 
       (.I0(tmp1_q[0]),
        .I1(tmp0_q[0]),
        .O(R10_q0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \R10_q[1]_i_1 
       (.I0(tmp1_q[1]),
        .I1(tmp0_q[1]),
        .O(R10_q0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \R10_q[2]_i_1 
       (.I0(tmp1_q[2]),
        .I1(tmp0_q[2]),
        .O(R10_q0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \R10_q[3]_i_1 
       (.I0(tmp1_q[3]),
        .I1(tmp0_q[3]),
        .O(R10_q0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \R10_q[4]_i_1 
       (.I0(tmp1_q[4]),
        .I1(tmp0_q[4]),
        .O(R10_q0[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \R10_q[5]_i_1 
       (.I0(tmp1_q[5]),
        .I1(tmp0_q[5]),
        .O(R10_q0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \R10_q[6]_i_1 
       (.I0(tmp1_q[6]),
        .I1(tmp0_q[6]),
        .O(R10_q0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \R10_q[7]_i_1 
       (.I0(tmp1_q[7]),
        .I1(tmp0_q[7]),
        .O(R10_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \R10_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R10_q0[0]),
        .Q(R10_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R10_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R10_q0[1]),
        .Q(R10_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R10_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R10_q0[2]),
        .Q(R10_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R10_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R10_q0[3]),
        .Q(R10_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R10_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R10_q0[4]),
        .Q(R10_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R10_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R10_q0[5]),
        .Q(R10_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R10_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R10_q0[6]),
        .Q(R10_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R10_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R10_q0[7]),
        .Q(R10_q[7]),
        .R(rst_i_IBUF));
  IBUF \R12_i_IBUF[0]_inst 
       (.I(R12_i[0]),
        .O(R12_i_IBUF[0]));
  IBUF \R12_i_IBUF[1]_inst 
       (.I(R12_i[1]),
        .O(R12_i_IBUF[1]));
  IBUF \R12_i_IBUF[2]_inst 
       (.I(R12_i[2]),
        .O(R12_i_IBUF[2]));
  IBUF \R12_i_IBUF[3]_inst 
       (.I(R12_i[3]),
        .O(R12_i_IBUF[3]));
  IBUF \R12_i_IBUF[4]_inst 
       (.I(R12_i[4]),
        .O(R12_i_IBUF[4]));
  IBUF \R12_i_IBUF[5]_inst 
       (.I(R12_i[5]),
        .O(R12_i_IBUF[5]));
  IBUF \R12_i_IBUF[6]_inst 
       (.I(R12_i[6]),
        .O(R12_i_IBUF[6]));
  IBUF \R12_i_IBUF[7]_inst 
       (.I(R12_i[7]),
        .O(R12_i_IBUF[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \R20_q[0]_i_1 
       (.I0(tmp3_q[0]),
        .I1(tmp2_q[0]),
        .O(R20_q0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \R20_q[1]_i_1 
       (.I0(tmp3_q[1]),
        .I1(tmp2_q[1]),
        .O(R20_q0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \R20_q[2]_i_1 
       (.I0(tmp3_q[2]),
        .I1(tmp2_q[2]),
        .O(R20_q0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \R20_q[3]_i_1 
       (.I0(tmp3_q[3]),
        .I1(tmp2_q[3]),
        .O(R20_q0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \R20_q[4]_i_1 
       (.I0(tmp3_q[4]),
        .I1(tmp2_q[4]),
        .O(R20_q0[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \R20_q[5]_i_1 
       (.I0(tmp3_q[5]),
        .I1(tmp2_q[5]),
        .O(R20_q0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \R20_q[6]_i_1 
       (.I0(tmp3_q[6]),
        .I1(tmp2_q[6]),
        .O(R20_q0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \R20_q[7]_i_1 
       (.I0(tmp3_q[7]),
        .I1(tmp2_q[7]),
        .O(R20_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \R20_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R20_q0[0]),
        .Q(R20_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R20_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R20_q0[1]),
        .Q(R20_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R20_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R20_q0[2]),
        .Q(R20_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R20_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R20_q0[3]),
        .Q(R20_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R20_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R20_q0[4]),
        .Q(R20_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R20_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R20_q0[5]),
        .Q(R20_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R20_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R20_q0[6]),
        .Q(R20_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R20_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R20_q0[7]),
        .Q(R20_q[7]),
        .R(rst_i_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    \R21_q[0]_i_1 
       (.I0(tmp5_q[0]),
        .I1(tmp4_q[0]),
        .O(R21_q0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \R21_q[1]_i_1 
       (.I0(tmp5_q[1]),
        .I1(tmp4_q[1]),
        .O(R21_q0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \R21_q[2]_i_1 
       (.I0(tmp5_q[2]),
        .I1(tmp4_q[2]),
        .O(R21_q0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \R21_q[3]_i_1 
       (.I0(tmp5_q[3]),
        .I1(tmp4_q[3]),
        .O(R21_q0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \R21_q[4]_i_1 
       (.I0(tmp5_q[4]),
        .I1(tmp4_q[4]),
        .O(R21_q0[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \R21_q[5]_i_1 
       (.I0(tmp5_q[5]),
        .I1(tmp4_q[5]),
        .O(R21_q0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \R21_q[6]_i_1 
       (.I0(tmp5_q[6]),
        .I1(tmp4_q[6]),
        .O(R21_q0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \R21_q[7]_i_1 
       (.I0(tmp5_q[7]),
        .I1(tmp4_q[7]),
        .O(R21_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \R21_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R21_q0[0]),
        .Q(R21_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R21_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R21_q0[1]),
        .Q(R21_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R21_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R21_q0[2]),
        .Q(R21_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R21_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R21_q0[3]),
        .Q(R21_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R21_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R21_q0[4]),
        .Q(R21_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R21_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R21_q0[5]),
        .Q(R21_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R21_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R21_q0[6]),
        .Q(R21_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \R21_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(R21_q0[7]),
        .Q(R21_q[7]),
        .R(rst_i_IBUF));
  VCC VCC
       (.P(\<const1> ));
  IBUF \X0_i_IBUF[0]_inst 
       (.I(X0_i[0]),
        .O(X0_i_IBUF[0]));
  IBUF \X0_i_IBUF[1]_inst 
       (.I(X0_i[1]),
        .O(X0_i_IBUF[1]));
  IBUF \X0_i_IBUF[2]_inst 
       (.I(X0_i[2]),
        .O(X0_i_IBUF[2]));
  IBUF \X0_i_IBUF[3]_inst 
       (.I(X0_i[3]),
        .O(X0_i_IBUF[3]));
  IBUF \X0_i_IBUF[4]_inst 
       (.I(X0_i[4]),
        .O(X0_i_IBUF[4]));
  IBUF \X0_i_IBUF[5]_inst 
       (.I(X0_i[5]),
        .O(X0_i_IBUF[5]));
  IBUF \X0_i_IBUF[6]_inst 
       (.I(X0_i[6]),
        .O(X0_i_IBUF[6]));
  IBUF \X0_i_IBUF[7]_inst 
       (.I(X0_i[7]),
        .O(X0_i_IBUF[7]));
  IBUF \X1_i_IBUF[0]_inst 
       (.I(X1_i[0]),
        .O(X1_i_IBUF[0]));
  IBUF \X1_i_IBUF[1]_inst 
       (.I(X1_i[1]),
        .O(X1_i_IBUF[1]));
  IBUF \X1_i_IBUF[2]_inst 
       (.I(X1_i[2]),
        .O(X1_i_IBUF[2]));
  IBUF \X1_i_IBUF[3]_inst 
       (.I(X1_i[3]),
        .O(X1_i_IBUF[3]));
  IBUF \X1_i_IBUF[4]_inst 
       (.I(X1_i[4]),
        .O(X1_i_IBUF[4]));
  IBUF \X1_i_IBUF[5]_inst 
       (.I(X1_i[5]),
        .O(X1_i_IBUF[5]));
  IBUF \X1_i_IBUF[6]_inst 
       (.I(X1_i[6]),
        .O(X1_i_IBUF[6]));
  IBUF \X1_i_IBUF[7]_inst 
       (.I(X1_i[7]),
        .O(X1_i_IBUF[7]));
  IBUF \X2_i_IBUF[0]_inst 
       (.I(X2_i[0]),
        .O(X2_i_IBUF[0]));
  IBUF \X2_i_IBUF[1]_inst 
       (.I(X2_i[1]),
        .O(X2_i_IBUF[1]));
  IBUF \X2_i_IBUF[2]_inst 
       (.I(X2_i[2]),
        .O(X2_i_IBUF[2]));
  IBUF \X2_i_IBUF[3]_inst 
       (.I(X2_i[3]),
        .O(X2_i_IBUF[3]));
  IBUF \X2_i_IBUF[4]_inst 
       (.I(X2_i[4]),
        .O(X2_i_IBUF[4]));
  IBUF \X2_i_IBUF[5]_inst 
       (.I(X2_i[5]),
        .O(X2_i_IBUF[5]));
  IBUF \X2_i_IBUF[6]_inst 
       (.I(X2_i[6]),
        .O(X2_i_IBUF[6]));
  IBUF \X2_i_IBUF[7]_inst 
       (.I(X2_i[7]),
        .O(X2_i_IBUF[7]));
  IBUF \Y0_i_IBUF[0]_inst 
       (.I(Y0_i[0]),
        .O(Y0_i_IBUF[0]));
  IBUF \Y0_i_IBUF[1]_inst 
       (.I(Y0_i[1]),
        .O(Y0_i_IBUF[1]));
  IBUF \Y0_i_IBUF[2]_inst 
       (.I(Y0_i[2]),
        .O(Y0_i_IBUF[2]));
  IBUF \Y0_i_IBUF[3]_inst 
       (.I(Y0_i[3]),
        .O(Y0_i_IBUF[3]));
  IBUF \Y0_i_IBUF[4]_inst 
       (.I(Y0_i[4]),
        .O(Y0_i_IBUF[4]));
  IBUF \Y0_i_IBUF[5]_inst 
       (.I(Y0_i[5]),
        .O(Y0_i_IBUF[5]));
  IBUF \Y0_i_IBUF[6]_inst 
       (.I(Y0_i[6]),
        .O(Y0_i_IBUF[6]));
  IBUF \Y0_i_IBUF[7]_inst 
       (.I(Y0_i[7]),
        .O(Y0_i_IBUF[7]));
  IBUF \Y1_i_IBUF[0]_inst 
       (.I(Y1_i[0]),
        .O(Y1_i_IBUF[0]));
  IBUF \Y1_i_IBUF[1]_inst 
       (.I(Y1_i[1]),
        .O(Y1_i_IBUF[1]));
  IBUF \Y1_i_IBUF[2]_inst 
       (.I(Y1_i[2]),
        .O(Y1_i_IBUF[2]));
  IBUF \Y1_i_IBUF[3]_inst 
       (.I(Y1_i[3]),
        .O(Y1_i_IBUF[3]));
  IBUF \Y1_i_IBUF[4]_inst 
       (.I(Y1_i[4]),
        .O(Y1_i_IBUF[4]));
  IBUF \Y1_i_IBUF[5]_inst 
       (.I(Y1_i[5]),
        .O(Y1_i_IBUF[5]));
  IBUF \Y1_i_IBUF[6]_inst 
       (.I(Y1_i[6]),
        .O(Y1_i_IBUF[6]));
  IBUF \Y1_i_IBUF[7]_inst 
       (.I(Y1_i[7]),
        .O(Y1_i_IBUF[7]));
  IBUF \Y2_i_IBUF[0]_inst 
       (.I(Y2_i[0]),
        .O(Y2_i_IBUF[0]));
  IBUF \Y2_i_IBUF[1]_inst 
       (.I(Y2_i[1]),
        .O(Y2_i_IBUF[1]));
  IBUF \Y2_i_IBUF[2]_inst 
       (.I(Y2_i[2]),
        .O(Y2_i_IBUF[2]));
  IBUF \Y2_i_IBUF[3]_inst 
       (.I(Y2_i[3]),
        .O(Y2_i_IBUF[3]));
  IBUF \Y2_i_IBUF[4]_inst 
       (.I(Y2_i[4]),
        .O(Y2_i_IBUF[4]));
  IBUF \Y2_i_IBUF[5]_inst 
       (.I(Y2_i[5]),
        .O(Y2_i_IBUF[5]));
  IBUF \Y2_i_IBUF[6]_inst 
       (.I(Y2_i[6]),
        .O(Y2_i_IBUF[6]));
  IBUF \Y2_i_IBUF[7]_inst 
       (.I(Y2_i[7]),
        .O(Y2_i_IBUF[7]));
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  IBUF rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp0_q[0]_i_1 
       (.I0(Y1_i_IBUF[0]),
        .I1(X0_i_IBUF[0]),
        .I2(R01_i_IBUF[0]),
        .O(tmp0_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp0_q[1]_i_1 
       (.I0(Y1_i_IBUF[1]),
        .I1(X0_i_IBUF[1]),
        .I2(R01_i_IBUF[1]),
        .O(tmp0_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp0_q[2]_i_1 
       (.I0(Y1_i_IBUF[2]),
        .I1(X0_i_IBUF[2]),
        .I2(R01_i_IBUF[2]),
        .O(tmp0_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp0_q[3]_i_1 
       (.I0(Y1_i_IBUF[3]),
        .I1(X0_i_IBUF[3]),
        .I2(R01_i_IBUF[3]),
        .O(tmp0_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp0_q[4]_i_1 
       (.I0(Y1_i_IBUF[4]),
        .I1(X0_i_IBUF[4]),
        .I2(R01_i_IBUF[4]),
        .O(tmp0_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp0_q[5]_i_1 
       (.I0(Y1_i_IBUF[5]),
        .I1(X0_i_IBUF[5]),
        .I2(R01_i_IBUF[5]),
        .O(tmp0_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp0_q[6]_i_1 
       (.I0(Y1_i_IBUF[6]),
        .I1(X0_i_IBUF[6]),
        .I2(R01_i_IBUF[6]),
        .O(tmp0_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp0_q[7]_i_1 
       (.I0(Y1_i_IBUF[7]),
        .I1(X0_i_IBUF[7]),
        .I2(R01_i_IBUF[7]),
        .O(tmp0_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp0_q0[0]),
        .Q(tmp0_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp0_q0[1]),
        .Q(tmp0_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp0_q0[2]),
        .Q(tmp0_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp0_q0[3]),
        .Q(tmp0_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp0_q0[4]),
        .Q(tmp0_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp0_q0[5]),
        .Q(tmp0_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp0_q0[6]),
        .Q(tmp0_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp0_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp0_q0[7]),
        .Q(tmp0_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp1_q[0]_i_1 
       (.I0(X1_i_IBUF[0]),
        .I1(Y0_i_IBUF[0]),
        .O(tmp1_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp1_q[1]_i_1 
       (.I0(X1_i_IBUF[1]),
        .I1(Y0_i_IBUF[1]),
        .O(tmp1_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp1_q[2]_i_1 
       (.I0(X1_i_IBUF[2]),
        .I1(Y0_i_IBUF[2]),
        .O(tmp1_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp1_q[3]_i_1 
       (.I0(X1_i_IBUF[3]),
        .I1(Y0_i_IBUF[3]),
        .O(tmp1_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp1_q[4]_i_1 
       (.I0(X1_i_IBUF[4]),
        .I1(Y0_i_IBUF[4]),
        .O(tmp1_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp1_q[5]_i_1 
       (.I0(X1_i_IBUF[5]),
        .I1(Y0_i_IBUF[5]),
        .O(tmp1_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp1_q[6]_i_1 
       (.I0(X1_i_IBUF[6]),
        .I1(Y0_i_IBUF[6]),
        .O(tmp1_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp1_q[7]_i_1 
       (.I0(X1_i_IBUF[7]),
        .I1(Y0_i_IBUF[7]),
        .O(tmp1_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1_q0[0]),
        .Q(tmp1_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1_q0[1]),
        .Q(tmp1_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1_q0[2]),
        .Q(tmp1_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1_q0[3]),
        .Q(tmp1_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1_q0[4]),
        .Q(tmp1_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1_q0[5]),
        .Q(tmp1_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1_q0[6]),
        .Q(tmp1_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp1_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp1_q0[7]),
        .Q(tmp1_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp2_q[0]_i_1 
       (.I0(Y2_i_IBUF[0]),
        .I1(X0_i_IBUF[0]),
        .I2(R02_i_IBUF[0]),
        .O(tmp2_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp2_q[1]_i_1 
       (.I0(Y2_i_IBUF[1]),
        .I1(X0_i_IBUF[1]),
        .I2(R02_i_IBUF[1]),
        .O(tmp2_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp2_q[2]_i_1 
       (.I0(Y2_i_IBUF[2]),
        .I1(X0_i_IBUF[2]),
        .I2(R02_i_IBUF[2]),
        .O(tmp2_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp2_q[3]_i_1 
       (.I0(Y2_i_IBUF[3]),
        .I1(X0_i_IBUF[3]),
        .I2(R02_i_IBUF[3]),
        .O(tmp2_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp2_q[4]_i_1 
       (.I0(Y2_i_IBUF[4]),
        .I1(X0_i_IBUF[4]),
        .I2(R02_i_IBUF[4]),
        .O(tmp2_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp2_q[5]_i_1 
       (.I0(Y2_i_IBUF[5]),
        .I1(X0_i_IBUF[5]),
        .I2(R02_i_IBUF[5]),
        .O(tmp2_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp2_q[6]_i_1 
       (.I0(Y2_i_IBUF[6]),
        .I1(X0_i_IBUF[6]),
        .I2(R02_i_IBUF[6]),
        .O(tmp2_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp2_q[7]_i_1 
       (.I0(Y2_i_IBUF[7]),
        .I1(X0_i_IBUF[7]),
        .I2(R02_i_IBUF[7]),
        .O(tmp2_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp2_q0[0]),
        .Q(tmp2_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp2_q0[1]),
        .Q(tmp2_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp2_q0[2]),
        .Q(tmp2_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp2_q0[3]),
        .Q(tmp2_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp2_q0[4]),
        .Q(tmp2_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp2_q0[5]),
        .Q(tmp2_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp2_q0[6]),
        .Q(tmp2_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp2_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp2_q0[7]),
        .Q(tmp2_q[7]),
        .R(rst_i_IBUF));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp3_q[0]_i_1 
       (.I0(X2_i_IBUF[0]),
        .I1(Y0_i_IBUF[0]),
        .O(tmp3_q0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp3_q[1]_i_1 
       (.I0(X2_i_IBUF[1]),
        .I1(Y0_i_IBUF[1]),
        .O(tmp3_q0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp3_q[2]_i_1 
       (.I0(X2_i_IBUF[2]),
        .I1(Y0_i_IBUF[2]),
        .O(tmp3_q0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp3_q[3]_i_1 
       (.I0(X2_i_IBUF[3]),
        .I1(Y0_i_IBUF[3]),
        .O(tmp3_q0[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp3_q[4]_i_1 
       (.I0(X2_i_IBUF[4]),
        .I1(Y0_i_IBUF[4]),
        .O(tmp3_q0[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp3_q[5]_i_1 
       (.I0(X2_i_IBUF[5]),
        .I1(Y0_i_IBUF[5]),
        .O(tmp3_q0[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp3_q[6]_i_1 
       (.I0(X2_i_IBUF[6]),
        .I1(Y0_i_IBUF[6]),
        .O(tmp3_q0[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp3_q[7]_i_1 
       (.I0(X2_i_IBUF[7]),
        .I1(Y0_i_IBUF[7]),
        .O(tmp3_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp3_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp3_q0[0]),
        .Q(tmp3_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp3_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp3_q0[1]),
        .Q(tmp3_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp3_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp3_q0[2]),
        .Q(tmp3_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp3_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp3_q0[3]),
        .Q(tmp3_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp3_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp3_q0[4]),
        .Q(tmp3_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp3_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp3_q0[5]),
        .Q(tmp3_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp3_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp3_q0[6]),
        .Q(tmp3_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp3_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp3_q0[7]),
        .Q(tmp3_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp4_q[0]_i_1 
       (.I0(Y2_i_IBUF[0]),
        .I1(X1_i_IBUF[0]),
        .I2(R12_i_IBUF[0]),
        .O(tmp4_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp4_q[1]_i_1 
       (.I0(Y2_i_IBUF[1]),
        .I1(X1_i_IBUF[1]),
        .I2(R12_i_IBUF[1]),
        .O(tmp4_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp4_q[2]_i_1 
       (.I0(Y2_i_IBUF[2]),
        .I1(X1_i_IBUF[2]),
        .I2(R12_i_IBUF[2]),
        .O(tmp4_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp4_q[3]_i_1 
       (.I0(Y2_i_IBUF[3]),
        .I1(X1_i_IBUF[3]),
        .I2(R12_i_IBUF[3]),
        .O(tmp4_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp4_q[4]_i_1 
       (.I0(Y2_i_IBUF[4]),
        .I1(X1_i_IBUF[4]),
        .I2(R12_i_IBUF[4]),
        .O(tmp4_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp4_q[5]_i_1 
       (.I0(Y2_i_IBUF[5]),
        .I1(X1_i_IBUF[5]),
        .I2(R12_i_IBUF[5]),
        .O(tmp4_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp4_q[6]_i_1 
       (.I0(Y2_i_IBUF[6]),
        .I1(X1_i_IBUF[6]),
        .I2(R12_i_IBUF[6]),
        .O(tmp4_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \tmp4_q[7]_i_1 
       (.I0(Y2_i_IBUF[7]),
        .I1(X1_i_IBUF[7]),
        .I2(R12_i_IBUF[7]),
        .O(tmp4_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp4_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp4_q0[0]),
        .Q(tmp4_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp4_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp4_q0[1]),
        .Q(tmp4_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp4_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp4_q0[2]),
        .Q(tmp4_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp4_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp4_q0[3]),
        .Q(tmp4_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp4_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp4_q0[4]),
        .Q(tmp4_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp4_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp4_q0[5]),
        .Q(tmp4_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp4_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp4_q0[6]),
        .Q(tmp4_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp4_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp4_q0[7]),
        .Q(tmp4_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp5_q[0]_i_1 
       (.I0(X2_i_IBUF[0]),
        .I1(Y1_i_IBUF[0]),
        .O(tmp5_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp5_q[1]_i_1 
       (.I0(X2_i_IBUF[1]),
        .I1(Y1_i_IBUF[1]),
        .O(tmp5_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp5_q[2]_i_1 
       (.I0(X2_i_IBUF[2]),
        .I1(Y1_i_IBUF[2]),
        .O(tmp5_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp5_q[3]_i_1 
       (.I0(X2_i_IBUF[3]),
        .I1(Y1_i_IBUF[3]),
        .O(tmp5_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp5_q[4]_i_1 
       (.I0(X2_i_IBUF[4]),
        .I1(Y1_i_IBUF[4]),
        .O(tmp5_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp5_q[5]_i_1 
       (.I0(X2_i_IBUF[5]),
        .I1(Y1_i_IBUF[5]),
        .O(tmp5_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp5_q[6]_i_1 
       (.I0(X2_i_IBUF[6]),
        .I1(Y1_i_IBUF[6]),
        .O(tmp5_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp5_q[7]_i_1 
       (.I0(X2_i_IBUF[7]),
        .I1(Y1_i_IBUF[7]),
        .O(tmp5_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \tmp5_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp5_q0[0]),
        .Q(tmp5_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp5_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp5_q0[1]),
        .Q(tmp5_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp5_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp5_q0[2]),
        .Q(tmp5_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp5_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp5_q0[3]),
        .Q(tmp5_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp5_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp5_q0[4]),
        .Q(tmp5_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp5_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp5_q0[5]),
        .Q(tmp5_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp5_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp5_q0[6]),
        .Q(tmp5_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \tmp5_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmp5_q0[7]),
        .Q(tmp5_q[7]),
        .R(rst_i_IBUF));
endmodule
