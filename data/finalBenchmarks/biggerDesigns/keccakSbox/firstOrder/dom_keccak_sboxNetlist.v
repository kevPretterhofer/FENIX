// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Nov 15 10:53:09 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/biggerDesigns/keccakSbox/firstOrder/BenchmarkProject.v
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
    rst_IBUF,
    clk_IBUF_BUFG,
    ax_IBUF,
    bx_IBUF,
    z_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [2:0]ax_IBUF;
  input [2:0]bx_IBUF;
  input [0:0]z_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
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
  LUT4 #(
    .INIT(16'h2DD2)) 
    \ay_OBUF[0]_inst_i_1 
       (.I0(ax_IBUF[2]),
        .I1(ax_IBUF[1]),
        .I2(tmpa),
        .I3(ax_IBUF[0]),
        .O(ay_OBUF));
  LUT4 #(
    .INIT(16'h8778)) 
    \by_OBUF[0]_inst_i_1 
       (.I0(bx_IBUF[1]),
        .I1(bx_IBUF[2]),
        .I2(tmpb),
        .I3(bx_IBUF[0]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1
       (.I0(z_IBUF),
        .I1(ax_IBUF[1]),
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
        .I1(bx_IBUF[1]),
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
   (ay_OBUF,
    by_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    ax_IBUF,
    bx_IBUF,
    z_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [2:0]ax_IBUF;
  input [2:0]bx_IBUF;
  input [0:0]z_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
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
  LUT4 #(
    .INIT(16'h2DD2)) 
    \ay_OBUF[1]_inst_i_1 
       (.I0(ax_IBUF[2]),
        .I1(ax_IBUF[1]),
        .I2(tmpa),
        .I3(ax_IBUF[0]),
        .O(ay_OBUF));
  LUT4 #(
    .INIT(16'h8778)) 
    \by_OBUF[1]_inst_i_1 
       (.I0(bx_IBUF[1]),
        .I1(bx_IBUF[2]),
        .I2(tmpb),
        .I3(bx_IBUF[0]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__0
       (.I0(z_IBUF),
        .I1(ax_IBUF[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    tmpb_i_1__0
       (.I0(z_IBUF),
        .I1(bx_IBUF[1]),
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
module dom_and_onebit_1
   (ay_OBUF,
    by_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    ax_IBUF,
    bx_IBUF,
    z_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [2:0]ax_IBUF;
  input [2:0]bx_IBUF;
  input [0:0]z_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
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
  LUT4 #(
    .INIT(16'h2DD2)) 
    \ay_OBUF[2]_inst_i_1 
       (.I0(ax_IBUF[2]),
        .I1(ax_IBUF[1]),
        .I2(tmpa),
        .I3(ax_IBUF[0]),
        .O(ay_OBUF));
  LUT4 #(
    .INIT(16'h8778)) 
    \by_OBUF[2]_inst_i_1 
       (.I0(bx_IBUF[1]),
        .I1(bx_IBUF[2]),
        .I2(tmpb),
        .I3(bx_IBUF[0]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__1
       (.I0(z_IBUF),
        .I1(ax_IBUF[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    tmpb_i_1__1
       (.I0(z_IBUF),
        .I1(bx_IBUF[1]),
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
module dom_and_onebit_2
   (ay_OBUF,
    by_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    ax_IBUF,
    bx_IBUF,
    z_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [2:0]ax_IBUF;
  input [2:0]bx_IBUF;
  input [0:0]z_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
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
  LUT4 #(
    .INIT(16'h2DD2)) 
    \ay_OBUF[3]_inst_i_1 
       (.I0(ax_IBUF[0]),
        .I1(ax_IBUF[2]),
        .I2(tmpa),
        .I3(ax_IBUF[1]),
        .O(ay_OBUF));
  LUT4 #(
    .INIT(16'h8778)) 
    \by_OBUF[3]_inst_i_1 
       (.I0(bx_IBUF[2]),
        .I1(bx_IBUF[0]),
        .I2(tmpb),
        .I3(bx_IBUF[1]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__2
       (.I0(z_IBUF),
        .I1(ax_IBUF[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    tmpb_i_1__2
       (.I0(z_IBUF),
        .I1(bx_IBUF[2]),
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
module dom_and_onebit_3
   (ay_OBUF,
    by_OBUF,
    rst_IBUF,
    clk_IBUF_BUFG,
    ax_IBUF,
    bx_IBUF,
    z_IBUF);
  output [0:0]ay_OBUF;
  output [0:0]by_OBUF;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input [2:0]ax_IBUF;
  input [2:0]bx_IBUF;
  input [0:0]z_IBUF;

  wire \<const1> ;
  wire [2:0]ax_IBUF;
  wire [0:0]ay_OBUF;
  wire [2:0]bx_IBUF;
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
  LUT4 #(
    .INIT(16'h2DD2)) 
    \ay_OBUF[4]_inst_i_1 
       (.I0(ax_IBUF[1]),
        .I1(ax_IBUF[0]),
        .I2(tmpa),
        .I3(ax_IBUF[2]),
        .O(ay_OBUF));
  LUT4 #(
    .INIT(16'h8778)) 
    \by_OBUF[4]_inst_i_1 
       (.I0(bx_IBUF[0]),
        .I1(bx_IBUF[1]),
        .I2(tmpb),
        .I3(bx_IBUF[2]),
        .O(by_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    tmpa_i_1__3
       (.I0(z_IBUF),
        .I1(ax_IBUF[0]),
        .I2(bx_IBUF[1]),
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
        .I1(bx_IBUF[0]),
        .I2(ax_IBUF[1]),
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
module dom_keccak_sbox
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
  wire rst;
  wire rst_IBUF;
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
  dom_and_onebit \genblk1[0].dm0 
       (.ax_IBUF(ax_IBUF[2:0]),
        .ay_OBUF(ay_OBUF[0]),
        .bx_IBUF(bx_IBUF[2:0]),
        .by_OBUF(by_OBUF[0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .z_IBUF(z_IBUF[0]));
  dom_and_onebit_0 \genblk1[1].dm0 
       (.ax_IBUF(ax_IBUF[3:1]),
        .ay_OBUF(ay_OBUF[1]),
        .bx_IBUF(bx_IBUF[3:1]),
        .by_OBUF(by_OBUF[1]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .z_IBUF(z_IBUF[1]));
  dom_and_onebit_1 \genblk1[2].dm0 
       (.ax_IBUF(ax_IBUF[4:2]),
        .ay_OBUF(ay_OBUF[2]),
        .bx_IBUF(bx_IBUF[4:2]),
        .by_OBUF(by_OBUF[2]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .z_IBUF(z_IBUF[2]));
  dom_and_onebit_2 \genblk1[3].dm0 
       (.ax_IBUF({ax_IBUF[4:3],ax_IBUF[0]}),
        .ay_OBUF(ay_OBUF[3]),
        .bx_IBUF({bx_IBUF[4:3],bx_IBUF[0]}),
        .by_OBUF(by_OBUF[3]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .z_IBUF(z_IBUF[3]));
  dom_and_onebit_3 \genblk1[4].dm0 
       (.ax_IBUF({ax_IBUF[4],ax_IBUF[1:0]}),
        .ay_OBUF(ay_OBUF[4]),
        .bx_IBUF({bx_IBUF[4],bx_IBUF[1:0]}),
        .by_OBUF(by_OBUF[4]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
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
