// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Nov 14 16:52:41 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/gadgets/trichinaAnd/firstOrder/trichinaAndNetlist.v
// Design      : trichina_and
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module trichina_and
   (x0,
    x1,
    y0,
    y1,
    r0,
    o0,
    o1);
  input [7:0]x0;
  input [7:0]x1;
  input [7:0]y0;
  input [7:0]y1;
  input [7:0]r0;
  output [7:0]o0;
  output [7:0]o1;

  wire [7:0]o0;
  wire [7:0]o0_OBUF;
  wire [7:0]o1;
  wire [7:0]o1_OBUF;
  wire [7:0]r0;
  wire [7:0]x0;
  wire [7:0]x0_IBUF;
  wire [7:0]x1;
  wire [7:0]x1_IBUF;
  wire [7:0]y0;
  wire [7:0]y0_IBUF;
  wire [7:0]y1;
  wire [7:0]y1_IBUF;

  OBUF \o0_OBUF[0]_inst 
       (.I(o0_OBUF[0]),
        .O(o0[0]));
  LUT5 #(
    .INIT(32'hE1D2B478)) 
    \o0_OBUF[0]_inst_i_1 
       (.I0(y0_IBUF[0]),
        .I1(x0_IBUF[0]),
        .I2(o1_OBUF[0]),
        .I3(y1_IBUF[0]),
        .I4(x1_IBUF[0]),
        .O(o0_OBUF[0]));
  OBUF \o0_OBUF[1]_inst 
       (.I(o0_OBUF[1]),
        .O(o0[1]));
  LUT5 #(
    .INIT(32'hE1D2B478)) 
    \o0_OBUF[1]_inst_i_1 
       (.I0(y0_IBUF[1]),
        .I1(x0_IBUF[1]),
        .I2(o1_OBUF[1]),
        .I3(y1_IBUF[1]),
        .I4(x1_IBUF[1]),
        .O(o0_OBUF[1]));
  OBUF \o0_OBUF[2]_inst 
       (.I(o0_OBUF[2]),
        .O(o0[2]));
  LUT5 #(
    .INIT(32'hE1D2B478)) 
    \o0_OBUF[2]_inst_i_1 
       (.I0(y0_IBUF[2]),
        .I1(x0_IBUF[2]),
        .I2(o1_OBUF[2]),
        .I3(y1_IBUF[2]),
        .I4(x1_IBUF[2]),
        .O(o0_OBUF[2]));
  OBUF \o0_OBUF[3]_inst 
       (.I(o0_OBUF[3]),
        .O(o0[3]));
  LUT5 #(
    .INIT(32'hE1D2B478)) 
    \o0_OBUF[3]_inst_i_1 
       (.I0(y0_IBUF[3]),
        .I1(x0_IBUF[3]),
        .I2(o1_OBUF[3]),
        .I3(y1_IBUF[3]),
        .I4(x1_IBUF[3]),
        .O(o0_OBUF[3]));
  OBUF \o0_OBUF[4]_inst 
       (.I(o0_OBUF[4]),
        .O(o0[4]));
  LUT5 #(
    .INIT(32'hE1D2B478)) 
    \o0_OBUF[4]_inst_i_1 
       (.I0(y0_IBUF[4]),
        .I1(x0_IBUF[4]),
        .I2(o1_OBUF[4]),
        .I3(y1_IBUF[4]),
        .I4(x1_IBUF[4]),
        .O(o0_OBUF[4]));
  OBUF \o0_OBUF[5]_inst 
       (.I(o0_OBUF[5]),
        .O(o0[5]));
  LUT5 #(
    .INIT(32'hE1D2B478)) 
    \o0_OBUF[5]_inst_i_1 
       (.I0(y0_IBUF[5]),
        .I1(x0_IBUF[5]),
        .I2(o1_OBUF[5]),
        .I3(y1_IBUF[5]),
        .I4(x1_IBUF[5]),
        .O(o0_OBUF[5]));
  OBUF \o0_OBUF[6]_inst 
       (.I(o0_OBUF[6]),
        .O(o0[6]));
  LUT5 #(
    .INIT(32'hE1D2B478)) 
    \o0_OBUF[6]_inst_i_1 
       (.I0(y0_IBUF[6]),
        .I1(x0_IBUF[6]),
        .I2(o1_OBUF[6]),
        .I3(y1_IBUF[6]),
        .I4(x1_IBUF[6]),
        .O(o0_OBUF[6]));
  OBUF \o0_OBUF[7]_inst 
       (.I(o0_OBUF[7]),
        .O(o0[7]));
  LUT5 #(
    .INIT(32'hE1D2B478)) 
    \o0_OBUF[7]_inst_i_1 
       (.I0(y0_IBUF[7]),
        .I1(x0_IBUF[7]),
        .I2(o1_OBUF[7]),
        .I3(y1_IBUF[7]),
        .I4(x1_IBUF[7]),
        .O(o0_OBUF[7]));
  OBUF \o1_OBUF[0]_inst 
       (.I(o1_OBUF[0]),
        .O(o1[0]));
  OBUF \o1_OBUF[1]_inst 
       (.I(o1_OBUF[1]),
        .O(o1[1]));
  OBUF \o1_OBUF[2]_inst 
       (.I(o1_OBUF[2]),
        .O(o1[2]));
  OBUF \o1_OBUF[3]_inst 
       (.I(o1_OBUF[3]),
        .O(o1[3]));
  OBUF \o1_OBUF[4]_inst 
       (.I(o1_OBUF[4]),
        .O(o1[4]));
  OBUF \o1_OBUF[5]_inst 
       (.I(o1_OBUF[5]),
        .O(o1[5]));
  OBUF \o1_OBUF[6]_inst 
       (.I(o1_OBUF[6]),
        .O(o1[6]));
  OBUF \o1_OBUF[7]_inst 
       (.I(o1_OBUF[7]),
        .O(o1[7]));
  IBUF \r0_IBUF[0]_inst 
       (.I(r0[0]),
        .O(o1_OBUF[0]));
  IBUF \r0_IBUF[1]_inst 
       (.I(r0[1]),
        .O(o1_OBUF[1]));
  IBUF \r0_IBUF[2]_inst 
       (.I(r0[2]),
        .O(o1_OBUF[2]));
  IBUF \r0_IBUF[3]_inst 
       (.I(r0[3]),
        .O(o1_OBUF[3]));
  IBUF \r0_IBUF[4]_inst 
       (.I(r0[4]),
        .O(o1_OBUF[4]));
  IBUF \r0_IBUF[5]_inst 
       (.I(r0[5]),
        .O(o1_OBUF[5]));
  IBUF \r0_IBUF[6]_inst 
       (.I(r0[6]),
        .O(o1_OBUF[6]));
  IBUF \r0_IBUF[7]_inst 
       (.I(r0[7]),
        .O(o1_OBUF[7]));
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
endmodule
