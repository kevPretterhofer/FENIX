// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Nov 15 12:54:03 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/biggerDesigns/keccakSbox/secondOrder/dom_keccak_sboxNetlist.v
// Design      : dom_keccak_sbox
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dom_and_onebit
   (ay_OBUF,
    by_OBUF,
    cy_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    z2_IBUF,
    ax_IBUF,
    bx_IBUF,
    cx_IBUF,
    z1_IBUF,
    z0_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  output [0:0]cy_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z2_IBUF;
  input [2:0]ax_IBUF;
  input [2:0]bx_IBUF;
  input [2:0]cx_IBUF;
  input [0:0]z1_IBUF;
  input [0:0]z0_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire axbyz0;
  wire axbyz00;
  wire axcyz1;
  wire axcyz10;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
  wire bxayz0;
  wire bxayz00;
  wire bxcyz2;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cx_IBUF;
  wire cxayz1;
  wire cxayz10;
  wire cxbyz2;
  wire cxbyz20;
  wire [0:0]cy_OBUF;
  wire rst_IBUF;
  wire [0:0]z0_IBUF;
  wire [0:0]z1_IBUF;
  wire [0:0]z2_IBUF;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    axbyz0_i_1
       (.I0(z0_IBUF),
        .I1(ax_IBUF[1]),
        .I2(bx_IBUF[2]),
        .O(axbyz00));
  FDRE #(
    .INIT(1'b0)) 
    axbyz0_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(axbyz00),
        .Q(axbyz0),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    axcyz1_i_1
       (.I0(z1_IBUF),
        .I1(ax_IBUF[1]),
        .I2(cx_IBUF[2]),
        .O(axcyz10));
  FDRE #(
    .INIT(1'b0)) 
    axcyz1_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(axcyz10),
        .Q(axcyz1),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \ay_OBUF[0]_inst_i_1 
       (.I0(ax_IBUF[1]),
        .I1(ax_IBUF[2]),
        .I2(axbyz0),
        .I3(axcyz1),
        .I4(ax_IBUF[0]),
        .O(ay_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    bxayz0_i_1
       (.I0(z0_IBUF),
        .I1(ax_IBUF[2]),
        .I2(bx_IBUF[1]),
        .O(bxayz00));
  FDRE #(
    .INIT(1'b0)) 
    bxayz0_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(bxayz00),
        .Q(bxayz0),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    bxcyz2_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(z2_IBUF),
        .Q(bxcyz2),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \by_OBUF[0]_inst_i_1 
       (.I0(bx_IBUF[2]),
        .I1(bx_IBUF[1]),
        .I2(bxayz0),
        .I3(bxcyz2),
        .I4(bx_IBUF[0]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    cxayz1_i_1
       (.I0(z1_IBUF),
        .I1(ax_IBUF[2]),
        .I2(cx_IBUF[1]),
        .O(cxayz10));
  FDRE #(
    .INIT(1'b0)) 
    cxayz1_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cxayz10),
        .Q(cxayz1),
        .R(rst_IBUF));
  LUT3 #(
    .INIT(8'h6A)) 
    cxbyz2_i_1
       (.I0(z2_IBUF),
        .I1(bx_IBUF[2]),
        .I2(cx_IBUF[1]),
        .O(cxbyz20));
  FDRE #(
    .INIT(1'b0)) 
    cxbyz2_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cxbyz20),
        .Q(cxbyz2),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \cy_OBUF[0]_inst_i_1 
       (.I0(cx_IBUF[2]),
        .I1(cx_IBUF[1]),
        .I2(cxayz1),
        .I3(cxbyz2),
        .I4(cx_IBUF[0]),
        .O(cy_OBUF));
endmodule

(* ORIG_REF_NAME = "dom_and_onebit" *) 
module dom_and_onebit_0
   (ay_OBUF,
    by_OBUF,
    cy_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    z2_IBUF,
    ax_IBUF,
    bx_IBUF,
    cx_IBUF,
    z1_IBUF,
    z0_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  output [0:0]cy_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z2_IBUF;
  input [2:0]ax_IBUF;
  input [2:0]bx_IBUF;
  input [2:0]cx_IBUF;
  input [0:0]z1_IBUF;
  input [0:0]z0_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire axbyz0;
  wire axbyz00;
  wire axcyz1;
  wire axcyz10;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
  wire bxayz0;
  wire bxayz00;
  wire bxcyz2;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cx_IBUF;
  wire cxayz1;
  wire cxayz10;
  wire cxbyz2;
  wire cxbyz20;
  wire [0:0]cy_OBUF;
  wire rst_IBUF;
  wire [0:0]z0_IBUF;
  wire [0:0]z1_IBUF;
  wire [0:0]z2_IBUF;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    axbyz0_i_1__0
       (.I0(z0_IBUF),
        .I1(ax_IBUF[1]),
        .I2(bx_IBUF[2]),
        .O(axbyz00));
  FDRE #(
    .INIT(1'b0)) 
    axbyz0_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(axbyz00),
        .Q(axbyz0),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    axcyz1_i_1__0
       (.I0(z1_IBUF),
        .I1(ax_IBUF[1]),
        .I2(cx_IBUF[2]),
        .O(axcyz10));
  FDRE #(
    .INIT(1'b0)) 
    axcyz1_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(axcyz10),
        .Q(axcyz1),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \ay_OBUF[1]_inst_i_1 
       (.I0(ax_IBUF[1]),
        .I1(ax_IBUF[2]),
        .I2(axbyz0),
        .I3(axcyz1),
        .I4(ax_IBUF[0]),
        .O(ay_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    bxayz0_i_1__0
       (.I0(z0_IBUF),
        .I1(ax_IBUF[2]),
        .I2(bx_IBUF[1]),
        .O(bxayz00));
  FDRE #(
    .INIT(1'b0)) 
    bxayz0_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(bxayz00),
        .Q(bxayz0),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    bxcyz2_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(z2_IBUF),
        .Q(bxcyz2),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \by_OBUF[1]_inst_i_1 
       (.I0(bx_IBUF[2]),
        .I1(bx_IBUF[1]),
        .I2(bxayz0),
        .I3(bxcyz2),
        .I4(bx_IBUF[0]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    cxayz1_i_1__0
       (.I0(z1_IBUF),
        .I1(ax_IBUF[2]),
        .I2(cx_IBUF[1]),
        .O(cxayz10));
  FDRE #(
    .INIT(1'b0)) 
    cxayz1_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cxayz10),
        .Q(cxayz1),
        .R(rst_IBUF));
  LUT3 #(
    .INIT(8'h6A)) 
    cxbyz2_i_1__0
       (.I0(z2_IBUF),
        .I1(bx_IBUF[2]),
        .I2(cx_IBUF[1]),
        .O(cxbyz20));
  FDRE #(
    .INIT(1'b0)) 
    cxbyz2_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cxbyz20),
        .Q(cxbyz2),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \cy_OBUF[1]_inst_i_1 
       (.I0(cx_IBUF[2]),
        .I1(cx_IBUF[1]),
        .I2(cxayz1),
        .I3(cxbyz2),
        .I4(cx_IBUF[0]),
        .O(cy_OBUF));
endmodule

(* ORIG_REF_NAME = "dom_and_onebit" *) 
module dom_and_onebit_1
   (ay_OBUF,
    by_OBUF,
    cy_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    z2_IBUF,
    ax_IBUF,
    bx_IBUF,
    cx_IBUF,
    z1_IBUF,
    z0_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  output [0:0]cy_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z2_IBUF;
  input [2:0]ax_IBUF;
  input [2:0]bx_IBUF;
  input [2:0]cx_IBUF;
  input [0:0]z1_IBUF;
  input [0:0]z0_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire axbyz0;
  wire axbyz00;
  wire axcyz1;
  wire axcyz10;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
  wire bxayz0;
  wire bxayz00;
  wire bxcyz2;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cx_IBUF;
  wire cxayz1;
  wire cxayz10;
  wire cxbyz2;
  wire cxbyz20;
  wire [0:0]cy_OBUF;
  wire rst_IBUF;
  wire [0:0]z0_IBUF;
  wire [0:0]z1_IBUF;
  wire [0:0]z2_IBUF;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    axbyz0_i_1__1
       (.I0(z0_IBUF),
        .I1(ax_IBUF[1]),
        .I2(bx_IBUF[2]),
        .O(axbyz00));
  FDRE #(
    .INIT(1'b0)) 
    axbyz0_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(axbyz00),
        .Q(axbyz0),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    axcyz1_i_1__1
       (.I0(z1_IBUF),
        .I1(ax_IBUF[1]),
        .I2(cx_IBUF[2]),
        .O(axcyz10));
  FDRE #(
    .INIT(1'b0)) 
    axcyz1_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(axcyz10),
        .Q(axcyz1),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \ay_OBUF[2]_inst_i_1 
       (.I0(ax_IBUF[1]),
        .I1(ax_IBUF[2]),
        .I2(axbyz0),
        .I3(axcyz1),
        .I4(ax_IBUF[0]),
        .O(ay_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    bxayz0_i_1__1
       (.I0(z0_IBUF),
        .I1(ax_IBUF[2]),
        .I2(bx_IBUF[1]),
        .O(bxayz00));
  FDRE #(
    .INIT(1'b0)) 
    bxayz0_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(bxayz00),
        .Q(bxayz0),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    bxcyz2_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(z2_IBUF),
        .Q(bxcyz2),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \by_OBUF[2]_inst_i_1 
       (.I0(bx_IBUF[2]),
        .I1(bx_IBUF[1]),
        .I2(bxayz0),
        .I3(bxcyz2),
        .I4(bx_IBUF[0]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    cxayz1_i_1__1
       (.I0(z1_IBUF),
        .I1(ax_IBUF[2]),
        .I2(cx_IBUF[1]),
        .O(cxayz10));
  FDRE #(
    .INIT(1'b0)) 
    cxayz1_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cxayz10),
        .Q(cxayz1),
        .R(rst_IBUF));
  LUT3 #(
    .INIT(8'h6A)) 
    cxbyz2_i_1__1
       (.I0(z2_IBUF),
        .I1(bx_IBUF[2]),
        .I2(cx_IBUF[1]),
        .O(cxbyz20));
  FDRE #(
    .INIT(1'b0)) 
    cxbyz2_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cxbyz20),
        .Q(cxbyz2),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \cy_OBUF[2]_inst_i_1 
       (.I0(cx_IBUF[2]),
        .I1(cx_IBUF[1]),
        .I2(cxayz1),
        .I3(cxbyz2),
        .I4(cx_IBUF[0]),
        .O(cy_OBUF));
endmodule

(* ORIG_REF_NAME = "dom_and_onebit" *) 
module dom_and_onebit_2
   (ay_OBUF,
    by_OBUF,
    cy_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    z2_IBUF,
    ax_IBUF,
    bx_IBUF,
    cx_IBUF,
    z1_IBUF,
    z0_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  output [0:0]cy_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z2_IBUF;
  input [2:0]ax_IBUF;
  input [2:0]bx_IBUF;
  input [2:0]cx_IBUF;
  input [0:0]z1_IBUF;
  input [0:0]z0_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire axbyz0;
  wire axbyz00;
  wire axcyz1;
  wire axcyz10;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
  wire bxayz0;
  wire bxayz00;
  wire bxcyz2;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cx_IBUF;
  wire cxayz1;
  wire cxayz10;
  wire cxbyz2;
  wire cxbyz20;
  wire [0:0]cy_OBUF;
  wire rst_IBUF;
  wire [0:0]z0_IBUF;
  wire [0:0]z1_IBUF;
  wire [0:0]z2_IBUF;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    axbyz0_i_1__2
       (.I0(z0_IBUF),
        .I1(ax_IBUF[2]),
        .I2(bx_IBUF[0]),
        .O(axbyz00));
  FDRE #(
    .INIT(1'b0)) 
    axbyz0_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(axbyz00),
        .Q(axbyz0),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    axcyz1_i_1__2
       (.I0(z1_IBUF),
        .I1(ax_IBUF[2]),
        .I2(cx_IBUF[0]),
        .O(axcyz10));
  FDRE #(
    .INIT(1'b0)) 
    axcyz1_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(axcyz10),
        .Q(axcyz1),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \ay_OBUF[3]_inst_i_1 
       (.I0(ax_IBUF[2]),
        .I1(ax_IBUF[0]),
        .I2(axbyz0),
        .I3(axcyz1),
        .I4(ax_IBUF[1]),
        .O(ay_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    bxayz0_i_1__2
       (.I0(z0_IBUF),
        .I1(ax_IBUF[0]),
        .I2(bx_IBUF[2]),
        .O(bxayz00));
  FDRE #(
    .INIT(1'b0)) 
    bxayz0_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(bxayz00),
        .Q(bxayz0),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    bxcyz2_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(z2_IBUF),
        .Q(bxcyz2),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \by_OBUF[3]_inst_i_1 
       (.I0(bx_IBUF[0]),
        .I1(bx_IBUF[2]),
        .I2(bxayz0),
        .I3(bxcyz2),
        .I4(bx_IBUF[1]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    cxayz1_i_1__2
       (.I0(z1_IBUF),
        .I1(ax_IBUF[0]),
        .I2(cx_IBUF[2]),
        .O(cxayz10));
  FDRE #(
    .INIT(1'b0)) 
    cxayz1_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cxayz10),
        .Q(cxayz1),
        .R(rst_IBUF));
  LUT3 #(
    .INIT(8'h6A)) 
    cxbyz2_i_1__2
       (.I0(z2_IBUF),
        .I1(bx_IBUF[0]),
        .I2(cx_IBUF[2]),
        .O(cxbyz20));
  FDRE #(
    .INIT(1'b0)) 
    cxbyz2_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cxbyz20),
        .Q(cxbyz2),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \cy_OBUF[3]_inst_i_1 
       (.I0(cx_IBUF[0]),
        .I1(cx_IBUF[2]),
        .I2(cxayz1),
        .I3(cxbyz2),
        .I4(cx_IBUF[1]),
        .O(cy_OBUF));
endmodule

(* ORIG_REF_NAME = "dom_and_onebit" *) 
module dom_and_onebit_3
   (ay_OBUF,
    by_OBUF,
    cy_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    z2_IBUF,
    ax_IBUF,
    bx_IBUF,
    cx_IBUF,
    z1_IBUF,
    z0_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  output [0:0]cy_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z2_IBUF;
  input [2:0]ax_IBUF;
  input [2:0]bx_IBUF;
  input [2:0]cx_IBUF;
  input [0:0]z1_IBUF;
  input [0:0]z0_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire axbyz0;
  wire axbyz00;
  wire axcyz1;
  wire axcyz10;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
  wire bxayz0;
  wire bxayz00;
  wire bxcyz2;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cx_IBUF;
  wire cxayz1;
  wire cxayz10;
  wire cxbyz2;
  wire cxbyz20;
  wire [0:0]cy_OBUF;
  wire rst_IBUF;
  wire [0:0]z0_IBUF;
  wire [0:0]z1_IBUF;
  wire [0:0]z2_IBUF;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    axbyz0_i_1__3
       (.I0(z0_IBUF),
        .I1(ax_IBUF[0]),
        .I2(bx_IBUF[1]),
        .O(axbyz00));
  FDRE #(
    .INIT(1'b0)) 
    axbyz0_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(axbyz00),
        .Q(axbyz0),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    axcyz1_i_1__3
       (.I0(z1_IBUF),
        .I1(ax_IBUF[0]),
        .I2(cx_IBUF[1]),
        .O(axcyz10));
  FDRE #(
    .INIT(1'b0)) 
    axcyz1_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(axcyz10),
        .Q(axcyz1),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \ay_OBUF[4]_inst_i_1 
       (.I0(ax_IBUF[0]),
        .I1(ax_IBUF[1]),
        .I2(axbyz0),
        .I3(axcyz1),
        .I4(ax_IBUF[2]),
        .O(ay_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    bxayz0_i_1__3
       (.I0(z0_IBUF),
        .I1(ax_IBUF[1]),
        .I2(bx_IBUF[0]),
        .O(bxayz00));
  FDRE #(
    .INIT(1'b0)) 
    bxayz0_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(bxayz00),
        .Q(bxayz0),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    bxcyz2_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(z2_IBUF),
        .Q(bxcyz2),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \by_OBUF[4]_inst_i_1 
       (.I0(bx_IBUF[1]),
        .I1(bx_IBUF[0]),
        .I2(bxayz0),
        .I3(bxcyz2),
        .I4(bx_IBUF[2]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    cxayz1_i_1__3
       (.I0(z1_IBUF),
        .I1(ax_IBUF[1]),
        .I2(cx_IBUF[0]),
        .O(cxayz10));
  FDRE #(
    .INIT(1'b0)) 
    cxayz1_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cxayz10),
        .Q(cxayz1),
        .R(rst_IBUF));
  LUT3 #(
    .INIT(8'h6A)) 
    cxbyz2_i_1__3
       (.I0(z2_IBUF),
        .I1(bx_IBUF[1]),
        .I2(cx_IBUF[0]),
        .O(cxbyz20));
  FDRE #(
    .INIT(1'b0)) 
    cxbyz2_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(cxbyz20),
        .Q(cxbyz2),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \cy_OBUF[4]_inst_i_1 
       (.I0(cx_IBUF[1]),
        .I1(cx_IBUF[0]),
        .I2(cxayz1),
        .I3(cxbyz2),
        .I4(cx_IBUF[2]),
        .O(cy_OBUF));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module dom_keccak_sbox
   (clk,
    rst,
    ax,
    bx,
    cx,
    z0,
    z1,
    z2,
    ay,
    by,
    cy);
  input clk;
  input rst;
  input [4:0]ax;
  input [4:0]bx;
  input [4:0]cx;
  input [4:0]z0;
  input [4:0]z1;
  input [4:0]z2;
  output [4:0]ay;
  output [4:0]by;
  output [4:0]cy;

  wire [4:0]ax;
  wire [4:0]ax_IBUF;
  wire [4:0]ay;
  wire [4:0]ay_OBUF;
  wire [4:0]bx;
  wire [4:0]bx_IBUF;
  wire [4:0]by;
  wire [4:0]by_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [4:0]cx;
  wire [4:0]cx_IBUF;
  wire [4:0]cy;
  wire [4:0]cy_OBUF;
  wire rst;
  wire rst_IBUF;
  wire [4:0]z0;
  wire [4:0]z0_IBUF;
  wire [4:0]z1;
  wire [4:0]z1_IBUF;
  wire [4:0]z2;
  wire [4:0]z2_IBUF;

  IBUF \ax_IBUF[0]_inst 
       (.I(ax[0]),
        .O(ax_IBUF[0]));
  IBUF \ax_IBUF[1]_inst 
       (.I(ax[1]),
        .O(ax_IBUF[1]));
  IBUF \ax_IBUF[2]_inst 
       (.I(ax[2]),
        .O(ax_IBUF[2]));
  IBUF \ax_IBUF[3]_inst 
       (.I(ax[3]),
        .O(ax_IBUF[3]));
  IBUF \ax_IBUF[4]_inst 
       (.I(ax[4]),
        .O(ax_IBUF[4]));
  OBUF \ay_OBUF[0]_inst 
       (.I(ay_OBUF[0]),
        .O(ay[0]));
  OBUF \ay_OBUF[1]_inst 
       (.I(ay_OBUF[1]),
        .O(ay[1]));
  OBUF \ay_OBUF[2]_inst 
       (.I(ay_OBUF[2]),
        .O(ay[2]));
  OBUF \ay_OBUF[3]_inst 
       (.I(ay_OBUF[3]),
        .O(ay[3]));
  OBUF \ay_OBUF[4]_inst 
       (.I(ay_OBUF[4]),
        .O(ay[4]));
  IBUF \bx_IBUF[0]_inst 
       (.I(bx[0]),
        .O(bx_IBUF[0]));
  IBUF \bx_IBUF[1]_inst 
       (.I(bx[1]),
        .O(bx_IBUF[1]));
  IBUF \bx_IBUF[2]_inst 
       (.I(bx[2]),
        .O(bx_IBUF[2]));
  IBUF \bx_IBUF[3]_inst 
       (.I(bx[3]),
        .O(bx_IBUF[3]));
  IBUF \bx_IBUF[4]_inst 
       (.I(bx[4]),
        .O(bx_IBUF[4]));
  OBUF \by_OBUF[0]_inst 
       (.I(by_OBUF[0]),
        .O(by[0]));
  OBUF \by_OBUF[1]_inst 
       (.I(by_OBUF[1]),
        .O(by[1]));
  OBUF \by_OBUF[2]_inst 
       (.I(by_OBUF[2]),
        .O(by[2]));
  OBUF \by_OBUF[3]_inst 
       (.I(by_OBUF[3]),
        .O(by[3]));
  OBUF \by_OBUF[4]_inst 
       (.I(by_OBUF[4]),
        .O(by[4]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \cx_IBUF[0]_inst 
       (.I(cx[0]),
        .O(cx_IBUF[0]));
  IBUF \cx_IBUF[1]_inst 
       (.I(cx[1]),
        .O(cx_IBUF[1]));
  IBUF \cx_IBUF[2]_inst 
       (.I(cx[2]),
        .O(cx_IBUF[2]));
  IBUF \cx_IBUF[3]_inst 
       (.I(cx[3]),
        .O(cx_IBUF[3]));
  IBUF \cx_IBUF[4]_inst 
       (.I(cx[4]),
        .O(cx_IBUF[4]));
  OBUF \cy_OBUF[0]_inst 
       (.I(cy_OBUF[0]),
        .O(cy[0]));
  OBUF \cy_OBUF[1]_inst 
       (.I(cy_OBUF[1]),
        .O(cy[1]));
  OBUF \cy_OBUF[2]_inst 
       (.I(cy_OBUF[2]),
        .O(cy[2]));
  OBUF \cy_OBUF[3]_inst 
       (.I(cy_OBUF[3]),
        .O(cy[3]));
  OBUF \cy_OBUF[4]_inst 
       (.I(cy_OBUF[4]),
        .O(cy[4]));
  dom_and_onebit \genblk1[0].dm0 
       (.ax_IBUF(ax_IBUF[2:0]),
        .ay_OBUF(ay_OBUF[0]),
        .bx_IBUF(bx_IBUF[2:0]),
        .by_OBUF(by_OBUF[0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cx_IBUF(cx_IBUF[2:0]),
        .cy_OBUF(cy_OBUF[0]),
        .rst_IBUF(rst_IBUF),
        .z0_IBUF(z0_IBUF[0]),
        .z1_IBUF(z1_IBUF[0]),
        .z2_IBUF(z2_IBUF[0]));
  dom_and_onebit_0 \genblk1[1].dm0 
       (.ax_IBUF(ax_IBUF[3:1]),
        .ay_OBUF(ay_OBUF[1]),
        .bx_IBUF(bx_IBUF[3:1]),
        .by_OBUF(by_OBUF[1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cx_IBUF(cx_IBUF[3:1]),
        .cy_OBUF(cy_OBUF[1]),
        .rst_IBUF(rst_IBUF),
        .z0_IBUF(z0_IBUF[1]),
        .z1_IBUF(z1_IBUF[1]),
        .z2_IBUF(z2_IBUF[1]));
  dom_and_onebit_1 \genblk1[2].dm0 
       (.ax_IBUF(ax_IBUF[4:2]),
        .ay_OBUF(ay_OBUF[2]),
        .bx_IBUF(bx_IBUF[4:2]),
        .by_OBUF(by_OBUF[2]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cx_IBUF(cx_IBUF[4:2]),
        .cy_OBUF(cy_OBUF[2]),
        .rst_IBUF(rst_IBUF),
        .z0_IBUF(z0_IBUF[2]),
        .z1_IBUF(z1_IBUF[2]),
        .z2_IBUF(z2_IBUF[2]));
  dom_and_onebit_2 \genblk1[3].dm0 
       (.ax_IBUF({ax_IBUF[4:3],ax_IBUF[0]}),
        .ay_OBUF(ay_OBUF[3]),
        .bx_IBUF({bx_IBUF[4:3],bx_IBUF[0]}),
        .by_OBUF(by_OBUF[3]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cx_IBUF({cx_IBUF[4:3],cx_IBUF[0]}),
        .cy_OBUF(cy_OBUF[3]),
        .rst_IBUF(rst_IBUF),
        .z0_IBUF(z0_IBUF[3]),
        .z1_IBUF(z1_IBUF[3]),
        .z2_IBUF(z2_IBUF[3]));
  dom_and_onebit_3 \genblk1[4].dm0 
       (.ax_IBUF({ax_IBUF[4],ax_IBUF[1:0]}),
        .ay_OBUF(ay_OBUF[4]),
        .bx_IBUF({bx_IBUF[4],bx_IBUF[1:0]}),
        .by_OBUF(by_OBUF[4]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cx_IBUF({cx_IBUF[4],cx_IBUF[1:0]}),
        .cy_OBUF(cy_OBUF[4]),
        .rst_IBUF(rst_IBUF),
        .z0_IBUF(z0_IBUF[4]),
        .z1_IBUF(z1_IBUF[4]),
        .z2_IBUF(z2_IBUF[4]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \z0_IBUF[0]_inst 
       (.I(z0[0]),
        .O(z0_IBUF[0]));
  IBUF \z0_IBUF[1]_inst 
       (.I(z0[1]),
        .O(z0_IBUF[1]));
  IBUF \z0_IBUF[2]_inst 
       (.I(z0[2]),
        .O(z0_IBUF[2]));
  IBUF \z0_IBUF[3]_inst 
       (.I(z0[3]),
        .O(z0_IBUF[3]));
  IBUF \z0_IBUF[4]_inst 
       (.I(z0[4]),
        .O(z0_IBUF[4]));
  IBUF \z1_IBUF[0]_inst 
       (.I(z1[0]),
        .O(z1_IBUF[0]));
  IBUF \z1_IBUF[1]_inst 
       (.I(z1[1]),
        .O(z1_IBUF[1]));
  IBUF \z1_IBUF[2]_inst 
       (.I(z1[2]),
        .O(z1_IBUF[2]));
  IBUF \z1_IBUF[3]_inst 
       (.I(z1[3]),
        .O(z1_IBUF[3]));
  IBUF \z1_IBUF[4]_inst 
       (.I(z1[4]),
        .O(z1_IBUF[4]));
  IBUF \z2_IBUF[0]_inst 
       (.I(z2[0]),
        .O(z2_IBUF[0]));
  IBUF \z2_IBUF[1]_inst 
       (.I(z2[1]),
        .O(z2_IBUF[1]));
  IBUF \z2_IBUF[2]_inst 
       (.I(z2[2]),
        .O(z2_IBUF[2]));
  IBUF \z2_IBUF[3]_inst 
       (.I(z2[3]),
        .O(z2_IBUF[3]));
  IBUF \z2_IBUF[4]_inst 
       (.I(z2[4]),
        .O(z2_IBUF[4]));
endmodule
