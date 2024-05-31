// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Nov 15 19:32:15 2022
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
    rav00,
    bx_IBUF,
    ax_IBUF,
    p_20_in,
    rbv00,
    p_9_in);
  output [1:0]ay_OBUF;
  output [1:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input rav00;
  input [2:0]bx_IBUF;
  input [2:0]ax_IBUF;
  input p_20_in;
  input rbv00;
  input p_9_in;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire [1:0]ay_OBUF;
  wire [2:0]bx_IBUF;
  wire [1:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire p_20_in;
  wire p_9_in;
  wire rav00;
  wire rbv00;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \ay_OBUF[0]_inst_i_1 
       (.I0(ax_IBUF[2]),
        .I1(rav00),
        .I2(tmpa),
        .I3(ax_IBUF[0]),
        .I4(ax_IBUF[1]),
        .O(ay_OBUF[0]));
  LUT6 #(
    .INIT(64'h6996696996699696)) 
    \ay_OBUF[4]_inst_i_1 
       (.I0(ax_IBUF[1]),
        .I1(ax_IBUF[0]),
        .I2(tmpa),
        .I3(rav00),
        .I4(ax_IBUF[2]),
        .I5(p_20_in),
        .O(ay_OBUF[1]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \by_OBUF[0]_inst_i_1 
       (.I0(rbv00),
        .I1(bx_IBUF[2]),
        .I2(tmpb),
        .I3(bx_IBUF[0]),
        .I4(bx_IBUF[1]),
        .O(by_OBUF[0]));
  LUT6 #(
    .INIT(64'h9669696969969696)) 
    \by_OBUF[4]_inst_i_1 
       (.I0(bx_IBUF[1]),
        .I1(bx_IBUF[0]),
        .I2(tmpb),
        .I3(bx_IBUF[2]),
        .I4(rbv00),
        .I5(p_9_in),
        .O(by_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1
       (.I0(z_IBUF),
        .I1(rav00),
        .I2(bx_IBUF[2]),
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
        .I1(rbv00),
        .I2(ax_IBUF[2]),
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
module dom_and_onebit_0
   (p_20_in,
    p_9_in,
    rst_IBUF,
    clk_IBUF_BUFG,
    z_IBUF,
    ax_IBUF,
    rbv20,
    rav20,
    bx_IBUF);
  output p_20_in;
  output p_9_in;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input [2:0]ax_IBUF;
  input rbv20;
  input rav20;
  input [2:0]bx_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire [2:0]bx_IBUF;
  wire clk_IBUF_BUFG;
  wire p_20_in;
  wire p_9_in;
  wire rav20;
  wire rbv20;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \ay_OBUF[4]_inst_i_2 
       (.I0(rav20),
        .I1(ax_IBUF[1]),
        .I2(tmpa),
        .I3(ax_IBUF[2]),
        .I4(ax_IBUF[0]),
        .O(p_20_in));
  LUT5 #(
    .INIT(32'h78878778)) 
    \by_OBUF[4]_inst_i_2 
       (.I0(bx_IBUF[1]),
        .I1(rbv20),
        .I2(tmpb),
        .I3(bx_IBUF[2]),
        .I4(bx_IBUF[0]),
        .O(p_9_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__0
       (.I0(z_IBUF),
        .I1(ax_IBUF[1]),
        .I2(rbv20),
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
        .I1(bx_IBUF[1]),
        .I2(rav20),
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
    rav20,
    p_20_in,
    rbv20,
    bx_IBUF,
    p_9_in,
    z_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [1:0]ax_IBUF;
  input rav20;
  input p_20_in;
  input rbv20;
  input [1:0]bx_IBUF;
  input p_9_in;
  input [0:0]z_IBUF;

  wire \<const1> ;
  wire [1:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire [1:0]bx_IBUF;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire p_20_in;
  wire p_9_in;
  wire rav20;
  wire rbv20;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \ay_OBUF[3]_inst_i_1 
       (.I0(ax_IBUF[0]),
        .I1(rav20),
        .I2(tmpa),
        .I3(ax_IBUF[1]),
        .I4(p_20_in),
        .O(ay_OBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \by_OBUF[3]_inst_i_1 
       (.I0(rbv20),
        .I1(bx_IBUF[0]),
        .I2(tmpb),
        .I3(bx_IBUF[1]),
        .I4(p_9_in),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__1
       (.I0(z_IBUF),
        .I1(rav20),
        .I2(bx_IBUF[0]),
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
        .I1(rbv20),
        .I2(ax_IBUF[0]),
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
module dom_and_onebit_2
   (ay_OBUF,
    p_17_in,
    by_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    z_IBUF,
    ax_IBUF,
    rbv40,
    rav40,
    bx_IBUF);
  output [0:0]ay_OBUF;
  output p_17_in;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [0:0]z_IBUF;
  input [2:0]ax_IBUF;
  input rbv40;
  input rav40;
  input [2:0]bx_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire p_17_in;
  wire rav40;
  wire rbv40;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \ay_OBUF[1]_inst_i_2 
       (.I0(rav40),
        .I1(ax_IBUF[0]),
        .I2(tmpa),
        .I3(ax_IBUF[1]),
        .I4(ax_IBUF[2]),
        .O(p_17_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    \ay_OBUF[2]_inst_i_1 
       (.I0(ax_IBUF[2]),
        .I1(ax_IBUF[1]),
        .I2(tmpa),
        .I3(ax_IBUF[0]),
        .I4(rav40),
        .O(ay_OBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \by_OBUF[2]_inst_i_1 
       (.I0(bx_IBUF[0]),
        .I1(rbv40),
        .I2(tmpb),
        .I3(bx_IBUF[1]),
        .I4(bx_IBUF[2]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__2
       (.I0(z_IBUF),
        .I1(ax_IBUF[0]),
        .I2(rbv40),
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
    tmpb_i_1__2
       (.I0(z_IBUF),
        .I1(bx_IBUF[0]),
        .I2(rav40),
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
    rav00,
    rav40,
    p_17_in,
    ax_IBUF,
    rbv40,
    rbv00,
    \by[1] ,
    bx_IBUF,
    z_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input rav00;
  input rav40;
  input p_17_in;
  input [0:0]ax_IBUF;
  input rbv40;
  input rbv00;
  input [0:0]\by[1] ;
  input [0:0]bx_IBUF;
  input [0:0]z_IBUF;

  wire \<const1> ;
  wire [0:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire [0:0]bx_IBUF;
  wire [0:0]\by[1] ;
  wire [0:0]by_OBUF;
  wire clk_IBUF_BUFG;
  wire p_17_in;
  wire rav00;
  wire rav40;
  wire rbv00;
  wire rbv40;
  wire rst_IBUF;
  wire tmpa;
  wire tmpa0;
  wire tmpb;
  wire tmpb0;
  wire [0:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hD22D2DD2)) 
    \ay_OBUF[1]_inst_i_1 
       (.I0(rav00),
        .I1(rav40),
        .I2(tmpa),
        .I3(p_17_in),
        .I4(ax_IBUF),
        .O(ay_OBUF));
  LUT5 #(
    .INIT(32'h78878778)) 
    \by_OBUF[1]_inst_i_1 
       (.I0(rbv40),
        .I1(rbv00),
        .I2(tmpb),
        .I3(\by[1] ),
        .I4(bx_IBUF),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__3
       (.I0(z_IBUF),
        .I1(rav40),
        .I2(rbv00),
        .O(tmpa0));
  FDRE #(
    .INIT(1'b0)) 
    tmpa_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(tmpa0),
        .Q(tmpa),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    tmpb_i_1__3
       (.I0(z_IBUF),
        .I1(rbv40),
        .I2(rav00),
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

  wire \<const1> ;
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
  wire p_0_in1_in;
  wire p_12_in;
  wire p_14_in;
  wire p_16_in;
  wire p_17_in;
  wire p_20_in;
  wire p_3_in;
  wire p_5_in;
  wire p_9_in;
  wire rav00;
  wire rav20;
  wire rav40;
  wire rbv00;
  wire rbv20;
  wire rbv40;
  wire rst;
  wire rst_IBUF;
  wire [4:0]z;
  wire [4:0]z_IBUF;

  VCC VCC
       (.P(\<const1> ));
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
  dom_and_onebit dm0
       (.ax_IBUF({ax_IBUF[3],ax_IBUF[1:0]}),
        .ay_OBUF({ay_OBUF[4],ay_OBUF[0]}),
        .bx_IBUF({bx_IBUF[3],bx_IBUF[1:0]}),
        .by_OBUF({by_OBUF[4],by_OBUF[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_20_in(p_20_in),
        .p_9_in(p_9_in),
        .rav00(rav00),
        .rbv00(rbv00),
        .rst_IBUF(rst_IBUF),
        .z_IBUF(z_IBUF[0]));
  dom_and_onebit_0 dm1
       (.ax_IBUF({ax_IBUF[4:3],ax_IBUF[0]}),
        .bx_IBUF({bx_IBUF[4:3],bx_IBUF[0]}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_20_in(p_20_in),
        .p_9_in(p_9_in),
        .rav20(rav20),
        .rbv20(rbv20),
        .rst_IBUF(rst_IBUF),
        .z_IBUF(z_IBUF[1]));
  dom_and_onebit_1 dm2
       (.ax_IBUF({ax_IBUF[3],ax_IBUF[1]}),
        .ay_OBUF(ay_OBUF[3]),
        .bx_IBUF({bx_IBUF[3],bx_IBUF[1]}),
        .by_OBUF(by_OBUF[3]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_20_in(p_20_in),
        .p_9_in(p_9_in),
        .rav20(rav20),
        .rbv20(rbv20),
        .rst_IBUF(rst_IBUF),
        .z_IBUF(z_IBUF[2]));
  dom_and_onebit_2 dm3
       (.ax_IBUF(ax_IBUF[3:1]),
        .ay_OBUF(ay_OBUF[2]),
        .bx_IBUF(bx_IBUF[3:1]),
        .by_OBUF(by_OBUF[2]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_17_in(p_17_in),
        .rav40(rav40),
        .rbv40(rbv40),
        .rst_IBUF(rst_IBUF),
        .z_IBUF(z_IBUF[3]));
  dom_and_onebit_3 dm4
       (.ax_IBUF(ax_IBUF[1]),
        .ay_OBUF(ay_OBUF[1]),
        .bx_IBUF(bx_IBUF[1]),
        .\by[1] (by_OBUF[2]),
        .by_OBUF(by_OBUF[1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_17_in(p_17_in),
        .rav00(rav00),
        .rav40(rav40),
        .rbv00(rbv00),
        .rbv40(rbv40),
        .rst_IBUF(rst_IBUF),
        .z_IBUF(z_IBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    rav00_i_1
       (.I0(ax_IBUF[0]),
        .I1(ax_IBUF[4]),
        .O(p_16_in));
  FDRE #(
    .INIT(1'b0)) 
    rav00_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_16_in),
        .Q(rav00),
        .R(rst_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    rav20_i_1
       (.I0(ax_IBUF[3]),
        .I1(ax_IBUF[2]),
        .O(p_12_in));
  FDRE #(
    .INIT(1'b0)) 
    rav20_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_12_in),
        .Q(rav20),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    rav40_i_1
       (.I0(ax_IBUF[1]),
        .I1(ax_IBUF[0]),
        .O(p_14_in));
  FDRE #(
    .INIT(1'b0)) 
    rav40_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_14_in),
        .Q(rav40),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    rbv00_i_1
       (.I0(bx_IBUF[0]),
        .I1(bx_IBUF[4]),
        .O(p_5_in));
  FDRE #(
    .INIT(1'b0)) 
    rbv00_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_5_in),
        .Q(rbv00),
        .R(rst_IBUF));
  LUT2 #(
    .INIT(4'h6)) 
    rbv20_i_1
       (.I0(bx_IBUF[3]),
        .I1(bx_IBUF[2]),
        .O(p_0_in1_in));
  FDRE #(
    .INIT(1'b0)) 
    rbv20_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_in1_in),
        .Q(rbv20),
        .R(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    rbv40_i_1
       (.I0(bx_IBUF[1]),
        .I1(bx_IBUF[0]),
        .O(p_3_in));
  FDRE #(
    .INIT(1'b0)) 
    rbv40_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_3_in),
        .Q(rbv40),
        .R(rst_IBUF));
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
