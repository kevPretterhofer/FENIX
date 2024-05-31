// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Nov 14 15:59:23 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/gadgets/tiAnd/firstOrder/tiAndNetlist.v
// Design      : ti_and
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module ti_and
   (x2,
    x0,
    x1,
    y2,
    y0,
    y1,
    q0,
    q1,
    q2);
  input [7:0]x2;
  input [7:0]x0;
  input [7:0]x1;
  input [7:0]y2;
  input [7:0]y0;
  input [7:0]y1;
  output [7:0]q0;
  output [7:0]q1;
  output [7:0]q2;

  wire [7:0]q0;
  wire [7:0]q0_OBUF;
  wire [7:0]q1;
  wire [7:0]q1_OBUF;
  wire [7:0]q2;
  wire [7:0]q2_OBUF;
  wire [7:0]x0;
  wire [7:0]x0_IBUF;
  wire [7:0]x1;
  wire [7:0]x1_IBUF;
  wire [7:0]x2;
  wire [7:0]x2_IBUF;
  wire [7:0]y0;
  wire [7:0]y0_IBUF;
  wire [7:0]y1;
  wire [7:0]y1_IBUF;
  wire [7:0]y2;
  wire [7:0]y2_IBUF;

  OBUF \q0_OBUF[0]_inst 
       (.I(q0_OBUF[0]),
        .O(q0[0]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q0_OBUF[0]_inst_i_1 
       (.I0(y1_IBUF[0]),
        .I1(x0_IBUF[0]),
        .I2(y0_IBUF[0]),
        .I3(x1_IBUF[0]),
        .O(q0_OBUF[0]));
  OBUF \q0_OBUF[1]_inst 
       (.I(q0_OBUF[1]),
        .O(q0[1]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q0_OBUF[1]_inst_i_1 
       (.I0(y1_IBUF[1]),
        .I1(x0_IBUF[1]),
        .I2(y0_IBUF[1]),
        .I3(x1_IBUF[1]),
        .O(q0_OBUF[1]));
  OBUF \q0_OBUF[2]_inst 
       (.I(q0_OBUF[2]),
        .O(q0[2]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q0_OBUF[2]_inst_i_1 
       (.I0(y1_IBUF[2]),
        .I1(x0_IBUF[2]),
        .I2(y0_IBUF[2]),
        .I3(x1_IBUF[2]),
        .O(q0_OBUF[2]));
  OBUF \q0_OBUF[3]_inst 
       (.I(q0_OBUF[3]),
        .O(q0[3]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q0_OBUF[3]_inst_i_1 
       (.I0(y1_IBUF[3]),
        .I1(x0_IBUF[3]),
        .I2(y0_IBUF[3]),
        .I3(x1_IBUF[3]),
        .O(q0_OBUF[3]));
  OBUF \q0_OBUF[4]_inst 
       (.I(q0_OBUF[4]),
        .O(q0[4]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q0_OBUF[4]_inst_i_1 
       (.I0(y1_IBUF[4]),
        .I1(x0_IBUF[4]),
        .I2(y0_IBUF[4]),
        .I3(x1_IBUF[4]),
        .O(q0_OBUF[4]));
  OBUF \q0_OBUF[5]_inst 
       (.I(q0_OBUF[5]),
        .O(q0[5]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q0_OBUF[5]_inst_i_1 
       (.I0(y1_IBUF[5]),
        .I1(x0_IBUF[5]),
        .I2(y0_IBUF[5]),
        .I3(x1_IBUF[5]),
        .O(q0_OBUF[5]));
  OBUF \q0_OBUF[6]_inst 
       (.I(q0_OBUF[6]),
        .O(q0[6]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q0_OBUF[6]_inst_i_1 
       (.I0(y1_IBUF[6]),
        .I1(x0_IBUF[6]),
        .I2(y0_IBUF[6]),
        .I3(x1_IBUF[6]),
        .O(q0_OBUF[6]));
  OBUF \q0_OBUF[7]_inst 
       (.I(q0_OBUF[7]),
        .O(q0[7]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q0_OBUF[7]_inst_i_1 
       (.I0(y1_IBUF[7]),
        .I1(x0_IBUF[7]),
        .I2(y0_IBUF[7]),
        .I3(x1_IBUF[7]),
        .O(q0_OBUF[7]));
  OBUF \q1_OBUF[0]_inst 
       (.I(q1_OBUF[0]),
        .O(q1[0]));
  LUT4 #(
    .INIT(16'hAC60)) 
    \q1_OBUF[0]_inst_i_1 
       (.I0(x2_IBUF[0]),
        .I1(x1_IBUF[0]),
        .I2(y1_IBUF[0]),
        .I3(y2_IBUF[0]),
        .O(q1_OBUF[0]));
  OBUF \q1_OBUF[1]_inst 
       (.I(q1_OBUF[1]),
        .O(q1[1]));
  LUT4 #(
    .INIT(16'hAC60)) 
    \q1_OBUF[1]_inst_i_1 
       (.I0(x2_IBUF[1]),
        .I1(x1_IBUF[1]),
        .I2(y1_IBUF[1]),
        .I3(y2_IBUF[1]),
        .O(q1_OBUF[1]));
  OBUF \q1_OBUF[2]_inst 
       (.I(q1_OBUF[2]),
        .O(q1[2]));
  LUT4 #(
    .INIT(16'hAC60)) 
    \q1_OBUF[2]_inst_i_1 
       (.I0(x2_IBUF[2]),
        .I1(x1_IBUF[2]),
        .I2(y1_IBUF[2]),
        .I3(y2_IBUF[2]),
        .O(q1_OBUF[2]));
  OBUF \q1_OBUF[3]_inst 
       (.I(q1_OBUF[3]),
        .O(q1[3]));
  LUT4 #(
    .INIT(16'hAC60)) 
    \q1_OBUF[3]_inst_i_1 
       (.I0(x2_IBUF[3]),
        .I1(x1_IBUF[3]),
        .I2(y1_IBUF[3]),
        .I3(y2_IBUF[3]),
        .O(q1_OBUF[3]));
  OBUF \q1_OBUF[4]_inst 
       (.I(q1_OBUF[4]),
        .O(q1[4]));
  LUT4 #(
    .INIT(16'hAC60)) 
    \q1_OBUF[4]_inst_i_1 
       (.I0(x2_IBUF[4]),
        .I1(x1_IBUF[4]),
        .I2(y1_IBUF[4]),
        .I3(y2_IBUF[4]),
        .O(q1_OBUF[4]));
  OBUF \q1_OBUF[5]_inst 
       (.I(q1_OBUF[5]),
        .O(q1[5]));
  LUT4 #(
    .INIT(16'hAC60)) 
    \q1_OBUF[5]_inst_i_1 
       (.I0(x2_IBUF[5]),
        .I1(x1_IBUF[5]),
        .I2(y1_IBUF[5]),
        .I3(y2_IBUF[5]),
        .O(q1_OBUF[5]));
  OBUF \q1_OBUF[6]_inst 
       (.I(q1_OBUF[6]),
        .O(q1[6]));
  LUT4 #(
    .INIT(16'hAC60)) 
    \q1_OBUF[6]_inst_i_1 
       (.I0(x2_IBUF[6]),
        .I1(x1_IBUF[6]),
        .I2(y1_IBUF[6]),
        .I3(y2_IBUF[6]),
        .O(q1_OBUF[6]));
  OBUF \q1_OBUF[7]_inst 
       (.I(q1_OBUF[7]),
        .O(q1[7]));
  LUT4 #(
    .INIT(16'hAC60)) 
    \q1_OBUF[7]_inst_i_1 
       (.I0(x2_IBUF[7]),
        .I1(x1_IBUF[7]),
        .I2(y1_IBUF[7]),
        .I3(y2_IBUF[7]),
        .O(q1_OBUF[7]));
  OBUF \q2_OBUF[0]_inst 
       (.I(q2_OBUF[0]),
        .O(q2[0]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q2_OBUF[0]_inst_i_1 
       (.I0(y0_IBUF[0]),
        .I1(x2_IBUF[0]),
        .I2(y2_IBUF[0]),
        .I3(x0_IBUF[0]),
        .O(q2_OBUF[0]));
  OBUF \q2_OBUF[1]_inst 
       (.I(q2_OBUF[1]),
        .O(q2[1]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q2_OBUF[1]_inst_i_1 
       (.I0(y0_IBUF[1]),
        .I1(x2_IBUF[1]),
        .I2(y2_IBUF[1]),
        .I3(x0_IBUF[1]),
        .O(q2_OBUF[1]));
  OBUF \q2_OBUF[2]_inst 
       (.I(q2_OBUF[2]),
        .O(q2[2]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q2_OBUF[2]_inst_i_1 
       (.I0(y0_IBUF[2]),
        .I1(x2_IBUF[2]),
        .I2(y2_IBUF[2]),
        .I3(x0_IBUF[2]),
        .O(q2_OBUF[2]));
  OBUF \q2_OBUF[3]_inst 
       (.I(q2_OBUF[3]),
        .O(q2[3]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q2_OBUF[3]_inst_i_1 
       (.I0(y0_IBUF[3]),
        .I1(x2_IBUF[3]),
        .I2(y2_IBUF[3]),
        .I3(x0_IBUF[3]),
        .O(q2_OBUF[3]));
  OBUF \q2_OBUF[4]_inst 
       (.I(q2_OBUF[4]),
        .O(q2[4]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q2_OBUF[4]_inst_i_1 
       (.I0(y0_IBUF[4]),
        .I1(x2_IBUF[4]),
        .I2(y2_IBUF[4]),
        .I3(x0_IBUF[4]),
        .O(q2_OBUF[4]));
  OBUF \q2_OBUF[5]_inst 
       (.I(q2_OBUF[5]),
        .O(q2[5]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q2_OBUF[5]_inst_i_1 
       (.I0(y0_IBUF[5]),
        .I1(x2_IBUF[5]),
        .I2(y2_IBUF[5]),
        .I3(x0_IBUF[5]),
        .O(q2_OBUF[5]));
  OBUF \q2_OBUF[6]_inst 
       (.I(q2_OBUF[6]),
        .O(q2[6]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q2_OBUF[6]_inst_i_1 
       (.I0(y0_IBUF[6]),
        .I1(x2_IBUF[6]),
        .I2(y2_IBUF[6]),
        .I3(x0_IBUF[6]),
        .O(q2_OBUF[6]));
  OBUF \q2_OBUF[7]_inst 
       (.I(q2_OBUF[7]),
        .O(q2[7]));
  LUT4 #(
    .INIT(16'hB848)) 
    \q2_OBUF[7]_inst_i_1 
       (.I0(y0_IBUF[7]),
        .I1(x2_IBUF[7]),
        .I2(y2_IBUF[7]),
        .I3(x0_IBUF[7]),
        .O(q2_OBUF[7]));
  IBUF \x0_IBUF[0]_inst 
       (.I(x0[0]),
        .O(x0_IBUF[0]));
  IBUF \x0_IBUF[1]_inst 
       (.I(x0[1]),
        .O(x0_IBUF[1]));
  IBUF \x0_IBUF[2]_inst 
       (.I(x0[2]),
        .O(x0_IBUF[2]));
  IBUF \x0_IBUF[3]_inst 
       (.I(x0[3]),
        .O(x0_IBUF[3]));
  IBUF \x0_IBUF[4]_inst 
       (.I(x0[4]),
        .O(x0_IBUF[4]));
  IBUF \x0_IBUF[5]_inst 
       (.I(x0[5]),
        .O(x0_IBUF[5]));
  IBUF \x0_IBUF[6]_inst 
       (.I(x0[6]),
        .O(x0_IBUF[6]));
  IBUF \x0_IBUF[7]_inst 
       (.I(x0[7]),
        .O(x0_IBUF[7]));
  IBUF \x1_IBUF[0]_inst 
       (.I(x1[0]),
        .O(x1_IBUF[0]));
  IBUF \x1_IBUF[1]_inst 
       (.I(x1[1]),
        .O(x1_IBUF[1]));
  IBUF \x1_IBUF[2]_inst 
       (.I(x1[2]),
        .O(x1_IBUF[2]));
  IBUF \x1_IBUF[3]_inst 
       (.I(x1[3]),
        .O(x1_IBUF[3]));
  IBUF \x1_IBUF[4]_inst 
       (.I(x1[4]),
        .O(x1_IBUF[4]));
  IBUF \x1_IBUF[5]_inst 
       (.I(x1[5]),
        .O(x1_IBUF[5]));
  IBUF \x1_IBUF[6]_inst 
       (.I(x1[6]),
        .O(x1_IBUF[6]));
  IBUF \x1_IBUF[7]_inst 
       (.I(x1[7]),
        .O(x1_IBUF[7]));
  IBUF \x2_IBUF[0]_inst 
       (.I(x2[0]),
        .O(x2_IBUF[0]));
  IBUF \x2_IBUF[1]_inst 
       (.I(x2[1]),
        .O(x2_IBUF[1]));
  IBUF \x2_IBUF[2]_inst 
       (.I(x2[2]),
        .O(x2_IBUF[2]));
  IBUF \x2_IBUF[3]_inst 
       (.I(x2[3]),
        .O(x2_IBUF[3]));
  IBUF \x2_IBUF[4]_inst 
       (.I(x2[4]),
        .O(x2_IBUF[4]));
  IBUF \x2_IBUF[5]_inst 
       (.I(x2[5]),
        .O(x2_IBUF[5]));
  IBUF \x2_IBUF[6]_inst 
       (.I(x2[6]),
        .O(x2_IBUF[6]));
  IBUF \x2_IBUF[7]_inst 
       (.I(x2[7]),
        .O(x2_IBUF[7]));
  IBUF \y0_IBUF[0]_inst 
       (.I(y0[0]),
        .O(y0_IBUF[0]));
  IBUF \y0_IBUF[1]_inst 
       (.I(y0[1]),
        .O(y0_IBUF[1]));
  IBUF \y0_IBUF[2]_inst 
       (.I(y0[2]),
        .O(y0_IBUF[2]));
  IBUF \y0_IBUF[3]_inst 
       (.I(y0[3]),
        .O(y0_IBUF[3]));
  IBUF \y0_IBUF[4]_inst 
       (.I(y0[4]),
        .O(y0_IBUF[4]));
  IBUF \y0_IBUF[5]_inst 
       (.I(y0[5]),
        .O(y0_IBUF[5]));
  IBUF \y0_IBUF[6]_inst 
       (.I(y0[6]),
        .O(y0_IBUF[6]));
  IBUF \y0_IBUF[7]_inst 
       (.I(y0[7]),
        .O(y0_IBUF[7]));
  IBUF \y1_IBUF[0]_inst 
       (.I(y1[0]),
        .O(y1_IBUF[0]));
  IBUF \y1_IBUF[1]_inst 
       (.I(y1[1]),
        .O(y1_IBUF[1]));
  IBUF \y1_IBUF[2]_inst 
       (.I(y1[2]),
        .O(y1_IBUF[2]));
  IBUF \y1_IBUF[3]_inst 
       (.I(y1[3]),
        .O(y1_IBUF[3]));
  IBUF \y1_IBUF[4]_inst 
       (.I(y1[4]),
        .O(y1_IBUF[4]));
  IBUF \y1_IBUF[5]_inst 
       (.I(y1[5]),
        .O(y1_IBUF[5]));
  IBUF \y1_IBUF[6]_inst 
       (.I(y1[6]),
        .O(y1_IBUF[6]));
  IBUF \y1_IBUF[7]_inst 
       (.I(y1[7]),
        .O(y1_IBUF[7]));
  IBUF \y2_IBUF[0]_inst 
       (.I(y2[0]),
        .O(y2_IBUF[0]));
  IBUF \y2_IBUF[1]_inst 
       (.I(y2[1]),
        .O(y2_IBUF[1]));
  IBUF \y2_IBUF[2]_inst 
       (.I(y2[2]),
        .O(y2_IBUF[2]));
  IBUF \y2_IBUF[3]_inst 
       (.I(y2[3]),
        .O(y2_IBUF[3]));
  IBUF \y2_IBUF[4]_inst 
       (.I(y2[4]),
        .O(y2_IBUF[4]));
  IBUF \y2_IBUF[5]_inst 
       (.I(y2[5]),
        .O(y2_IBUF[5]));
  IBUF \y2_IBUF[6]_inst 
       (.I(y2[6]),
        .O(y2_IBUF[6]));
  IBUF \y2_IBUF[7]_inst 
       (.I(y2[7]),
        .O(y2_IBUF[7]));
endmodule
