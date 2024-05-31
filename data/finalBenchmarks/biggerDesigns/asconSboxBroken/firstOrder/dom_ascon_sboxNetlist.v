// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Nov 15 14:40:20 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/biggerDesigns/asconSbox/firstOrder/dom_ascon_sboxNetlist.v
// Design      : dom_ascon_sbox
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dom_and_onebit
   (ay_OBUF,
    by_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    z_IBUF,
    ax_IBUF,
    bx_IBUF,
    p_12_in,
    p_17_in,
    tmpa,
    bv40,
    bv00,
    tmpb);
  output [1:0]ay_OBUF;
  output [1:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input [4:0]ax_IBUF;
  input [4:0]bx_IBUF;
  input p_12_in;
  input p_17_in;
  input tmpa;
  input bv40;
  input bv00;
  input tmpb;

  wire \<const1> ;
  wire [4:0]ax_IBUF;
  wire [1:0]ay_OBUF;
  wire bv00;
  wire bv40;
  wire [4:0]bx_IBUF;
  wire [1:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire p_12_in;
  wire p_17_in;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpa_0;
  wire tmpb;
  wire tmpb0;
  wire tmpb_1;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h782D87D2)) 
    \ay_OBUF[0]_inst_i_1 
       (.I0(ax_IBUF[3]),
        .I1(ax_IBUF[4]),
        .I2(tmpa_0),
        .I3(ax_IBUF[0]),
        .I4(ax_IBUF[1]),
        .O(ay_OBUF[0]));
  LUT6 #(
    .INIT(64'h6699966966996996)) 
    \ay_OBUF[4]_inst_i_1 
       (.I0(p_12_in),
        .I1(tmpa_0),
        .I2(p_17_in),
        .I3(tmpa),
        .I4(ax_IBUF[3]),
        .I5(ax_IBUF[2]),
        .O(ay_OBUF[1]));
  LUT5 #(
    .INIT(32'hB4874B78)) 
    \by_OBUF[0]_inst_i_1 
       (.I0(bx_IBUF[4]),
        .I1(bx_IBUF[3]),
        .I2(tmpb_1),
        .I3(bx_IBUF[0]),
        .I4(bx_IBUF[1]),
        .O(by_OBUF[0]));
  LUT6 #(
    .INIT(64'h9966699666996996)) 
    \by_OBUF[4]_inst_i_1 
       (.I0(bv40),
        .I1(tmpb_1),
        .I2(bv00),
        .I3(tmpb),
        .I4(bx_IBUF[3]),
        .I5(bx_IBUF[2]),
        .O(by_OBUF[1]));
  LUT4 #(
    .INIT(16'h69AA)) 
    tmpa_i_1
       (.I0(z_IBUF),
        .I1(ax_IBUF[0]),
        .I2(ax_IBUF[4]),
        .I3(bx_IBUF[3]),
        .O(tmpa0));
  FDRE #(
    .INIT(1'b0)) 
    tmpa_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpa0),
        .Q(tmpa_0),
        .R(rst_IBUF));
  LUT4 #(
    .INIT(16'h96AA)) 
    tmpb_i_1
       (.I0(z_IBUF),
        .I1(bx_IBUF[0]),
        .I2(bx_IBUF[4]),
        .I3(ax_IBUF[3]),
        .O(tmpb0));
  FDRE #(
    .INIT(1'b0)) 
    tmpb_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpb0),
        .Q(tmpb_1),
        .R(rst_IBUF));
endmodule

(* ORIG_REF_NAME = "dom_and_onebit" *) 
module dom_and_onebit_0
   (tmpa,
    tmpb,
    rst_IBUF,
    clk_IBUF_BUFG,
    z_IBUF,
    ax_IBUF,
    bx_IBUF);
  output tmpa;
  output tmpb;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input [1:0]ax_IBUF;
  input [1:0]bx_IBUF;

  wire \<const1> ;
  wire [1:0]ax_IBUF;
  wire [1:0]bx_IBUF;
  wire clk_IBUF_BUFG;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA99A)) 
    tmpa_i_1__0
       (.I0(z_IBUF),
        .I1(ax_IBUF[1]),
        .I2(bx_IBUF[1]),
        .I3(bx_IBUF[0]),
        .O(tmpa0));
  FDRE #(
    .INIT(1'b0)) 
    tmpa_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpa0),
        .Q(tmpa),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    tmpb_i_1__0
       (.I0(z_IBUF),
        .I1(bx_IBUF[1]),
        .I2(ax_IBUF[1]),
        .I3(ax_IBUF[0]),
        .O(tmpb0));
  FDRE #(
    .INIT(1'b0)) 
    tmpb_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpb0),
        .Q(tmpb),
        .R(rst_IBUF));
