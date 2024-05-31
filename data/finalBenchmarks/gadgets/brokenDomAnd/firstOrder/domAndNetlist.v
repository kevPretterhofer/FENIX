// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Nov 11 13:35:56 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/gadgets/brokenDomAnd/firstOrder/domAndNetlist.v
// Design      : dom_and_1storder_broken
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module dom_and_1storder_broken
   (clk_i,
    rst_i,
    X0_i,
    X1_i,
    Y0_i,
    Y1_i,
    Z_i,
    Q0_o,
    Q1_o);
  input clk_i;
  input rst_i;
  input [7:0]X0_i;
  input [7:0]X1_i;
  input [7:0]Y0_i;
  input [7:0]Y1_i;
  input [7:0]Z_i;
  output [7:0]Q0_o;
  output [7:0]Q1_o;

  wire [7:0]Q0_o;
  wire [7:0]Q0_o_OBUF;
  wire [7:0]Q1_o;
  wire [7:0]Q1_o_OBUF;
  wire [7:0]X0_i;
  wire [7:0]X0_i_IBUF;
  wire [7:0]X1_i;
  wire [7:0]X1_i_IBUF;
  wire [7:0]Y0_i;
  wire [7:0]Y0_i_IBUF;
  wire [7:0]Y1_i;
  wire [7:0]Y1_i_IBUF;
  wire [7:0]Z_i;
  wire [7:0]Z_i_IBUF;

  OBUF \Q0_o_OBUF[0]_inst 
       (.I(Q0_o_OBUF[0]),
        .O(Q0_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q0_o_OBUF[0]_inst_i_1 
       (.I0(Z_i_IBUF[0]),
        .I1(X0_i_IBUF[0]),
        .I2(Y1_i_IBUF[0]),
        .I3(Y0_i_IBUF[0]),
        .O(Q0_o_OBUF[0]));
  OBUF \Q0_o_OBUF[1]_inst 
       (.I(Q0_o_OBUF[1]),
        .O(Q0_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q0_o_OBUF[1]_inst_i_1 
       (.I0(Z_i_IBUF[1]),
        .I1(X0_i_IBUF[1]),
        .I2(Y1_i_IBUF[1]),
        .I3(Y0_i_IBUF[1]),
        .O(Q0_o_OBUF[1]));
  OBUF \Q0_o_OBUF[2]_inst 
       (.I(Q0_o_OBUF[2]),
        .O(Q0_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q0_o_OBUF[2]_inst_i_1 
       (.I0(Z_i_IBUF[2]),
        .I1(X0_i_IBUF[2]),
        .I2(Y1_i_IBUF[2]),
        .I3(Y0_i_IBUF[2]),
        .O(Q0_o_OBUF[2]));
  OBUF \Q0_o_OBUF[3]_inst 
       (.I(Q0_o_OBUF[3]),
        .O(Q0_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q0_o_OBUF[3]_inst_i_1 
       (.I0(Z_i_IBUF[3]),
        .I1(X0_i_IBUF[3]),
        .I2(Y1_i_IBUF[3]),
        .I3(Y0_i_IBUF[3]),
        .O(Q0_o_OBUF[3]));
  OBUF \Q0_o_OBUF[4]_inst 
       (.I(Q0_o_OBUF[4]),
        .O(Q0_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q0_o_OBUF[4]_inst_i_1 
       (.I0(Z_i_IBUF[4]),
        .I1(X0_i_IBUF[4]),
        .I2(Y1_i_IBUF[4]),
        .I3(Y0_i_IBUF[4]),
        .O(Q0_o_OBUF[4]));
  OBUF \Q0_o_OBUF[5]_inst 
       (.I(Q0_o_OBUF[5]),
        .O(Q0_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q0_o_OBUF[5]_inst_i_1 
       (.I0(Z_i_IBUF[5]),
        .I1(X0_i_IBUF[5]),
        .I2(Y1_i_IBUF[5]),
        .I3(Y0_i_IBUF[5]),
        .O(Q0_o_OBUF[5]));
  OBUF \Q0_o_OBUF[6]_inst 
       (.I(Q0_o_OBUF[6]),
        .O(Q0_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q0_o_OBUF[6]_inst_i_1 
       (.I0(Z_i_IBUF[6]),
        .I1(X0_i_IBUF[6]),
        .I2(Y1_i_IBUF[6]),
        .I3(Y0_i_IBUF[6]),
        .O(Q0_o_OBUF[6]));
  OBUF \Q0_o_OBUF[7]_inst 
       (.I(Q0_o_OBUF[7]),
        .O(Q0_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q0_o_OBUF[7]_inst_i_1 
       (.I0(Z_i_IBUF[7]),
        .I1(X0_i_IBUF[7]),
        .I2(Y1_i_IBUF[7]),
        .I3(Y0_i_IBUF[7]),
        .O(Q0_o_OBUF[7]));
  OBUF \Q1_o_OBUF[0]_inst 
       (.I(Q1_o_OBUF[0]),
        .O(Q1_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q1_o_OBUF[0]_inst_i_1 
       (.I0(Z_i_IBUF[0]),
        .I1(X1_i_IBUF[0]),
        .I2(Y0_i_IBUF[0]),
        .I3(Y1_i_IBUF[0]),
        .O(Q1_o_OBUF[0]));
  OBUF \Q1_o_OBUF[1]_inst 
       (.I(Q1_o_OBUF[1]),
        .O(Q1_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q1_o_OBUF[1]_inst_i_1 
       (.I0(Z_i_IBUF[1]),
        .I1(X1_i_IBUF[1]),
        .I2(Y0_i_IBUF[1]),
        .I3(Y1_i_IBUF[1]),
        .O(Q1_o_OBUF[1]));
  OBUF \Q1_o_OBUF[2]_inst 
       (.I(Q1_o_OBUF[2]),
        .O(Q1_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q1_o_OBUF[2]_inst_i_1 
       (.I0(Z_i_IBUF[2]),
        .I1(X1_i_IBUF[2]),
        .I2(Y0_i_IBUF[2]),
        .I3(Y1_i_IBUF[2]),
        .O(Q1_o_OBUF[2]));
  OBUF \Q1_o_OBUF[3]_inst 
       (.I(Q1_o_OBUF[3]),
        .O(Q1_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q1_o_OBUF[3]_inst_i_1 
       (.I0(Z_i_IBUF[3]),
        .I1(X1_i_IBUF[3]),
        .I2(Y0_i_IBUF[3]),
        .I3(Y1_i_IBUF[3]),
        .O(Q1_o_OBUF[3]));
  OBUF \Q1_o_OBUF[4]_inst 
       (.I(Q1_o_OBUF[4]),
        .O(Q1_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q1_o_OBUF[4]_inst_i_1 
       (.I0(Z_i_IBUF[4]),
        .I1(X1_i_IBUF[4]),
        .I2(Y0_i_IBUF[4]),
        .I3(Y1_i_IBUF[4]),
        .O(Q1_o_OBUF[4]));
  OBUF \Q1_o_OBUF[5]_inst 
       (.I(Q1_o_OBUF[5]),
        .O(Q1_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q1_o_OBUF[5]_inst_i_1 
       (.I0(Z_i_IBUF[5]),
        .I1(X1_i_IBUF[5]),
        .I2(Y0_i_IBUF[5]),
        .I3(Y1_i_IBUF[5]),
        .O(Q1_o_OBUF[5]));
  OBUF \Q1_o_OBUF[6]_inst 
       (.I(Q1_o_OBUF[6]),
        .O(Q1_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q1_o_OBUF[6]_inst_i_1 
       (.I0(Z_i_IBUF[6]),
        .I1(X1_i_IBUF[6]),
        .I2(Y0_i_IBUF[6]),
        .I3(Y1_i_IBUF[6]),
        .O(Q1_o_OBUF[6]));
  OBUF \Q1_o_OBUF[7]_inst 
       (.I(Q1_o_OBUF[7]),
        .O(Q1_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \Q1_o_OBUF[7]_inst_i_1 
       (.I0(Z_i_IBUF[7]),
        .I1(X1_i_IBUF[7]),
        .I2(Y0_i_IBUF[7]),
        .I3(Y1_i_IBUF[7]),
        .O(Q1_o_OBUF[7]));
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
  IBUF \Z_i_IBUF[0]_inst 
       (.I(Z_i[0]),
        .O(Z_i_IBUF[0]));
  IBUF \Z_i_IBUF[1]_inst 
       (.I(Z_i[1]),
        .O(Z_i_IBUF[1]));
  IBUF \Z_i_IBUF[2]_inst 
       (.I(Z_i[2]),
        .O(Z_i_IBUF[2]));
  IBUF \Z_i_IBUF[3]_inst 
       (.I(Z_i[3]),
        .O(Z_i_IBUF[3]));
  IBUF \Z_i_IBUF[4]_inst 
       (.I(Z_i[4]),
        .O(Z_i_IBUF[4]));
  IBUF \Z_i_IBUF[5]_inst 
       (.I(Z_i[5]),
        .O(Z_i_IBUF[5]));
  IBUF \Z_i_IBUF[6]_inst 
       (.I(Z_i[6]),
        .O(Z_i_IBUF[6]));
  IBUF \Z_i_IBUF[7]_inst 
       (.I(Z_i[7]),
        .O(Z_i_IBUF[7]));
endmodule
