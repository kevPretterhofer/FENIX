// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Nov 11 12:54:03 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/gadgets/domAnd/secondOrder/domAndNetlist.v
// Design      : dom_and_2ndorder
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module dom_and_2ndorder
   (clk_i,
    rst_i,
    X0_i,
    X1_i,
    X2_i,
    Y0_i,
    Y1_i,
    Y2_i,
    Z0_i,
    Z1_i,
    Z2_i,
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
  input [7:0]Z0_i;
  input [7:0]Z1_i;
  input [7:0]Z2_i;
  output [7:0]Q0_o;
  output [7:0]Q1_o;
  output [7:0]Q2_o;

  wire \<const1> ;
  wire [7:0]AX_BY_Z0_q;
  wire [7:0]AX_BY_Z0_q0;
  wire [7:0]AX_CY_Z1_q;
  wire [7:0]AX_CY_Z1_q0;
  wire [7:0]BX_AY_Z0_q;
  wire [7:0]BX_AY_Z0_q0;
  wire [7:0]BX_CY_Z2_q;
  wire [7:0]BX_CY_Z2_q0;
  wire [7:0]CX_AY_Z1_q;
  wire [7:0]CX_AY_Z1_q0;
  wire [7:0]CX_BY_Z2_q;
  wire [7:0]CX_BY_Z2_q0;
  wire [7:0]Q0_o;
  wire [7:0]Q0_o_OBUF;
  wire [7:0]Q1_o;
  wire [7:0]Q1_o_OBUF;
  wire [7:0]Q2_o;
  wire [7:0]Q2_o_OBUF;
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
  wire [7:0]Z0_i;
  wire [7:0]Z0_i_IBUF;
  wire [7:0]Z1_i;
  wire [7:0]Z1_i_IBUF;
  wire [7:0]Z2_i;
  wire [7:0]Z2_i_IBUF;
  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire rst_i;
  wire rst_i_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_BY_Z0_q[0]_i_1 
       (.I0(Z0_i_IBUF[0]),
        .I1(Y1_i_IBUF[0]),
        .I2(X0_i_IBUF[0]),
        .O(AX_BY_Z0_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_BY_Z0_q[1]_i_1 
       (.I0(Z0_i_IBUF[1]),
        .I1(Y1_i_IBUF[1]),
        .I2(X0_i_IBUF[1]),
        .O(AX_BY_Z0_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_BY_Z0_q[2]_i_1 
       (.I0(Z0_i_IBUF[2]),
        .I1(Y1_i_IBUF[2]),
        .I2(X0_i_IBUF[2]),
        .O(AX_BY_Z0_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_BY_Z0_q[3]_i_1 
       (.I0(Z0_i_IBUF[3]),
        .I1(Y1_i_IBUF[3]),
        .I2(X0_i_IBUF[3]),
        .O(AX_BY_Z0_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_BY_Z0_q[4]_i_1 
       (.I0(Z0_i_IBUF[4]),
        .I1(Y1_i_IBUF[4]),
        .I2(X0_i_IBUF[4]),
        .O(AX_BY_Z0_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_BY_Z0_q[5]_i_1 
       (.I0(Z0_i_IBUF[5]),
        .I1(Y1_i_IBUF[5]),
        .I2(X0_i_IBUF[5]),
        .O(AX_BY_Z0_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_BY_Z0_q[6]_i_1 
       (.I0(Z0_i_IBUF[6]),
        .I1(Y1_i_IBUF[6]),
        .I2(X0_i_IBUF[6]),
        .O(AX_BY_Z0_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_BY_Z0_q[7]_i_1 
       (.I0(Z0_i_IBUF[7]),
        .I1(Y1_i_IBUF[7]),
        .I2(X0_i_IBUF[7]),
        .O(AX_BY_Z0_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \AX_BY_Z0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_BY_Z0_q0[0]),
        .Q(AX_BY_Z0_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_BY_Z0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_BY_Z0_q0[1]),
        .Q(AX_BY_Z0_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_BY_Z0_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_BY_Z0_q0[2]),
        .Q(AX_BY_Z0_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_BY_Z0_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_BY_Z0_q0[3]),
        .Q(AX_BY_Z0_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_BY_Z0_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_BY_Z0_q0[4]),
        .Q(AX_BY_Z0_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_BY_Z0_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_BY_Z0_q0[5]),
        .Q(AX_BY_Z0_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_BY_Z0_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_BY_Z0_q0[6]),
        .Q(AX_BY_Z0_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_BY_Z0_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_BY_Z0_q0[7]),
        .Q(AX_BY_Z0_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_CY_Z1_q[0]_i_1 
       (.I0(Z1_i_IBUF[0]),
        .I1(Y2_i_IBUF[0]),
        .I2(X0_i_IBUF[0]),
        .O(AX_CY_Z1_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_CY_Z1_q[1]_i_1 
       (.I0(Z1_i_IBUF[1]),
        .I1(Y2_i_IBUF[1]),
        .I2(X0_i_IBUF[1]),
        .O(AX_CY_Z1_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_CY_Z1_q[2]_i_1 
       (.I0(Z1_i_IBUF[2]),
        .I1(Y2_i_IBUF[2]),
        .I2(X0_i_IBUF[2]),
        .O(AX_CY_Z1_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_CY_Z1_q[3]_i_1 
       (.I0(Z1_i_IBUF[3]),
        .I1(Y2_i_IBUF[3]),
        .I2(X0_i_IBUF[3]),
        .O(AX_CY_Z1_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_CY_Z1_q[4]_i_1 
       (.I0(Z1_i_IBUF[4]),
        .I1(Y2_i_IBUF[4]),
        .I2(X0_i_IBUF[4]),
        .O(AX_CY_Z1_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_CY_Z1_q[5]_i_1 
       (.I0(Z1_i_IBUF[5]),
        .I1(Y2_i_IBUF[5]),
        .I2(X0_i_IBUF[5]),
        .O(AX_CY_Z1_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_CY_Z1_q[6]_i_1 
       (.I0(Z1_i_IBUF[6]),
        .I1(Y2_i_IBUF[6]),
        .I2(X0_i_IBUF[6]),
        .O(AX_CY_Z1_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \AX_CY_Z1_q[7]_i_1 
       (.I0(Z1_i_IBUF[7]),
        .I1(Y2_i_IBUF[7]),
        .I2(X0_i_IBUF[7]),
        .O(AX_CY_Z1_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \AX_CY_Z1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_CY_Z1_q0[0]),
        .Q(AX_CY_Z1_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_CY_Z1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_CY_Z1_q0[1]),
        .Q(AX_CY_Z1_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_CY_Z1_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_CY_Z1_q0[2]),
        .Q(AX_CY_Z1_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_CY_Z1_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_CY_Z1_q0[3]),
        .Q(AX_CY_Z1_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_CY_Z1_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_CY_Z1_q0[4]),
        .Q(AX_CY_Z1_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_CY_Z1_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_CY_Z1_q0[5]),
        .Q(AX_CY_Z1_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_CY_Z1_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_CY_Z1_q0[6]),
        .Q(AX_CY_Z1_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \AX_CY_Z1_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_CY_Z1_q0[7]),
        .Q(AX_CY_Z1_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_AY_Z0_q[0]_i_1 
       (.I0(Z0_i_IBUF[0]),
        .I1(Y0_i_IBUF[0]),
        .I2(X1_i_IBUF[0]),
        .O(BX_AY_Z0_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_AY_Z0_q[1]_i_1 
       (.I0(Z0_i_IBUF[1]),
        .I1(Y0_i_IBUF[1]),
        .I2(X1_i_IBUF[1]),
        .O(BX_AY_Z0_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_AY_Z0_q[2]_i_1 
       (.I0(Z0_i_IBUF[2]),
        .I1(Y0_i_IBUF[2]),
        .I2(X1_i_IBUF[2]),
        .O(BX_AY_Z0_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_AY_Z0_q[3]_i_1 
       (.I0(Z0_i_IBUF[3]),
        .I1(Y0_i_IBUF[3]),
        .I2(X1_i_IBUF[3]),
        .O(BX_AY_Z0_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_AY_Z0_q[4]_i_1 
       (.I0(Z0_i_IBUF[4]),
        .I1(Y0_i_IBUF[4]),
        .I2(X1_i_IBUF[4]),
        .O(BX_AY_Z0_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_AY_Z0_q[5]_i_1 
       (.I0(Z0_i_IBUF[5]),
        .I1(Y0_i_IBUF[5]),
        .I2(X1_i_IBUF[5]),
        .O(BX_AY_Z0_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_AY_Z0_q[6]_i_1 
       (.I0(Z0_i_IBUF[6]),
        .I1(Y0_i_IBUF[6]),
        .I2(X1_i_IBUF[6]),
        .O(BX_AY_Z0_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_AY_Z0_q[7]_i_1 
       (.I0(Z0_i_IBUF[7]),
        .I1(Y0_i_IBUF[7]),
        .I2(X1_i_IBUF[7]),
        .O(BX_AY_Z0_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \BX_AY_Z0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_AY_Z0_q0[0]),
        .Q(BX_AY_Z0_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_AY_Z0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_AY_Z0_q0[1]),
        .Q(BX_AY_Z0_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_AY_Z0_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_AY_Z0_q0[2]),
        .Q(BX_AY_Z0_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_AY_Z0_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_AY_Z0_q0[3]),
        .Q(BX_AY_Z0_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_AY_Z0_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_AY_Z0_q0[4]),
        .Q(BX_AY_Z0_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_AY_Z0_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_AY_Z0_q0[5]),
        .Q(BX_AY_Z0_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_AY_Z0_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_AY_Z0_q0[6]),
        .Q(BX_AY_Z0_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_AY_Z0_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_AY_Z0_q0[7]),
        .Q(BX_AY_Z0_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_CY_Z2_q[0]_i_1 
       (.I0(Z2_i_IBUF[0]),
        .I1(Y2_i_IBUF[0]),
        .I2(X1_i_IBUF[0]),
        .O(BX_CY_Z2_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_CY_Z2_q[1]_i_1 
       (.I0(Z2_i_IBUF[1]),
        .I1(Y2_i_IBUF[1]),
        .I2(X1_i_IBUF[1]),
        .O(BX_CY_Z2_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_CY_Z2_q[2]_i_1 
       (.I0(Z2_i_IBUF[2]),
        .I1(Y2_i_IBUF[2]),
        .I2(X1_i_IBUF[2]),
        .O(BX_CY_Z2_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_CY_Z2_q[3]_i_1 
       (.I0(Z2_i_IBUF[3]),
        .I1(Y2_i_IBUF[3]),
        .I2(X1_i_IBUF[3]),
        .O(BX_CY_Z2_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_CY_Z2_q[4]_i_1 
       (.I0(Z2_i_IBUF[4]),
        .I1(Y2_i_IBUF[4]),
        .I2(X1_i_IBUF[4]),
        .O(BX_CY_Z2_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_CY_Z2_q[5]_i_1 
       (.I0(Z2_i_IBUF[5]),
        .I1(Y2_i_IBUF[5]),
        .I2(X1_i_IBUF[5]),
        .O(BX_CY_Z2_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_CY_Z2_q[6]_i_1 
       (.I0(Z2_i_IBUF[6]),
        .I1(Y2_i_IBUF[6]),
        .I2(X1_i_IBUF[6]),
        .O(BX_CY_Z2_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \BX_CY_Z2_q[7]_i_1 
       (.I0(Z2_i_IBUF[7]),
        .I1(Y2_i_IBUF[7]),
        .I2(X1_i_IBUF[7]),
        .O(BX_CY_Z2_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \BX_CY_Z2_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_CY_Z2_q0[0]),
        .Q(BX_CY_Z2_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_CY_Z2_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_CY_Z2_q0[1]),
        .Q(BX_CY_Z2_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_CY_Z2_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_CY_Z2_q0[2]),
        .Q(BX_CY_Z2_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_CY_Z2_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_CY_Z2_q0[3]),
        .Q(BX_CY_Z2_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_CY_Z2_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_CY_Z2_q0[4]),
        .Q(BX_CY_Z2_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_CY_Z2_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_CY_Z2_q0[5]),
        .Q(BX_CY_Z2_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_CY_Z2_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_CY_Z2_q0[6]),
        .Q(BX_CY_Z2_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \BX_CY_Z2_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_CY_Z2_q0[7]),
        .Q(BX_CY_Z2_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_AY_Z1_q[0]_i_1 
       (.I0(Z1_i_IBUF[0]),
        .I1(Y0_i_IBUF[0]),
        .I2(X2_i_IBUF[0]),
        .O(CX_AY_Z1_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_AY_Z1_q[1]_i_1 
       (.I0(Z1_i_IBUF[1]),
        .I1(Y0_i_IBUF[1]),
        .I2(X2_i_IBUF[1]),
        .O(CX_AY_Z1_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_AY_Z1_q[2]_i_1 
       (.I0(Z1_i_IBUF[2]),
        .I1(Y0_i_IBUF[2]),
        .I2(X2_i_IBUF[2]),
        .O(CX_AY_Z1_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_AY_Z1_q[3]_i_1 
       (.I0(Z1_i_IBUF[3]),
        .I1(Y0_i_IBUF[3]),
        .I2(X2_i_IBUF[3]),
        .O(CX_AY_Z1_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_AY_Z1_q[4]_i_1 
       (.I0(Z1_i_IBUF[4]),
        .I1(Y0_i_IBUF[4]),
        .I2(X2_i_IBUF[4]),
        .O(CX_AY_Z1_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_AY_Z1_q[5]_i_1 
       (.I0(Z1_i_IBUF[5]),
        .I1(Y0_i_IBUF[5]),
        .I2(X2_i_IBUF[5]),
        .O(CX_AY_Z1_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_AY_Z1_q[6]_i_1 
       (.I0(Z1_i_IBUF[6]),
        .I1(Y0_i_IBUF[6]),
        .I2(X2_i_IBUF[6]),
        .O(CX_AY_Z1_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_AY_Z1_q[7]_i_1 
       (.I0(Z1_i_IBUF[7]),
        .I1(Y0_i_IBUF[7]),
        .I2(X2_i_IBUF[7]),
        .O(CX_AY_Z1_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \CX_AY_Z1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_AY_Z1_q0[0]),
        .Q(CX_AY_Z1_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_AY_Z1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_AY_Z1_q0[1]),
        .Q(CX_AY_Z1_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_AY_Z1_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_AY_Z1_q0[2]),
        .Q(CX_AY_Z1_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_AY_Z1_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_AY_Z1_q0[3]),
        .Q(CX_AY_Z1_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_AY_Z1_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_AY_Z1_q0[4]),
        .Q(CX_AY_Z1_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_AY_Z1_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_AY_Z1_q0[5]),
        .Q(CX_AY_Z1_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_AY_Z1_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_AY_Z1_q0[6]),
        .Q(CX_AY_Z1_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_AY_Z1_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_AY_Z1_q0[7]),
        .Q(CX_AY_Z1_q[7]),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_BY_Z2_q[0]_i_1 
       (.I0(Z2_i_IBUF[0]),
        .I1(Y1_i_IBUF[0]),
        .I2(X2_i_IBUF[0]),
        .O(CX_BY_Z2_q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_BY_Z2_q[1]_i_1 
       (.I0(Z2_i_IBUF[1]),
        .I1(Y1_i_IBUF[1]),
        .I2(X2_i_IBUF[1]),
        .O(CX_BY_Z2_q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_BY_Z2_q[2]_i_1 
       (.I0(Z2_i_IBUF[2]),
        .I1(Y1_i_IBUF[2]),
        .I2(X2_i_IBUF[2]),
        .O(CX_BY_Z2_q0[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_BY_Z2_q[3]_i_1 
       (.I0(Z2_i_IBUF[3]),
        .I1(Y1_i_IBUF[3]),
        .I2(X2_i_IBUF[3]),
        .O(CX_BY_Z2_q0[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_BY_Z2_q[4]_i_1 
       (.I0(Z2_i_IBUF[4]),
        .I1(Y1_i_IBUF[4]),
        .I2(X2_i_IBUF[4]),
        .O(CX_BY_Z2_q0[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_BY_Z2_q[5]_i_1 
       (.I0(Z2_i_IBUF[5]),
        .I1(Y1_i_IBUF[5]),
        .I2(X2_i_IBUF[5]),
        .O(CX_BY_Z2_q0[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_BY_Z2_q[6]_i_1 
       (.I0(Z2_i_IBUF[6]),
        .I1(Y1_i_IBUF[6]),
        .I2(X2_i_IBUF[6]),
        .O(CX_BY_Z2_q0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \CX_BY_Z2_q[7]_i_1 
       (.I0(Z2_i_IBUF[7]),
        .I1(Y1_i_IBUF[7]),
        .I2(X2_i_IBUF[7]),
        .O(CX_BY_Z2_q0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \CX_BY_Z2_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_BY_Z2_q0[0]),
        .Q(CX_BY_Z2_q[0]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_BY_Z2_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_BY_Z2_q0[1]),
        .Q(CX_BY_Z2_q[1]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_BY_Z2_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_BY_Z2_q0[2]),
        .Q(CX_BY_Z2_q[2]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_BY_Z2_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_BY_Z2_q0[3]),
        .Q(CX_BY_Z2_q[3]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_BY_Z2_q_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_BY_Z2_q0[4]),
        .Q(CX_BY_Z2_q[4]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_BY_Z2_q_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_BY_Z2_q0[5]),
        .Q(CX_BY_Z2_q[5]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_BY_Z2_q_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_BY_Z2_q0[6]),
        .Q(CX_BY_Z2_q[6]),
        .R(rst_i_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CX_BY_Z2_q_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_BY_Z2_q0[7]),
        .Q(CX_BY_Z2_q[7]),
        .R(rst_i_IBUF));
  OBUF \Q0_o_OBUF[0]_inst 
       (.I(Q0_o_OBUF[0]),
        .O(Q0_o[0]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q0_o_OBUF[0]_inst_i_1 
       (.I0(AX_CY_Z1_q[0]),
        .I1(AX_BY_Z0_q[0]),
        .I2(X0_i_IBUF[0]),
        .I3(Y0_i_IBUF[0]),
        .O(Q0_o_OBUF[0]));
  OBUF \Q0_o_OBUF[1]_inst 
       (.I(Q0_o_OBUF[1]),
        .O(Q0_o[1]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q0_o_OBUF[1]_inst_i_1 
       (.I0(AX_CY_Z1_q[1]),
        .I1(AX_BY_Z0_q[1]),
        .I2(X0_i_IBUF[1]),
        .I3(Y0_i_IBUF[1]),
        .O(Q0_o_OBUF[1]));
  OBUF \Q0_o_OBUF[2]_inst 
       (.I(Q0_o_OBUF[2]),
        .O(Q0_o[2]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q0_o_OBUF[2]_inst_i_1 
       (.I0(AX_CY_Z1_q[2]),
        .I1(AX_BY_Z0_q[2]),
        .I2(X0_i_IBUF[2]),
        .I3(Y0_i_IBUF[2]),
        .O(Q0_o_OBUF[2]));
  OBUF \Q0_o_OBUF[3]_inst 
       (.I(Q0_o_OBUF[3]),
        .O(Q0_o[3]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q0_o_OBUF[3]_inst_i_1 
       (.I0(AX_CY_Z1_q[3]),
        .I1(AX_BY_Z0_q[3]),
        .I2(X0_i_IBUF[3]),
        .I3(Y0_i_IBUF[3]),
        .O(Q0_o_OBUF[3]));
  OBUF \Q0_o_OBUF[4]_inst 
       (.I(Q0_o_OBUF[4]),
        .O(Q0_o[4]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q0_o_OBUF[4]_inst_i_1 
       (.I0(AX_CY_Z1_q[4]),
        .I1(AX_BY_Z0_q[4]),
        .I2(X0_i_IBUF[4]),
        .I3(Y0_i_IBUF[4]),
        .O(Q0_o_OBUF[4]));
  OBUF \Q0_o_OBUF[5]_inst 
       (.I(Q0_o_OBUF[5]),
        .O(Q0_o[5]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q0_o_OBUF[5]_inst_i_1 
       (.I0(AX_CY_Z1_q[5]),
        .I1(AX_BY_Z0_q[5]),
        .I2(X0_i_IBUF[5]),
        .I3(Y0_i_IBUF[5]),
        .O(Q0_o_OBUF[5]));
  OBUF \Q0_o_OBUF[6]_inst 
       (.I(Q0_o_OBUF[6]),
        .O(Q0_o[6]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q0_o_OBUF[6]_inst_i_1 
       (.I0(AX_CY_Z1_q[6]),
        .I1(AX_BY_Z0_q[6]),
        .I2(X0_i_IBUF[6]),
        .I3(Y0_i_IBUF[6]),
        .O(Q0_o_OBUF[6]));
  OBUF \Q0_o_OBUF[7]_inst 
       (.I(Q0_o_OBUF[7]),
        .O(Q0_o[7]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q0_o_OBUF[7]_inst_i_1 
       (.I0(AX_CY_Z1_q[7]),
        .I1(AX_BY_Z0_q[7]),
        .I2(X0_i_IBUF[7]),
        .I3(Y0_i_IBUF[7]),
        .O(Q0_o_OBUF[7]));
  OBUF \Q1_o_OBUF[0]_inst 
       (.I(Q1_o_OBUF[0]),
        .O(Q1_o[0]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q1_o_OBUF[0]_inst_i_1 
       (.I0(BX_CY_Z2_q[0]),
        .I1(BX_AY_Z0_q[0]),
        .I2(X1_i_IBUF[0]),
        .I3(Y1_i_IBUF[0]),
        .O(Q1_o_OBUF[0]));
  OBUF \Q1_o_OBUF[1]_inst 
       (.I(Q1_o_OBUF[1]),
        .O(Q1_o[1]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q1_o_OBUF[1]_inst_i_1 
       (.I0(BX_CY_Z2_q[1]),
        .I1(BX_AY_Z0_q[1]),
        .I2(X1_i_IBUF[1]),
        .I3(Y1_i_IBUF[1]),
        .O(Q1_o_OBUF[1]));
  OBUF \Q1_o_OBUF[2]_inst 
       (.I(Q1_o_OBUF[2]),
        .O(Q1_o[2]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q1_o_OBUF[2]_inst_i_1 
       (.I0(BX_CY_Z2_q[2]),
        .I1(BX_AY_Z0_q[2]),
        .I2(X1_i_IBUF[2]),
        .I3(Y1_i_IBUF[2]),
        .O(Q1_o_OBUF[2]));
  OBUF \Q1_o_OBUF[3]_inst 
       (.I(Q1_o_OBUF[3]),
        .O(Q1_o[3]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q1_o_OBUF[3]_inst_i_1 
       (.I0(BX_CY_Z2_q[3]),
        .I1(BX_AY_Z0_q[3]),
        .I2(X1_i_IBUF[3]),
        .I3(Y1_i_IBUF[3]),
        .O(Q1_o_OBUF[3]));
  OBUF \Q1_o_OBUF[4]_inst 
       (.I(Q1_o_OBUF[4]),
        .O(Q1_o[4]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q1_o_OBUF[4]_inst_i_1 
       (.I0(BX_CY_Z2_q[4]),
        .I1(BX_AY_Z0_q[4]),
        .I2(X1_i_IBUF[4]),
        .I3(Y1_i_IBUF[4]),
        .O(Q1_o_OBUF[4]));
  OBUF \Q1_o_OBUF[5]_inst 
       (.I(Q1_o_OBUF[5]),
        .O(Q1_o[5]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q1_o_OBUF[5]_inst_i_1 
       (.I0(BX_CY_Z2_q[5]),
        .I1(BX_AY_Z0_q[5]),
        .I2(X1_i_IBUF[5]),
        .I3(Y1_i_IBUF[5]),
        .O(Q1_o_OBUF[5]));
  OBUF \Q1_o_OBUF[6]_inst 
       (.I(Q1_o_OBUF[6]),
        .O(Q1_o[6]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q1_o_OBUF[6]_inst_i_1 
       (.I0(BX_CY_Z2_q[6]),
        .I1(BX_AY_Z0_q[6]),
        .I2(X1_i_IBUF[6]),
        .I3(Y1_i_IBUF[6]),
        .O(Q1_o_OBUF[6]));
  OBUF \Q1_o_OBUF[7]_inst 
       (.I(Q1_o_OBUF[7]),
        .O(Q1_o[7]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q1_o_OBUF[7]_inst_i_1 
       (.I0(BX_CY_Z2_q[7]),
        .I1(BX_AY_Z0_q[7]),
        .I2(X1_i_IBUF[7]),
        .I3(Y1_i_IBUF[7]),
        .O(Q1_o_OBUF[7]));
  OBUF \Q2_o_OBUF[0]_inst 
       (.I(Q2_o_OBUF[0]),
        .O(Q2_o[0]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q2_o_OBUF[0]_inst_i_1 
       (.I0(CX_BY_Z2_q[0]),
        .I1(CX_AY_Z1_q[0]),
        .I2(X2_i_IBUF[0]),
        .I3(Y2_i_IBUF[0]),
        .O(Q2_o_OBUF[0]));
  OBUF \Q2_o_OBUF[1]_inst 
       (.I(Q2_o_OBUF[1]),
        .O(Q2_o[1]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q2_o_OBUF[1]_inst_i_1 
       (.I0(CX_BY_Z2_q[1]),
        .I1(CX_AY_Z1_q[1]),
        .I2(X2_i_IBUF[1]),
        .I3(Y2_i_IBUF[1]),
        .O(Q2_o_OBUF[1]));
  OBUF \Q2_o_OBUF[2]_inst 
       (.I(Q2_o_OBUF[2]),
        .O(Q2_o[2]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q2_o_OBUF[2]_inst_i_1 
       (.I0(CX_BY_Z2_q[2]),
        .I1(CX_AY_Z1_q[2]),
        .I2(X2_i_IBUF[2]),
        .I3(Y2_i_IBUF[2]),
        .O(Q2_o_OBUF[2]));
  OBUF \Q2_o_OBUF[3]_inst 
       (.I(Q2_o_OBUF[3]),
        .O(Q2_o[3]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q2_o_OBUF[3]_inst_i_1 
       (.I0(CX_BY_Z2_q[3]),
        .I1(CX_AY_Z1_q[3]),
        .I2(X2_i_IBUF[3]),
        .I3(Y2_i_IBUF[3]),
        .O(Q2_o_OBUF[3]));
  OBUF \Q2_o_OBUF[4]_inst 
       (.I(Q2_o_OBUF[4]),
        .O(Q2_o[4]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q2_o_OBUF[4]_inst_i_1 
       (.I0(CX_BY_Z2_q[4]),
        .I1(CX_AY_Z1_q[4]),
        .I2(X2_i_IBUF[4]),
        .I3(Y2_i_IBUF[4]),
        .O(Q2_o_OBUF[4]));
  OBUF \Q2_o_OBUF[5]_inst 
       (.I(Q2_o_OBUF[5]),
        .O(Q2_o[5]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q2_o_OBUF[5]_inst_i_1 
       (.I0(CX_BY_Z2_q[5]),
        .I1(CX_AY_Z1_q[5]),
        .I2(X2_i_IBUF[5]),
        .I3(Y2_i_IBUF[5]),
        .O(Q2_o_OBUF[5]));
  OBUF \Q2_o_OBUF[6]_inst 
       (.I(Q2_o_OBUF[6]),
        .O(Q2_o[6]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q2_o_OBUF[6]_inst_i_1 
       (.I0(CX_BY_Z2_q[6]),
        .I1(CX_AY_Z1_q[6]),
        .I2(X2_i_IBUF[6]),
        .I3(Y2_i_IBUF[6]),
        .O(Q2_o_OBUF[6]));
  OBUF \Q2_o_OBUF[7]_inst 
       (.I(Q2_o_OBUF[7]),
        .O(Q2_o[7]));
  LUT4 #(
    .INIT(16'h9666)) 
    \Q2_o_OBUF[7]_inst_i_1 
       (.I0(CX_BY_Z2_q[7]),
        .I1(CX_AY_Z1_q[7]),
        .I2(X2_i_IBUF[7]),
        .I3(Y2_i_IBUF[7]),
        .O(Q2_o_OBUF[7]));
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
  IBUF \Z0_i_IBUF[0]_inst 
       (.I(Z0_i[0]),
        .O(Z0_i_IBUF[0]));
  IBUF \Z0_i_IBUF[1]_inst 
       (.I(Z0_i[1]),
        .O(Z0_i_IBUF[1]));
  IBUF \Z0_i_IBUF[2]_inst 
       (.I(Z0_i[2]),
        .O(Z0_i_IBUF[2]));
  IBUF \Z0_i_IBUF[3]_inst 
       (.I(Z0_i[3]),
        .O(Z0_i_IBUF[3]));
  IBUF \Z0_i_IBUF[4]_inst 
       (.I(Z0_i[4]),
        .O(Z0_i_IBUF[4]));
  IBUF \Z0_i_IBUF[5]_inst 
       (.I(Z0_i[5]),
        .O(Z0_i_IBUF[5]));
  IBUF \Z0_i_IBUF[6]_inst 
       (.I(Z0_i[6]),
        .O(Z0_i_IBUF[6]));
  IBUF \Z0_i_IBUF[7]_inst 
       (.I(Z0_i[7]),
        .O(Z0_i_IBUF[7]));
  IBUF \Z1_i_IBUF[0]_inst 
       (.I(Z1_i[0]),
        .O(Z1_i_IBUF[0]));
  IBUF \Z1_i_IBUF[1]_inst 
       (.I(Z1_i[1]),
        .O(Z1_i_IBUF[1]));
  IBUF \Z1_i_IBUF[2]_inst 
       (.I(Z1_i[2]),
        .O(Z1_i_IBUF[2]));
  IBUF \Z1_i_IBUF[3]_inst 
       (.I(Z1_i[3]),
        .O(Z1_i_IBUF[3]));
  IBUF \Z1_i_IBUF[4]_inst 
       (.I(Z1_i[4]),
        .O(Z1_i_IBUF[4]));
  IBUF \Z1_i_IBUF[5]_inst 
       (.I(Z1_i[5]),
        .O(Z1_i_IBUF[5]));
  IBUF \Z1_i_IBUF[6]_inst 
       (.I(Z1_i[6]),
        .O(Z1_i_IBUF[6]));
  IBUF \Z1_i_IBUF[7]_inst 
       (.I(Z1_i[7]),
        .O(Z1_i_IBUF[7]));
  IBUF \Z2_i_IBUF[0]_inst 
       (.I(Z2_i[0]),
        .O(Z2_i_IBUF[0]));
  IBUF \Z2_i_IBUF[1]_inst 
       (.I(Z2_i[1]),
        .O(Z2_i_IBUF[1]));
  IBUF \Z2_i_IBUF[2]_inst 
       (.I(Z2_i[2]),
        .O(Z2_i_IBUF[2]));
  IBUF \Z2_i_IBUF[3]_inst 
       (.I(Z2_i[3]),
        .O(Z2_i_IBUF[3]));
  IBUF \Z2_i_IBUF[4]_inst 
       (.I(Z2_i[4]),
        .O(Z2_i_IBUF[4]));
  IBUF \Z2_i_IBUF[5]_inst 
       (.I(Z2_i[5]),
        .O(Z2_i_IBUF[5]));
  IBUF \Z2_i_IBUF[6]_inst 
       (.I(Z2_i[6]),
        .O(Z2_i_IBUF[6]));
  IBUF \Z2_i_IBUF[7]_inst 
       (.I(Z2_i[7]),
        .O(Z2_i_IBUF[7]));
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  IBUF rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
endmodule
