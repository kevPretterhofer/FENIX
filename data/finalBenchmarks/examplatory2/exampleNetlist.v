// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Dec 16 20:07:45 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/examplatory2/exampleNetlist.v
// Design      : example
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module example
   (clk_i,
    rst_i,
    s1,
    s2,
    r,
    o);
  input clk_i;
  input rst_i;
  input s1;
  input s2;
  input r;
  output o;

  wire \<const1> ;
  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire flip1;
  wire flip2;
  wire flip3;
  wire flip4;
  wire o;
  wire o_OBUF;
  wire r;
  wire r_IBUF;
  wire rst_i;
  wire rst_i_IBUF;
  wire s1;
  wire s1_IBUF;
  wire s2;
  wire s2_IBUF;

  VCC VCC
       (.P(\<const1> ));
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    flip1_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(s1_IBUF),
        .Q(flip1),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    flip2_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(s2_IBUF),
        .Q(flip2),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    flip3_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(r_IBUF),
        .Q(flip3),
        .R(rst_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    flip4_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(flip1),
        .Q(flip4),
        .R(rst_i_IBUF));
  OBUF o_OBUF_inst
       (.I(o_OBUF),
        .O(o));
  LUT3 #(
    .INIT(8'h96)) 
    o_OBUF_inst_i_1
       (.I0(flip2),
        .I1(flip4),
        .I2(flip3),
        .O(o_OBUF));
  IBUF r_IBUF_inst
       (.I(r),
        .O(r_IBUF));
  IBUF rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
  IBUF s1_IBUF_inst
       (.I(s1),
        .O(s1_IBUF));
  IBUF s2_IBUF_inst
       (.I(s2),
        .O(s2_IBUF));
endmodule
