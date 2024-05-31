// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Nov 11 15:30:13 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/gadgets/domAnd/thirdOrderOne/domAndNetlist.v
// Design      : dom_and_3rdorder
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module dom_and_3rdorder
   (clk_i,
    rst_i,
    X0_i,
    X1_i,
    X2_i,
    X3_i,
    Y0_i,
    Y1_i,
    Y2_i,
    Y3_i,
    Z0_i,
    Z1_i,
    Z2_i,
    Z3_i,
    Z4_i,
    Z5_i,
    Q0_o,
    Q1_o,
    Q2_o,
    Q3_o);
  input clk_i;
  input rst_i;
  input X0_i;
  input X1_i;
  input X2_i;
  input X3_i;
  input Y0_i;
  input Y1_i;
  input Y2_i;
  input Y3_i;
  input Z0_i;
  input Z1_i;
  input Z2_i;
  input Z3_i;
  input Z4_i;
  input Z5_i;
  output Q0_o;
  output Q1_o;
  output Q2_o;
  output Q3_o;

  wire \<const1> ;
  wire AX_BY_Z0_q;
  wire AX_BY_Z0_q0;
  wire AX_CY_Z1_q;
  wire AX_CY_Z1_q0;
  wire AX_DY_Z3_q;
  wire AX_DY_Z3_q0;
  wire BX_AY_Z0_q;
  wire BX_AY_Z0_q0;
  wire BX_CY_Z2_q;
  wire BX_CY_Z2_q0;
  wire BX_DY_Z4_q;
  wire BX_DY_Z4_q0;
  wire CX_AY_Z1_q;
  wire CX_AY_Z1_q0;
  wire CX_BY_Z2_q;
  wire CX_BY_Z2_q0;
  wire CX_DY_Z5_q;
  wire CX_DY_Z5_q0;
  wire DX_AY_Z3_q;
  wire DX_AY_Z3_q0;
  wire DX_BY_Z4_q;
  wire DX_BY_Z4_q0;
  wire DX_CY_Z5_q;
  wire DX_CY_Z5_q0;
  wire Q0_o;
  wire Q0_o_OBUF;
  wire Q1_o;
  wire Q1_o_OBUF;
  wire Q2_o;
  wire Q2_o_OBUF;
  wire Q3_o;
  wire Q3_o_OBUF;
  wire X0_i;
  wire X0_i_IBUF;
  wire X1_i;
  wire X1_i_IBUF;
  wire X2_i;
  wire X2_i_IBUF;
  wire X3_i;
  wire X3_i_IBUF;
  wire Y0_i;
  wire Y0_i_IBUF;
  wire Y1_i;
  wire Y1_i_IBUF;
  wire Y2_i;
  wire Y2_i_IBUF;
  wire Y3_i;
  wire Y3_i_IBUF;
  wire Z0_i;
  wire Z0_i_IBUF;
  wire Z1_i;
  wire Z1_i_IBUF;
  wire Z2_i;
  wire Z2_i_IBUF;
  wire Z3_i;
  wire Z3_i_IBUF;
  wire Z4_i;
  wire Z4_i_IBUF;
  wire Z5_i;
  wire Z5_i_IBUF;
  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire rst_i;
  wire rst_i_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    AX_BY_Z0_q_i_1
       (.I0(Z0_i_IBUF),
        .I1(Y1_i_IBUF),
        .I2(X0_i_IBUF),
        .O(AX_BY_Z0_q0));
  FDRE #(
    .INIT(1'b0)) 
    AX_BY_Z0_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_BY_Z0_q0),
        .Q(AX_BY_Z0_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    AX_CY_Z1_q_i_1
       (.I0(Z1_i_IBUF),
        .I1(Y2_i_IBUF),
        .I2(X0_i_IBUF),
        .O(AX_CY_Z1_q0));
  FDRE #(
    .INIT(1'b0)) 
    AX_CY_Z1_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_CY_Z1_q0),
        .Q(AX_CY_Z1_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    AX_DY_Z3_q_i_1
       (.I0(Z3_i_IBUF),
        .I1(Y3_i_IBUF),
        .I2(X0_i_IBUF),
        .O(AX_DY_Z3_q0));
  FDRE #(
    .INIT(1'b0)) 
    AX_DY_Z3_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(AX_DY_Z3_q0),
        .Q(AX_DY_Z3_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    BX_AY_Z0_q_i_1
       (.I0(Z0_i_IBUF),
        .I1(Y0_i_IBUF),
        .I2(X1_i_IBUF),
        .O(BX_AY_Z0_q0));
  FDRE #(
    .INIT(1'b0)) 
    BX_AY_Z0_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_AY_Z0_q0),
        .Q(BX_AY_Z0_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    BX_CY_Z2_q_i_1
       (.I0(Z2_i_IBUF),
        .I1(Y2_i_IBUF),
        .I2(X1_i_IBUF),
        .O(BX_CY_Z2_q0));
  FDRE #(
    .INIT(1'b0)) 
    BX_CY_Z2_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_CY_Z2_q0),
        .Q(BX_CY_Z2_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    BX_DY_Z4_q_i_1
       (.I0(Z4_i_IBUF),
        .I1(Y3_i_IBUF),
        .I2(X1_i_IBUF),
        .O(BX_DY_Z4_q0));
  FDRE #(
    .INIT(1'b0)) 
    BX_DY_Z4_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(BX_DY_Z4_q0),
        .Q(BX_DY_Z4_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    CX_AY_Z1_q_i_1
       (.I0(Z1_i_IBUF),
        .I1(Y0_i_IBUF),
        .I2(X2_i_IBUF),
        .O(CX_AY_Z1_q0));
  FDRE #(
    .INIT(1'b0)) 
    CX_AY_Z1_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_AY_Z1_q0),
        .Q(CX_AY_Z1_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    CX_BY_Z2_q_i_1
       (.I0(Z2_i_IBUF),
        .I1(Y1_i_IBUF),
        .I2(X2_i_IBUF),
        .O(CX_BY_Z2_q0));
  FDRE #(
    .INIT(1'b0)) 
    CX_BY_Z2_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_BY_Z2_q0),
        .Q(CX_BY_Z2_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    CX_DY_Z5_q_i_1
       (.I0(Z5_i_IBUF),
        .I1(Y3_i_IBUF),
        .I2(X2_i_IBUF),
        .O(CX_DY_Z5_q0));
  FDRE #(
    .INIT(1'b0)) 
    CX_DY_Z5_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(CX_DY_Z5_q0),
        .Q(CX_DY_Z5_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    DX_AY_Z3_q_i_1
       (.I0(Z3_i_IBUF),
        .I1(Y0_i_IBUF),
        .I2(X3_i_IBUF),
        .O(DX_AY_Z3_q0));
  FDRE #(
    .INIT(1'b0)) 
    DX_AY_Z3_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(DX_AY_Z3_q0),
        .Q(DX_AY_Z3_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    DX_BY_Z4_q_i_1
       (.I0(Z4_i_IBUF),
        .I1(Y1_i_IBUF),
        .I2(X3_i_IBUF),
        .O(DX_BY_Z4_q0));
  FDRE #(
    .INIT(1'b0)) 
    DX_BY_Z4_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(DX_BY_Z4_q0),
        .Q(DX_BY_Z4_q),
        .R(rst_i_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    DX_CY_Z5_q_i_1
       (.I0(Z5_i_IBUF),
        .I1(Y2_i_IBUF),
        .I2(X3_i_IBUF),
        .O(DX_CY_Z5_q0));
  FDRE #(
    .INIT(1'b0)) 
    DX_CY_Z5_q_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(DX_CY_Z5_q0),
        .Q(DX_CY_Z5_q),
        .R(rst_i_IBUF));
  OBUF Q0_o_OBUF_inst
       (.I(Q0_o_OBUF),
        .O(Q0_o));
  LUT5 #(
    .INIT(32'h69969696)) 
    Q0_o_OBUF_inst_i_1
       (.I0(AX_DY_Z3_q),
        .I1(AX_CY_Z1_q),
        .I2(AX_BY_Z0_q),
        .I3(X0_i_IBUF),
        .I4(Y0_i_IBUF),
        .O(Q0_o_OBUF));
  OBUF Q1_o_OBUF_inst
       (.I(Q1_o_OBUF),
        .O(Q1_o));
  LUT5 #(
    .INIT(32'h69969696)) 
    Q1_o_OBUF_inst_i_1
       (.I0(BX_DY_Z4_q),
        .I1(BX_CY_Z2_q),
        .I2(BX_AY_Z0_q),
        .I3(X1_i_IBUF),
        .I4(Y1_i_IBUF),
        .O(Q1_o_OBUF));
  OBUF Q2_o_OBUF_inst
       (.I(Q2_o_OBUF),
        .O(Q2_o));
  LUT5 #(
    .INIT(32'h69969696)) 
    Q2_o_OBUF_inst_i_1
       (.I0(CX_DY_Z5_q),
        .I1(CX_BY_Z2_q),
        .I2(CX_AY_Z1_q),
        .I3(X2_i_IBUF),
        .I4(Y2_i_IBUF),
        .O(Q2_o_OBUF));
  OBUF Q3_o_OBUF_inst
       (.I(Q3_o_OBUF),
        .O(Q3_o));
  LUT5 #(
    .INIT(32'h69969696)) 
    Q3_o_OBUF_inst_i_1
       (.I0(DX_CY_Z5_q),
        .I1(DX_BY_Z4_q),
        .I2(DX_AY_Z3_q),
        .I3(X3_i_IBUF),
        .I4(Y3_i_IBUF),
        .O(Q3_o_OBUF));
  VCC VCC
       (.P(\<const1> ));
  IBUF X0_i_IBUF_inst
       (.I(X0_i),
        .O(X0_i_IBUF));
  IBUF X1_i_IBUF_inst
       (.I(X1_i),
        .O(X1_i_IBUF));
  IBUF X2_i_IBUF_inst
       (.I(X2_i),
        .O(X2_i_IBUF));
  IBUF X3_i_IBUF_inst
       (.I(X3_i),
        .O(X3_i_IBUF));
  IBUF Y0_i_IBUF_inst
       (.I(Y0_i),
        .O(Y0_i_IBUF));
  IBUF Y1_i_IBUF_inst
       (.I(Y1_i),
        .O(Y1_i_IBUF));
  IBUF Y2_i_IBUF_inst
       (.I(Y2_i),
        .O(Y2_i_IBUF));
  IBUF Y3_i_IBUF_inst
       (.I(Y3_i),
        .O(Y3_i_IBUF));
  IBUF Z0_i_IBUF_inst
       (.I(Z0_i),
        .O(Z0_i_IBUF));
  IBUF Z1_i_IBUF_inst
       (.I(Z1_i),
        .O(Z1_i_IBUF));
  IBUF Z2_i_IBUF_inst
       (.I(Z2_i),
        .O(Z2_i_IBUF));
  IBUF Z3_i_IBUF_inst
       (.I(Z3_i),
        .O(Z3_i_IBUF));
  IBUF Z4_i_IBUF_inst
       (.I(Z4_i),
        .O(Z4_i_IBUF));
  IBUF Z5_i_IBUF_inst
       (.I(Z5_i),
        .O(Z5_i_IBUF));
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