endmodule

(* ORIG_REF_NAME = "dom_and_onebit" *) 
module dom_and_onebit_1
   (ay_OBUF,
    by_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    ax_IBUF,
    tmpa,
    p_17_in,
    bx_IBUF,
    tmpb,
    bv00,
    z_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [2:0]ax_IBUF;
  input tmpa;
  input p_17_in;
  input [2:0]bx_IBUF;
  input tmpb;
  input bv00;
  input [0:0]z_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire bv00;
  wire [2:0]bx_IBUF;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire p_17_in;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpa_0;
  wire tmpb;
  wire tmpb0;
  wire tmpb_1;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h93366CC96CC99336)) 
    \ay_OBUF[3]_inst_i_1 
       (.I0(ax_IBUF[0]),
        .I1(tmpa_0),
        .I2(ax_IBUF[2]),
        .I3(ax_IBUF[1]),
        .I4(tmpa),
        .I5(p_17_in),
        .O(ay_OBUF));
  LUT6 #(
    .INIT(64'h366CC993C993366C)) 
    \by_OBUF[3]_inst_i_1 
       (.I0(bx_IBUF[0]),
        .I1(tmpb_1),
        .I2(bx_IBUF[2]),
        .I3(bx_IBUF[1]),
        .I4(tmpb),
        .I5(bv00),
        .O(by_OBUF));
  LUT4 #(
    .INIT(16'h69AA)) 
    tmpa_i_1__1
       (.I0(z_IBUF),
        .I1(ax_IBUF[2]),
        .I2(ax_IBUF[1]),
        .I3(bx_IBUF[0]),
        .O(tmpa0));
  FDRE #(
    .INIT(1'b0)) 
    tmpa_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpa0),
        .Q(tmpa_0),
        .R(rst_IBUF));
  LUT4 #(
    .INIT(16'h96AA)) 
    tmpb_i_1__1
       (.I0(z_IBUF),
        .I1(bx_IBUF[2]),
        .I2(bx_IBUF[1]),
        .I3(ax_IBUF[0]),
        .O(tmpb0));
  FDRE #(
    .INIT(1'b0)) 
    tmpb_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpb0),
        .Q(tmpb_1),
        .R(rst_IBUF));
endmodule

(* ORIG_REF_NAME = "dom_and_onebit" *) 
module dom_and_onebit_2
   (tmpa,
    tmpb,
    ay_OBUF,
    by_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    z_IBUF,
    ax_IBUF,
    bx_IBUF);
  output tmpa;
  output tmpb;
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input [3:0]ax_IBUF;
  input [3:0]bx_IBUF;

  wire \<const1> ;
  wire [3:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire [3:0]bx_IBUF;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \ay_OBUF[2]_inst_i_1 
       (.I0(ax_IBUF[3]),
        .I1(ax_IBUF[2]),
        .I2(tmpa),
        .I3(ax_IBUF[1]),
        .I4(ax_IBUF[0]),
        .O(ay_OBUF));
  LUT5 #(
    .INIT(32'hB44B4BB4)) 
    \by_OBUF[2]_inst_i_1 
       (.I0(bx_IBUF[0]),
        .I1(bx_IBUF[1]),
        .I2(tmpb),
        .I3(bx_IBUF[2]),
        .I4(bx_IBUF[3]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA99A)) 
    tmpa_i_1__2
       (.I0(z_IBUF),
        .I1(ax_IBUF[1]),
        .I2(bx_IBUF[1]),
        .I3(bx_IBUF[0]),
        .O(tmpa0));
  FDRE #(
    .INIT(1'b0)) 
    tmpa_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpa0),
        .Q(tmpa),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    tmpb_i_1__2
       (.I0(z_IBUF),
        .I1(bx_IBUF[1]),
        .I2(ax_IBUF[1]),
        .I3(ax_IBUF[0]),
        .O(tmpb0));
  FDRE #(
    .INIT(1'b0)) 
    tmpb_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpb0),
        .Q(tmpb),
        .R(rst_IBUF));
endmodule

(* ORIG_REF_NAME = "dom_and_onebit" *) 
module dom_and_onebit_3
   (ay_OBUF,
    by_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    ax_IBUF,
    tmpa,
    av20,
    bx_IBUF,
    tmpb,
    bv20,
    z_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [2:0]ax_IBUF;
  input tmpa;
  input av20;
  input [2:0]bx_IBUF;
  input tmpb;
  input bv20;
  input [0:0]z_IBUF;

  wire \<const1> ;
  wire av20;
  wire [2:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire bv20;
  wire [2:0]bx_IBUF;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpa_0;
  wire tmpb;
  wire tmpb0;
  wire tmpb_1;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h63369CC99CC96336)) 
    \ay_OBUF[1]_inst_i_1 
       (.I0(ax_IBUF[2]),
        .I1(tmpa_0),
        .I2(ax_IBUF[0]),
        .I3(ax_IBUF[1]),
        .I4(tmpa),
        .I5(av20),
        .O(ay_OBUF));
  LUT6 #(
    .INIT(64'h369CC963C963369C)) 
    \by_OBUF[1]_inst_i_1 
       (.I0(bx_IBUF[2]),
        .I1(tmpb_1),
        .I2(bx_IBUF[0]),
        .I3(bx_IBUF[1]),
        .I4(tmpb),
        .I5(bv20),
        .O(by_OBUF));
  LUT5 #(
    .INIT(32'hAA6969AA)) 
    tmpa_i_1__3
       (.I0(z_IBUF),
        .I1(ax_IBUF[1]),
        .I2(ax_IBUF[0]),
        .I3(bx_IBUF[0]),
        .I4(bx_IBUF[2]),
        .O(tmpa0));
  FDRE #(
    .INIT(1'b0)) 
    tmpa_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpa0),
        .Q(tmpa_0),
        .R(rst_IBUF));
  LUT5 #(
    .INIT(32'hAA9696AA)) 
    tmpb_i_1__3
       (.I0(z_IBUF),
        .I1(bx_IBUF[1]),
        .I2(bx_IBUF[0]),
        .I3(ax_IBUF[0]),
        .I4(ax_IBUF[2]),
        .O(tmpb0));
  FDRE #(
    .INIT(1'b0)) 
    tmpb_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpb0),
        .Q(tmpb_1),
        .R(rst_IBUF));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module dom_ascon_sbox
   (clk,
    rst,
    ax,
    bx,
    z,
    ay,
    by);
  input clk;
  input rst;
  input [4:0]ax;
  input [4:0]bx;
  input [4:0]z;
  output [4:0]ay;
  output [4:0]by;

  wire av20;
  wire [4:0]ax;
  wire [4:0]ax_IBUF;
  wire [4:0]ay;
  wire [4:0]ay_OBUF;
  wire bv00;
  wire bv20;
  wire bv40;
  wire [4:0]bx;
  wire [4:0]bx_IBUF;
  wire [4:0]by;
  wire [4:0]by_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire p_12_in;
  wire p_17_in;
  wire rst;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa_1;
  wire tmpb;
  wire tmpb_0;
  wire [4:0]z;
  wire [4:0]z_IBUF;

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
  LUT2 #(
    .INIT(4'h6)) 
    \ay_OBUF[1]_inst_i_2 
       (.I0(ax_IBUF[3]),
        .I1(ax_IBUF[2]),
        .O(av20));
  OBUF \ay_OBUF[2]_inst 
       (.I(ay_OBUF[2]),
        .O(ay[2]));
  OBUF \ay_OBUF[3]_inst 
       (.I(ay_OBUF[3]),
        .O(ay[3]));
  OBUF \ay_OBUF[4]_inst 
       (.I(ay_OBUF[4]),
        .O(ay[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ay_OBUF[4]_inst_i_2 
       (.I0(ax_IBUF[1]),
        .I1(ax_IBUF[0]),
        .O(p_12_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ay_OBUF[4]_inst_i_3 
       (.I0(ax_IBUF[0]),
        .I1(ax_IBUF[4]),
        .O(p_17_in));
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
  LUT2 #(
    .INIT(4'h6)) 
    \by_OBUF[1]_inst_i_2 
       (.I0(bx_IBUF[3]),
        .I1(bx_IBUF[2]),
        .O(bv20));
  OBUF \by_OBUF[2]_inst 
       (.I(by_OBUF[2]),
        .O(by[2]));
  OBUF \by_OBUF[3]_inst 
       (.I(by_OBUF[3]),
        .O(by[3]));
  OBUF \by_OBUF[4]_inst 
       (.I(by_OBUF[4]),
        .O(by[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \by_OBUF[4]_inst_i_2 
       (.I0(bx_IBUF[1]),
        .I1(bx_IBUF[0]),
        .O(bv40));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \by_OBUF[4]_inst_i_3 
       (.I0(bx_IBUF[0]),
        .I1(bx_IBUF[4]),
        .O(bv00));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  dom_and_onebit dm0
       (.ax_IBUF(ax_IBUF),
        .ay_OBUF({ay_OBUF[4],ay_OBUF[0]}),
        .bv00(bv00),
        .bv40(bv40),
        .bx_IBUF(bx_IBUF),
        .by_OBUF({by_OBUF[4],by_OBUF[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_12_in(p_12_in),
        .p_17_in(p_17_in),
        .rst_IBUF(rst_IBUF),
        .tmpa(tmpa),
        .tmpb(tmpb),
        .z_IBUF(z_IBUF[0]));
  dom_and_onebit_0 dm1
       (.ax_IBUF(ax_IBUF[3:2]),
        .bx_IBUF(bx_IBUF[3:2]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .tmpa(tmpa),
        .tmpb(tmpb),
        .z_IBUF(z_IBUF[1]));
  dom_and_onebit_1 dm2
       (.ax_IBUF(ax_IBUF[3:1]),
        .ay_OBUF(ay_OBUF[3]),
        .bv00(bv00),
        .bx_IBUF(bx_IBUF[3:1]),
        .by_OBUF(by_OBUF[3]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_17_in(p_17_in),
        .rst_IBUF(rst_IBUF),
        .tmpa(tmpa),
        .tmpb(tmpb),
        .z_IBUF(z_IBUF[2]));
  dom_and_onebit_2 dm3
       (.ax_IBUF(ax_IBUF[3:0]),
        .ay_OBUF(ay_OBUF[2]),
        .bx_IBUF(bx_IBUF[3:0]),
        .by_OBUF(by_OBUF[2]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .tmpa(tmpa_1),
        .tmpb(tmpb_0),
        .z_IBUF(z_IBUF[3]));
  dom_and_onebit_3 dm4
       (.av20(av20),
        .ax_IBUF({ax_IBUF[4],ax_IBUF[1:0]}),
        .ay_OBUF(ay_OBUF[1]),
        .bv20(bv20),
        .bx_IBUF({bx_IBUF[4],bx_IBUF[1:0]}),
        .by_OBUF(by_OBUF[1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .tmpa(tmpa_1),
        .tmpb(tmpb_0),
        .z_IBUF(z_IBUF[4]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \z_IBUF[0]_inst 
       (.I(z[0]),
        .O(z_IBUF[0]));
  IBUF \z_IBUF[1]_inst 
       (.I(z[1]),
        .O(z_IBUF[1]));
  IBUF \z_IBUF[2]_inst 
       (.I(z[2]),
        .O(z_IBUF[2]));
  IBUF \z_IBUF[3]_inst 
       (.I(z[3]),
        .O(z_IBUF[3]));
  IBUF \z_IBUF[4]_inst 
       (.I(z[4]),
        .O(z_IBUF[4]));
endmodule
