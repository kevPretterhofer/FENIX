// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Nov 15 15:34:55 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/biggerDesigns/asconSbox/firstOrderAttr/dom_ascon_sboxAttrNetlist.v
// Design      : dom_ascon_sboxAttr
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dom_and_onebitAttr
   (in0,
    bv01,
    rst_IBUF,
    clk_IBUF_BUFG,
    z_IBUF,
    out,
    bx_IBUF,
    ax_IBUF,
    tmpb_reg_0);
  output in0;
  output bv01;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input out;
  input [0:0]bx_IBUF;
  input [0:0]ax_IBUF;
  input tmpb_reg_0;

  wire \<const1> ;
  wire [0:0]ax_IBUF;
  wire bv01;
  wire [0:0]bx_IBUF;
  wire clk_IBUF_BUFG;
  wire in0;
  wire out;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire tmpb_reg_0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h9A)) 
    av01_inferred_i_1
       (.I0(tmpa),
        .I1(out),
        .I2(ax_IBUF),
        .O(in0));
  LUT3 #(
    .INIT(8'h6A)) 
    bv01_inferred_i_1
       (.I0(tmpb),
        .I1(bx_IBUF),
        .I2(tmpb_reg_0),
        .O(bv01));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1
       (.I0(z_IBUF),
        .I1(out),
        .I2(bx_IBUF),
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
  LUT3 #(
    .INIT(8'h6A)) 
    tmpb_i_1
       (.I0(z_IBUF),
        .I1(tmpb_reg_0),
        .I2(ax_IBUF),
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

(* ORIG_REF_NAME = "dom_and_onebitAttr" *) 
module dom_and_onebitAttr_0
   (in0,
    bv10,
    rst_IBUF,
    clk_IBUF_BUFG,
    z_IBUF,
    ax_IBUF,
    out,
    tmpb_reg_0,
    bx_IBUF);
  output in0;
  output bv10;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input [0:0]ax_IBUF;
  input out;
  input tmpb_reg_0;
  input [0:0]bx_IBUF;

  wire \<const1> ;
  wire [0:0]ax_IBUF;
  wire bv10;
  wire [0:0]bx_IBUF;
  wire clk_IBUF_BUFG;
  wire in0;
  wire out;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire tmpb_reg_0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h9A)) 
    av10_inferred_i_1
       (.I0(tmpa),
        .I1(ax_IBUF),
        .I2(tmpb_reg_0),
        .O(in0));
  LUT3 #(
    .INIT(8'h6A)) 
    bv10_inferred_i_1
       (.I0(tmpb),
        .I1(out),
        .I2(bx_IBUF),
        .O(bv10));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__0
       (.I0(z_IBUF),
        .I1(ax_IBUF),
        .I2(out),
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
  LUT3 #(
    .INIT(8'h6A)) 
    tmpb_i_1__0
       (.I0(z_IBUF),
        .I1(bx_IBUF),
        .I2(tmpb_reg_0),
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

(* ORIG_REF_NAME = "dom_and_onebitAttr" *) 
module dom_and_onebitAttr_1
   (in0,
    bv21,
    rst_IBUF,
    clk_IBUF_BUFG,
    z_IBUF,
    out,
    bx_IBUF,
    ax_IBUF,
    tmpb_reg_0);
  output in0;
  output bv21;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input out;
  input [0:0]bx_IBUF;
  input [0:0]ax_IBUF;
  input tmpb_reg_0;

  wire \<const1> ;
  wire [0:0]ax_IBUF;
  wire bv21;
  wire [0:0]bx_IBUF;
  wire clk_IBUF_BUFG;
  wire in0;
  wire out;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire tmpb_reg_0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h9A)) 
    av21_inferred_i_1
       (.I0(tmpa),
        .I1(out),
        .I2(ax_IBUF),
        .O(in0));
  LUT3 #(
    .INIT(8'h6A)) 
    bv21_inferred_i_1
       (.I0(tmpb),
        .I1(bx_IBUF),
        .I2(tmpb_reg_0),
        .O(bv21));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__1
       (.I0(z_IBUF),
        .I1(out),
        .I2(bx_IBUF),
        .O(tmpa0));
  FDRE #(
    .INIT(1'b0)) 
    tmpa_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpa0),
        .Q(tmpa),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    tmpb_i_1__1
       (.I0(z_IBUF),
        .I1(tmpb_reg_0),
        .I2(ax_IBUF),
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

(* ORIG_REF_NAME = "dom_and_onebitAttr" *) 
module dom_and_onebitAttr_2
   (in0,
    bv30,
    rst_IBUF,
    clk_IBUF_BUFG,
    z_IBUF,
    ax_IBUF,
    out,
    tmpb_reg_0,
    bx_IBUF);
  output in0;
  output bv30;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input [0:0]ax_IBUF;
  input out;
  input tmpb_reg_0;
  input [0:0]bx_IBUF;

  wire \<const1> ;
  wire [0:0]ax_IBUF;
  wire bv30;
  wire [0:0]bx_IBUF;
  wire clk_IBUF_BUFG;
  wire in0;
  wire out;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire tmpb_reg_0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h9A)) 
    av30_inferred_i_1
       (.I0(tmpa),
        .I1(ax_IBUF),
        .I2(tmpb_reg_0),
        .O(in0));
  LUT3 #(
    .INIT(8'h6A)) 
    bv30_inferred_i_1
       (.I0(tmpb),
        .I1(out),
        .I2(bx_IBUF),
        .O(bv30));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__2
       (.I0(z_IBUF),
        .I1(ax_IBUF),
        .I2(out),
        .O(tmpa0));
  FDRE #(
    .INIT(1'b0)) 
    tmpa_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpa0),
        .Q(tmpa),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    tmpb_i_1__2
       (.I0(z_IBUF),
        .I1(bx_IBUF),
        .I2(tmpb_reg_0),
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

(* ORIG_REF_NAME = "dom_and_onebitAttr" *) 
module dom_and_onebitAttr_3
   (in0,
    bv41,
    rst_IBUF,
    clk_IBUF_BUFG,
    z_IBUF,
    out,
    tmpa_reg_0,
    tmpb_reg_0,
    tmpb_reg_1);
  output in0;
  output bv41;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input out;
  input tmpa_reg_0;
  input tmpb_reg_0;
  input tmpb_reg_1;

  wire \<const1> ;
  wire bv41;
  wire clk_IBUF_BUFG;
  wire in0;
  wire out;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpa_reg_0;
  wire tmpb;
  wire tmpb0;
  wire tmpb_reg_0;
  wire tmpb_reg_1;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h9A)) 
    av41_inferred_i_1
       (.I0(tmpa),
        .I1(out),
        .I2(tmpb_reg_0),
        .O(in0));
  LUT3 #(
    .INIT(8'h6A)) 
    bv41_inferred_i_1
       (.I0(tmpb),
        .I1(tmpa_reg_0),
        .I2(tmpb_reg_1),
        .O(bv41));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__3
       (.I0(z_IBUF),
        .I1(out),
        .I2(tmpa_reg_0),
        .O(tmpa0));
  FDRE #(
    .INIT(1'b0)) 
    tmpa_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpa0),
        .Q(tmpa),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    tmpb_i_1__3
       (.I0(z_IBUF),
        .I1(tmpb_reg_1),
        .I2(tmpb_reg_0),
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

(* STRUCTURAL_NETLIST = "yes" *)
module dom_ascon_sboxAttr
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

  (* RTL_KEEP = "true" *) wire av00;
  (* RTL_KEEP = "true" *) wire av01;
  (* RTL_KEEP = "true" *) wire av02;
  (* RTL_KEEP = "true" *) wire av03;
  (* RTL_KEEP = "true" *) wire av10;
  (* RTL_KEEP = "true" *) wire av11;
  (* RTL_KEEP = "true" *) wire av12;
  (* RTL_KEEP = "true" *) wire av20;
  (* RTL_KEEP = "true" *) wire av21;
  (* RTL_KEEP = "true" *) wire av22;
  (* RTL_KEEP = "true" *) wire av23;
  (* RTL_KEEP = "true" *) wire av30;
  (* RTL_KEEP = "true" *) wire av31;
  (* RTL_KEEP = "true" *) wire av32;
  (* RTL_KEEP = "true" *) wire av40;
  (* RTL_KEEP = "true" *) wire av41;
  (* RTL_KEEP = "true" *) wire av42;
  wire [4:0]ax;
  wire [4:0]ax_IBUF;
  wire [4:0]ay;
  (* RTL_KEEP = "true" *) wire bv00;
  (* RTL_KEEP = "true" *) wire bv01;
  (* RTL_KEEP = "true" *) wire bv02;
  (* RTL_KEEP = "true" *) wire bv03;
  (* RTL_KEEP = "true" *) wire bv10;
  (* RTL_KEEP = "true" *) wire bv11;
  (* RTL_KEEP = "true" *) wire bv12;
  (* RTL_KEEP = "true" *) wire bv20;
  (* RTL_KEEP = "true" *) wire bv21;
  (* RTL_KEEP = "true" *) wire bv22;
  (* RTL_KEEP = "true" *) wire bv23;
  (* RTL_KEEP = "true" *) wire bv30;
  (* RTL_KEEP = "true" *) wire bv31;
  (* RTL_KEEP = "true" *) wire bv32;
  (* RTL_KEEP = "true" *) wire bv40;
  (* RTL_KEEP = "true" *) wire bv41;
  (* RTL_KEEP = "true" *) wire bv42;
  wire [4:0]bx;
  wire [4:0]bx_IBUF;
  wire [4:0]by;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst;
  wire rst_IBUF;
  wire [4:0]z;
  wire [4:0]z_IBUF;

  LUT2 #(
    .INIT(4'h6)) 
    av00_inferred_i_1
       (.I0(ax_IBUF[0]),
        .I1(ax_IBUF[4]),
        .O(av00));
  LUT2 #(
    .INIT(4'h6)) 
    av02_inferred_i_1
       (.I0(av10),
        .I1(av00),
        .O(av02));
  LUT2 #(
    .INIT(4'h6)) 
    av03_inferred_i_1
       (.I0(av42),
        .I1(av02),
        .O(av03));
  LUT2 #(
    .INIT(4'h6)) 
    av11_inferred_i_1
       (.I0(av21),
        .I1(ax_IBUF[3]),
        .O(av11));
  LUT2 #(
    .INIT(4'h6)) 
    av12_inferred_i_1
       (.I0(av02),
        .I1(av11),
        .O(av12));
  LUT2 #(
    .INIT(4'h6)) 
    av20_inferred_i_1
       (.I0(ax_IBUF[3]),
        .I1(ax_IBUF[2]),
        .O(av20));
  LUT2 #(
    .INIT(4'h6)) 
    av22_inferred_i_1
       (.I0(av30),
        .I1(av20),
        .O(av22));
  LUT1 #(
    .INIT(2'h1)) 
    av23_inferred_i_1
       (.I0(av22),
        .O(av23));
  LUT2 #(
    .INIT(4'h6)) 
    av31_inferred_i_1
       (.I0(av41),
        .I1(ax_IBUF[1]),
        .O(av31));
  LUT2 #(
    .INIT(4'h6)) 
    av32_inferred_i_1
       (.I0(av31),
        .I1(av22),
        .O(av32));
  LUT2 #(
    .INIT(4'h6)) 
    av40_inferred_i_1
       (.I0(ax_IBUF[1]),
        .I1(ax_IBUF[0]),
        .O(av40));
  LUT2 #(
    .INIT(4'h6)) 
    av42_inferred_i_1
       (.I0(av01),
        .I1(av40),
        .O(av42));
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
       (.I(av42),
        .O(ay[0]));
  OBUF \ay_OBUF[1]_inst 
       (.I(av32),
        .O(ay[1]));
  OBUF \ay_OBUF[2]_inst 
       (.I(av23),
        .O(ay[2]));
  OBUF \ay_OBUF[3]_inst 
       (.I(av12),
        .O(ay[3]));
  OBUF \ay_OBUF[4]_inst 
       (.I(av03),
        .O(ay[4]));
  LUT2 #(
    .INIT(4'h6)) 
    bv00_inferred_i_1
       (.I0(bx_IBUF[0]),
        .I1(bx_IBUF[4]),
        .O(bv00));
  LUT2 #(
    .INIT(4'h6)) 
    bv02_inferred_i_1
       (.I0(bv10),
        .I1(bv00),
        .O(bv02));
  LUT2 #(
    .INIT(4'h6)) 
    bv03_inferred_i_1
       (.I0(bv42),
        .I1(bv02),
        .O(bv03));
  LUT2 #(
    .INIT(4'h6)) 
    bv11_inferred_i_1
       (.I0(bv21),
        .I1(bx_IBUF[3]),
        .O(bv11));
  LUT2 #(
    .INIT(4'h6)) 
    bv12_inferred_i_1
       (.I0(bv02),
        .I1(bv11),
        .O(bv12));
  LUT2 #(
    .INIT(4'h6)) 
    bv20_inferred_i_1
       (.I0(bx_IBUF[3]),
        .I1(bx_IBUF[2]),
        .O(bv20));
  LUT2 #(
    .INIT(4'h6)) 
    bv22_inferred_i_1
       (.I0(bv30),
        .I1(bv20),
        .O(bv22));
  LUT1 #(
    .INIT(2'h2)) 
    bv22_inst
       (.I0(bv22),
        .O(bv23));
  LUT2 #(
    .INIT(4'h6)) 
    bv31_inferred_i_1
       (.I0(bv41),
        .I1(bx_IBUF[1]),
        .O(bv31));
  LUT2 #(
    .INIT(4'h6)) 
    bv32_inferred_i_1
       (.I0(bv31),
        .I1(bv23),
        .O(bv32));
  LUT2 #(
    .INIT(4'h6)) 
    bv40_inferred_i_1
       (.I0(bx_IBUF[1]),
        .I1(bx_IBUF[0]),
        .O(bv40));
  LUT2 #(
    .INIT(4'h6)) 
    bv42_inferred_i_1
       (.I0(bv01),
        .I1(bv40),
        .O(bv42));
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
       (.I(bv42),
        .O(by[0]));
  OBUF \by_OBUF[1]_inst 
       (.I(bv32),
        .O(by[1]));
  OBUF \by_OBUF[2]_inst 
       (.I(bv23),
        .O(by[2]));
  OBUF \by_OBUF[3]_inst 
       (.I(bv12),
        .O(by[3]));
  OBUF \by_OBUF[4]_inst 
       (.I(bv03),
        .O(by[4]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  dom_and_onebitAttr dm0
       (.ax_IBUF(ax_IBUF[3]),
        .bv01(bv01),
        .bx_IBUF(bx_IBUF[3]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in0(av01),
        .out(av00),
        .rst_IBUF(rst_IBUF),
        .tmpb_reg_0(bv00),
        .z_IBUF(z_IBUF[0]));
  dom_and_onebitAttr_0 dm1
       (.ax_IBUF(ax_IBUF[3]),
        .bv10(bv10),
        .bx_IBUF(bx_IBUF[3]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in0(av10),
        .out(bv20),
        .rst_IBUF(rst_IBUF),
        .tmpb_reg_0(av20),
        .z_IBUF(z_IBUF[1]));
  dom_and_onebitAttr_1 dm2
       (.ax_IBUF(ax_IBUF[1]),
        .bv21(bv21),
        .bx_IBUF(bx_IBUF[1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in0(av21),
        .out(av20),
        .rst_IBUF(rst_IBUF),
        .tmpb_reg_0(bv20),
        .z_IBUF(z_IBUF[2]));
  dom_and_onebitAttr_2 dm3
       (.ax_IBUF(ax_IBUF[1]),
        .bv30(bv30),
        .bx_IBUF(bx_IBUF[1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in0(av30),
        .out(bv40),
        .rst_IBUF(rst_IBUF),
        .tmpb_reg_0(av40),
        .z_IBUF(z_IBUF[3]));
  dom_and_onebitAttr_3 dm4
       (.bv41(bv41),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .in0(av41),
        .out(av40),
        .rst_IBUF(rst_IBUF),
        .tmpa_reg_0(bv00),
        .tmpb_reg_0(av00),
        .tmpb_reg_1(bv40),
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
