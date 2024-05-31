// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Tue Nov 15 13:25:39 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/biggerDesigns/aesSbox/firstOrder/domAesSboxNetlist.v
// Design      : aes_sbox_dom
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module aes_dom_dep_mul_gf2pn
   (\data_i[7] ,
    D,
    \mask0_i[7] ,
    \mask0_i[7]_0 ,
    \prd_i[9] ,
    a_gamma,
    \axz0_z1_q_reg[1]_0 ,
    \prd_i[11] ,
    \prd_i[9]_0 ,
    b_gamma,
    \bxz0_z1_q_reg[1]_0 ,
    \prd_i[11]_0 ,
    prd_i_IBUF,
    data_i_IBUF,
    mask0_i_IBUF,
    Q,
    \a_gamma1_q_reg[1] ,
    \a_gamma1_q_reg[0] ,
    \b_gamma1_q_reg[1] ,
    \b_gamma1_q_reg[1]_0 ,
    \b_gamma1_q_reg[0] ,
    CLK,
    \axz0_z1_q_reg[0]_0 );
  output \data_i[7] ;
  output [2:0]D;
  output \mask0_i[7] ;
  output [2:0]\mask0_i[7]_0 ;
  output [1:0]\prd_i[9] ;
  output [3:0]a_gamma;
  output [1:0]\axz0_z1_q_reg[1]_0 ;
  output [1:0]\prd_i[11] ;
  output [1:0]\prd_i[9]_0 ;
  output [3:0]b_gamma;
  output [1:0]\bxz0_z1_q_reg[1]_0 ;
  output [1:0]\prd_i[11]_0 ;
  input [11:0]prd_i_IBUF;
  input [7:0]data_i_IBUF;
  input [7:0]mask0_i_IBUF;
  input [3:0]Q;
  input [3:0]\a_gamma1_q_reg[1] ;
  input [3:0]\a_gamma1_q_reg[0] ;
  input [3:0]\b_gamma1_q_reg[1] ;
  input [3:0]\b_gamma1_q_reg[1]_0 ;
  input [3:0]\b_gamma1_q_reg[0] ;
  input CLK;
  input \axz0_z1_q_reg[0]_0 ;

  wire \<const1> ;
  wire CLK;
  wire [2:0]D;
  wire [3:0]Q;
  wire [3:0]a_gamma;
  wire \a_gamma0_q[0]_i_2_n_0 ;
  wire \a_gamma1_q[0]_i_3_n_0 ;
  wire \a_gamma1_q[1]_i_6_n_0 ;
  wire [3:0]\a_gamma1_q_reg[0] ;
  wire [3:0]\a_gamma1_q_reg[1] ;
  wire [3:0]a_yz0_d;
  wire [3:0]a_yz0_q;
  wire aes_mul_gf2p20_return114_out;
  wire aes_mul_gf2p20_return11_out;
  wire aes_mul_gf2p20_return122_out;
  wire aes_mul_gf2p20_return138_out;
  wire [1:0]aes_scale_omega2_gf2p20_return;
  wire [1:0]aes_scale_omega2_gf2p20_return10_in;
  wire [1:0]aes_scale_omega2_gf2p2_return;
  wire [1:0]aes_scale_omega2_gf2p2_return21_in;
  wire [3:0]axz0_z1_d;
  wire [3:0]axz0_z1_q;
  wire \axz0_z1_q[3]_i_4_n_0 ;
  wire \axz0_z1_q_reg[0]_0 ;
  wire [1:0]\axz0_z1_q_reg[1]_0 ;
  wire [3:0]b_gamma;
  wire \b_gamma0_q[0]_i_2_n_0 ;
  wire \b_gamma1_q[0]_i_3_n_0 ;
  wire \b_gamma1_q[1]_i_6_n_0 ;
  wire [3:0]\b_gamma1_q_reg[0] ;
  wire [3:0]\b_gamma1_q_reg[1] ;
  wire [3:0]\b_gamma1_q_reg[1]_0 ;
  wire [3:0]b_yz0_d;
  wire [3:0]b_yz0_q;
  wire [3:0]bxz0_z1_d;
  wire [3:0]bxz0_z1_q;
  wire \bxz0_z1_q[3]_i_4_n_0 ;
  wire [1:0]\bxz0_z1_q_reg[1]_0 ;
  wire \data_i[7] ;
  wire [7:0]data_i_IBUF;
  wire \mask0_i[7] ;
  wire [2:0]\mask0_i[7]_0 ;
  wire [7:0]mask0_i_IBUF;
  wire p_0_in;
  wire p_0_in15_in;
  wire p_0_in23_in;
  wire p_0_in30_in;
  wire p_0_in39_in;
  wire p_0_in7_in;
  wire p_1_in52_in;
  wire p_1_in69_in;
  wire [1:0]\prd_i[11] ;
  wire [1:0]\prd_i[11]_0 ;
  wire [1:0]\prd_i[9] ;
  wire [1:0]\prd_i[9]_0 ;
  wire [11:0]prd_i_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \a_gamma0_q[0]_i_1 
       (.I0(axz0_z1_q[0]),
        .I1(aes_scale_omega2_gf2p20_return10_in[0]),
        .I2(Q[0]),
        .I3(\a_gamma0_q[0]_i_2_n_0 ),
        .I4(aes_mul_gf2p20_return122_out),
        .I5(\a_gamma1_q_reg[1] [0]),
        .O(a_gamma[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_gamma0_q[0]_i_2 
       (.I0(b_yz0_q[0]),
        .I1(\a_gamma1_q_reg[0] [0]),
        .O(\a_gamma0_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \a_gamma0_q[1]_i_1 
       (.I0(axz0_z1_q[1]),
        .I1(aes_scale_omega2_gf2p20_return10_in[1]),
        .I2(Q[1]),
        .I3(p_0_in23_in),
        .I4(aes_mul_gf2p20_return122_out),
        .I5(\a_gamma1_q_reg[1] [1]),
        .O(a_gamma[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_gamma0_q[1]_i_2 
       (.I0(b_yz0_q[1]),
        .I1(\a_gamma1_q_reg[0] [1]),
        .O(p_0_in23_in));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \a_gamma0_q[1]_i_3 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(b_yz0_q[0]),
        .I3(\a_gamma1_q_reg[0] [0]),
        .I4(b_yz0_q[1]),
        .I5(\a_gamma1_q_reg[0] [1]),
        .O(aes_mul_gf2p20_return122_out));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \a_gamma1_q[0]_i_1 
       (.I0(axz0_z1_q[2]),
        .I1(aes_scale_omega2_gf2p20_return10_in[0]),
        .I2(Q[2]),
        .I3(\a_gamma1_q[0]_i_3_n_0 ),
        .I4(aes_mul_gf2p20_return138_out),
        .I5(\a_gamma1_q_reg[1] [2]),
        .O(a_gamma[2]));
  LUT6 #(
    .INIT(64'h609F9F6060606060)) 
    \a_gamma1_q[0]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(p_0_in30_in),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(\a_gamma1_q[1]_i_6_n_0 ),
        .O(aes_scale_omega2_gf2p20_return10_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \a_gamma1_q[0]_i_3 
       (.I0(b_yz0_q[2]),
        .I1(\a_gamma1_q_reg[0] [2]),
        .O(\a_gamma1_q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \a_gamma1_q[1]_i_1 
       (.I0(axz0_z1_q[3]),
        .I1(aes_scale_omega2_gf2p20_return10_in[1]),
        .I2(Q[3]),
        .I3(p_0_in39_in),
        .I4(aes_mul_gf2p20_return138_out),
        .I5(\a_gamma1_q_reg[1] [3]),
        .O(a_gamma[3]));
  LUT6 #(
    .INIT(64'h1428BE82BE821428)) 
    \a_gamma1_q[1]_i_2 
       (.I0(p_0_in30_in),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\a_gamma1_q[1]_i_6_n_0 ),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(aes_scale_omega2_gf2p20_return10_in[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \a_gamma1_q[1]_i_3 
       (.I0(b_yz0_q[3]),
        .I1(\a_gamma1_q_reg[0] [3]),
        .O(p_0_in39_in));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \a_gamma1_q[1]_i_4 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(b_yz0_q[2]),
        .I3(\a_gamma1_q_reg[0] [2]),
        .I4(b_yz0_q[3]),
        .I5(\a_gamma1_q_reg[0] [3]),
        .O(aes_mul_gf2p20_return138_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_gamma1_q[1]_i_5 
       (.I0(\a_gamma1_q_reg[0] [1]),
        .I1(b_yz0_q[1]),
        .I2(\a_gamma1_q_reg[0] [3]),
        .I3(b_yz0_q[3]),
        .O(p_0_in30_in));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_gamma1_q[1]_i_6 
       (.I0(\a_gamma1_q_reg[0] [0]),
        .I1(b_yz0_q[0]),
        .I2(\a_gamma1_q_reg[0] [2]),
        .I3(b_yz0_q[2]),
        .O(\a_gamma1_q[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_gamma_ss_q[0]_i_1 
       (.I0(a_gamma[3]),
        .I1(a_gamma[1]),
        .I2(a_gamma[2]),
        .I3(a_gamma[0]),
        .O(\axz0_z1_q_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_gamma_ss_q[1]_i_1 
       (.I0(a_gamma[1]),
        .I1(a_gamma[3]),
        .O(\axz0_z1_q_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_y1_qqq[0]_i_1 
       (.I0(data_i_IBUF[7]),
        .I1(data_i_IBUF[0]),
        .I2(data_i_IBUF[6]),
        .I3(data_i_IBUF[5]),
        .O(\data_i[7] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_y1_qqq[1]_i_1 
       (.I0(data_i_IBUF[6]),
        .I1(data_i_IBUF[0]),
        .I2(data_i_IBUF[1]),
        .I3(data_i_IBUF[5]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_y1_qqq[2]_i_1 
       (.I0(data_i_IBUF[4]),
        .I1(data_i_IBUF[0]),
        .I2(data_i_IBUF[6]),
        .I3(data_i_IBUF[5]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \a_y1_qqq[3]_i_1 
       (.I0(data_i_IBUF[7]),
        .I1(data_i_IBUF[6]),
        .I2(data_i_IBUF[0]),
        .I3(data_i_IBUF[1]),
        .I4(data_i_IBUF[5]),
        .I5(data_i_IBUF[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \a_yz0_q[0]_i_1 
       (.I0(prd_i_IBUF[0]),
        .I1(data_i_IBUF[3]),
        .I2(data_i_IBUF[6]),
        .I3(data_i_IBUF[0]),
        .I4(data_i_IBUF[1]),
        .I5(data_i_IBUF[2]),
        .O(a_yz0_d[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[0]_i_1__0 
       (.I0(prd_i_IBUF[8]),
        .I1(a_gamma[0]),
        .O(\prd_i[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_yz0_q[1]_i_1 
       (.I0(prd_i_IBUF[1]),
        .I1(data_i_IBUF[0]),
        .I2(data_i_IBUF[6]),
        .I3(data_i_IBUF[5]),
        .O(a_yz0_d[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[1]_i_1__0 
       (.I0(prd_i_IBUF[9]),
        .I1(a_gamma[1]),
        .O(\prd_i[9] [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[2]_i_1 
       (.I0(prd_i_IBUF[2]),
        .I1(data_i_IBUF[0]),
        .O(a_yz0_d[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \a_yz0_q[3]_i_1 
       (.I0(prd_i_IBUF[3]),
        .I1(data_i_IBUF[1]),
        .I2(data_i_IBUF[7]),
        .I3(data_i_IBUF[3]),
        .I4(data_i_IBUF[4]),
        .I5(data_i_IBUF[0]),
        .O(a_yz0_d[3]));
  FDCE #(
    .INIT(1'b0)) 
    \a_yz0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(a_yz0_d[0]),
        .Q(a_yz0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_yz0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(a_yz0_d[1]),
        .Q(a_yz0_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_yz0_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(a_yz0_d[2]),
        .Q(a_yz0_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \a_yz0_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(a_yz0_d[3]),
        .Q(a_yz0_q[3]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \axz0_z1_q[0]_i_1 
       (.I0(prd_i_IBUF[4]),
        .I1(prd_i_IBUF[1]),
        .I2(D[0]),
        .I3(prd_i_IBUF[0]),
        .I4(\data_i[7] ),
        .I5(aes_scale_omega2_gf2p2_return21_in[0]),
        .O(axz0_z1_d[0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[0]_i_1__0 
       (.I0(prd_i_IBUF[10]),
        .I1(a_gamma[2]),
        .I2(prd_i_IBUF[8]),
        .I3(a_gamma[3]),
        .I4(prd_i_IBUF[9]),
        .O(\prd_i[11] [0]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \axz0_z1_q[1]_i_1 
       (.I0(prd_i_IBUF[5]),
        .I1(prd_i_IBUF[0]),
        .I2(\data_i[7] ),
        .I3(prd_i_IBUF[1]),
        .I4(D[0]),
        .I5(aes_scale_omega2_gf2p2_return21_in[1]),
        .O(axz0_z1_d[1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[1]_i_1__0 
       (.I0(prd_i_IBUF[11]),
        .I1(a_gamma[3]),
        .I2(prd_i_IBUF[9]),
        .I3(a_gamma[2]),
        .I4(prd_i_IBUF[8]),
        .O(\prd_i[11] [1]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \axz0_z1_q[2]_i_1 
       (.I0(prd_i_IBUF[6]),
        .I1(prd_i_IBUF[3]),
        .I2(D[2]),
        .I3(prd_i_IBUF[2]),
        .I4(D[1]),
        .I5(aes_scale_omega2_gf2p2_return21_in[0]),
        .O(axz0_z1_d[2]));
  LUT6 #(
    .INIT(64'h2828D728D7282828)) 
    \axz0_z1_q[2]_i_2 
       (.I0(p_1_in69_in),
        .I1(prd_i_IBUF[3]),
        .I2(prd_i_IBUF[1]),
        .I3(\axz0_z1_q[3]_i_4_n_0 ),
        .I4(prd_i_IBUF[0]),
        .I5(prd_i_IBUF[2]),
        .O(aes_scale_omega2_gf2p2_return21_in[0]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \axz0_z1_q[3]_i_1 
       (.I0(prd_i_IBUF[7]),
        .I1(prd_i_IBUF[2]),
        .I2(D[1]),
        .I3(prd_i_IBUF[3]),
        .I4(D[2]),
        .I5(aes_scale_omega2_gf2p2_return21_in[1]),
        .O(axz0_z1_d[3]));
  LUT6 #(
    .INIT(64'h06F6F60660909060)) 
    \axz0_z1_q[3]_i_2 
       (.I0(prd_i_IBUF[3]),
        .I1(prd_i_IBUF[1]),
        .I2(p_1_in69_in),
        .I3(prd_i_IBUF[0]),
        .I4(prd_i_IBUF[2]),
        .I5(\axz0_z1_q[3]_i_4_n_0 ),
        .O(aes_scale_omega2_gf2p2_return21_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axz0_z1_q[3]_i_3 
       (.I0(data_i_IBUF[2]),
        .I1(data_i_IBUF[7]),
        .O(p_1_in69_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axz0_z1_q[3]_i_4 
       (.I0(data_i_IBUF[7]),
        .I1(data_i_IBUF[4]),
        .O(\axz0_z1_q[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \axz0_z1_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(axz0_z1_d[0]),
        .Q(axz0_z1_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \axz0_z1_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(axz0_z1_d[1]),
        .Q(axz0_z1_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \axz0_z1_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(axz0_z1_d[2]),
        .Q(axz0_z1_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \axz0_z1_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(axz0_z1_d[3]),
        .Q(axz0_z1_q[3]));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \b_gamma0_q[0]_i_1 
       (.I0(bxz0_z1_q[0]),
        .I1(aes_scale_omega2_gf2p20_return[0]),
        .I2(\b_gamma1_q_reg[1] [0]),
        .I3(\b_gamma0_q[0]_i_2_n_0 ),
        .I4(aes_mul_gf2p20_return11_out),
        .I5(\b_gamma1_q_reg[1]_0 [0]),
        .O(b_gamma[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_gamma0_q[0]_i_2 
       (.I0(a_yz0_q[0]),
        .I1(\b_gamma1_q_reg[0] [0]),
        .O(\b_gamma0_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \b_gamma0_q[1]_i_1 
       (.I0(bxz0_z1_q[1]),
        .I1(aes_scale_omega2_gf2p20_return[1]),
        .I2(\b_gamma1_q_reg[1] [1]),
        .I3(p_0_in),
        .I4(aes_mul_gf2p20_return11_out),
        .I5(\b_gamma1_q_reg[1]_0 [1]),
        .O(b_gamma[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_gamma0_q[1]_i_2 
       (.I0(a_yz0_q[1]),
        .I1(\b_gamma1_q_reg[0] [1]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \b_gamma0_q[1]_i_3 
       (.I0(\b_gamma1_q_reg[1] [0]),
        .I1(\b_gamma1_q_reg[1] [1]),
        .I2(a_yz0_q[0]),
        .I3(\b_gamma1_q_reg[0] [0]),
        .I4(a_yz0_q[1]),
        .I5(\b_gamma1_q_reg[0] [1]),
        .O(aes_mul_gf2p20_return11_out));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \b_gamma1_q[0]_i_1 
       (.I0(bxz0_z1_q[2]),
        .I1(aes_scale_omega2_gf2p20_return[0]),
        .I2(\b_gamma1_q_reg[1] [2]),
        .I3(\b_gamma1_q[0]_i_3_n_0 ),
        .I4(aes_mul_gf2p20_return114_out),
        .I5(\b_gamma1_q_reg[1]_0 [2]),
        .O(b_gamma[2]));
  LUT6 #(
    .INIT(64'h609F9F6060606060)) 
    \b_gamma1_q[0]_i_2 
       (.I0(\b_gamma1_q_reg[1] [3]),
        .I1(\b_gamma1_q_reg[1] [1]),
        .I2(p_0_in7_in),
        .I3(\b_gamma1_q_reg[1] [0]),
        .I4(\b_gamma1_q_reg[1] [2]),
        .I5(\b_gamma1_q[1]_i_6_n_0 ),
        .O(aes_scale_omega2_gf2p20_return[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \b_gamma1_q[0]_i_3 
       (.I0(a_yz0_q[2]),
        .I1(\b_gamma1_q_reg[0] [2]),
        .O(\b_gamma1_q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \b_gamma1_q[1]_i_1 
       (.I0(bxz0_z1_q[3]),
        .I1(aes_scale_omega2_gf2p20_return[1]),
        .I2(\b_gamma1_q_reg[1] [3]),
        .I3(p_0_in15_in),
        .I4(aes_mul_gf2p20_return114_out),
        .I5(\b_gamma1_q_reg[1]_0 [3]),
        .O(b_gamma[3]));
  LUT6 #(
    .INIT(64'h1428BE82BE821428)) 
    \b_gamma1_q[1]_i_2 
       (.I0(p_0_in7_in),
        .I1(\b_gamma1_q_reg[1] [3]),
        .I2(\b_gamma1_q_reg[1] [1]),
        .I3(\b_gamma1_q[1]_i_6_n_0 ),
        .I4(\b_gamma1_q_reg[1] [0]),
        .I5(\b_gamma1_q_reg[1] [2]),
        .O(aes_scale_omega2_gf2p20_return[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \b_gamma1_q[1]_i_3 
       (.I0(a_yz0_q[3]),
        .I1(\b_gamma1_q_reg[0] [3]),
        .O(p_0_in15_in));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \b_gamma1_q[1]_i_4 
       (.I0(\b_gamma1_q_reg[1] [2]),
        .I1(\b_gamma1_q_reg[1] [3]),
        .I2(a_yz0_q[2]),
        .I3(\b_gamma1_q_reg[0] [2]),
        .I4(a_yz0_q[3]),
        .I5(\b_gamma1_q_reg[0] [3]),
        .O(aes_mul_gf2p20_return114_out));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_gamma1_q[1]_i_5 
       (.I0(\b_gamma1_q_reg[0] [1]),
        .I1(a_yz0_q[1]),
        .I2(\b_gamma1_q_reg[0] [3]),
        .I3(a_yz0_q[3]),
        .O(p_0_in7_in));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_gamma1_q[1]_i_6 
       (.I0(\b_gamma1_q_reg[0] [0]),
        .I1(a_yz0_q[0]),
        .I2(\b_gamma1_q_reg[0] [2]),
        .I3(a_yz0_q[2]),
        .O(\b_gamma1_q[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_gamma_ss_q[0]_i_1 
       (.I0(b_gamma[3]),
        .I1(b_gamma[1]),
        .I2(b_gamma[2]),
        .I3(b_gamma[0]),
        .O(\bxz0_z1_q_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_gamma_ss_q[1]_i_1 
       (.I0(b_gamma[1]),
        .I1(b_gamma[3]),
        .O(\bxz0_z1_q_reg[1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_y1_qqq[0]_i_1 
       (.I0(mask0_i_IBUF[7]),
        .I1(mask0_i_IBUF[0]),
        .I2(mask0_i_IBUF[6]),
        .I3(mask0_i_IBUF[5]),
        .O(\mask0_i[7] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_y1_qqq[1]_i_1 
       (.I0(mask0_i_IBUF[6]),
        .I1(mask0_i_IBUF[0]),
        .I2(mask0_i_IBUF[1]),
        .I3(mask0_i_IBUF[5]),
        .O(\mask0_i[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_y1_qqq[2]_i_1 
       (.I0(mask0_i_IBUF[4]),
        .I1(mask0_i_IBUF[0]),
        .I2(mask0_i_IBUF[6]),
        .I3(mask0_i_IBUF[5]),
        .O(\mask0_i[7]_0 [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \b_y1_qqq[3]_i_1 
       (.I0(mask0_i_IBUF[7]),
        .I1(mask0_i_IBUF[6]),
        .I2(mask0_i_IBUF[0]),
        .I3(mask0_i_IBUF[1]),
        .I4(mask0_i_IBUF[5]),
        .I5(mask0_i_IBUF[2]),
        .O(\mask0_i[7]_0 [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \b_yz0_q[0]_i_1 
       (.I0(prd_i_IBUF[0]),
        .I1(mask0_i_IBUF[3]),
        .I2(mask0_i_IBUF[6]),
        .I3(mask0_i_IBUF[0]),
        .I4(mask0_i_IBUF[1]),
        .I5(mask0_i_IBUF[2]),
        .O(b_yz0_d[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[0]_i_1__0 
       (.I0(prd_i_IBUF[8]),
        .I1(b_gamma[0]),
        .O(\prd_i[9]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_yz0_q[1]_i_1 
       (.I0(prd_i_IBUF[1]),
        .I1(mask0_i_IBUF[0]),
        .I2(mask0_i_IBUF[6]),
        .I3(mask0_i_IBUF[5]),
        .O(b_yz0_d[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[1]_i_1__0 
       (.I0(prd_i_IBUF[9]),
        .I1(b_gamma[1]),
        .O(\prd_i[9]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[2]_i_1 
       (.I0(prd_i_IBUF[2]),
        .I1(mask0_i_IBUF[0]),
        .O(b_yz0_d[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \b_yz0_q[3]_i_1 
       (.I0(prd_i_IBUF[3]),
        .I1(mask0_i_IBUF[7]),
        .I2(mask0_i_IBUF[4]),
        .I3(mask0_i_IBUF[3]),
        .I4(mask0_i_IBUF[1]),
        .I5(mask0_i_IBUF[0]),
        .O(b_yz0_d[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_yz0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(b_yz0_d[0]),
        .Q(b_yz0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_yz0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(b_yz0_d[1]),
        .Q(b_yz0_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_yz0_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(b_yz0_d[2]),
        .Q(b_yz0_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_yz0_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(b_yz0_d[3]),
        .Q(b_yz0_q[3]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bxz0_z1_q[0]_i_1 
       (.I0(prd_i_IBUF[4]),
        .I1(prd_i_IBUF[1]),
        .I2(\mask0_i[7]_0 [0]),
        .I3(prd_i_IBUF[0]),
        .I4(\mask0_i[7] ),
        .I5(aes_scale_omega2_gf2p2_return[0]),
        .O(bxz0_z1_d[0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[0]_i_1__0 
       (.I0(prd_i_IBUF[10]),
        .I1(b_gamma[2]),
        .I2(prd_i_IBUF[8]),
        .I3(b_gamma[3]),
        .I4(prd_i_IBUF[9]),
        .O(\prd_i[11]_0 [0]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bxz0_z1_q[1]_i_1 
       (.I0(prd_i_IBUF[5]),
        .I1(prd_i_IBUF[0]),
        .I2(\mask0_i[7] ),
        .I3(prd_i_IBUF[1]),
        .I4(\mask0_i[7]_0 [0]),
        .I5(aes_scale_omega2_gf2p2_return[1]),
        .O(bxz0_z1_d[1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[1]_i_1__0 
       (.I0(prd_i_IBUF[11]),
        .I1(b_gamma[3]),
        .I2(prd_i_IBUF[9]),
        .I3(b_gamma[2]),
        .I4(prd_i_IBUF[8]),
        .O(\prd_i[11]_0 [1]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bxz0_z1_q[2]_i_1 
       (.I0(prd_i_IBUF[6]),
        .I1(prd_i_IBUF[3]),
        .I2(\mask0_i[7]_0 [2]),
        .I3(prd_i_IBUF[2]),
        .I4(\mask0_i[7]_0 [1]),
        .I5(aes_scale_omega2_gf2p2_return[0]),
        .O(bxz0_z1_d[2]));
  LUT6 #(
    .INIT(64'h2828D728D7282828)) 
    \bxz0_z1_q[2]_i_2 
       (.I0(p_1_in52_in),
        .I1(prd_i_IBUF[3]),
        .I2(prd_i_IBUF[1]),
        .I3(\bxz0_z1_q[3]_i_4_n_0 ),
        .I4(prd_i_IBUF[0]),
        .I5(prd_i_IBUF[2]),
        .O(aes_scale_omega2_gf2p2_return[0]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bxz0_z1_q[3]_i_1 
       (.I0(prd_i_IBUF[7]),
        .I1(prd_i_IBUF[2]),
        .I2(\mask0_i[7]_0 [1]),
        .I3(prd_i_IBUF[3]),
        .I4(\mask0_i[7]_0 [2]),
        .I5(aes_scale_omega2_gf2p2_return[1]),
        .O(bxz0_z1_d[3]));
  LUT6 #(
    .INIT(64'h06F6F60660909060)) 
    \bxz0_z1_q[3]_i_2 
       (.I0(prd_i_IBUF[3]),
        .I1(prd_i_IBUF[1]),
        .I2(p_1_in52_in),
        .I3(prd_i_IBUF[0]),
        .I4(prd_i_IBUF[2]),
        .I5(\bxz0_z1_q[3]_i_4_n_0 ),
        .O(aes_scale_omega2_gf2p2_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bxz0_z1_q[3]_i_3 
       (.I0(mask0_i_IBUF[2]),
        .I1(mask0_i_IBUF[7]),
        .O(p_1_in52_in));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bxz0_z1_q[3]_i_4 
       (.I0(mask0_i_IBUF[7]),
        .I1(mask0_i_IBUF[4]),
        .O(\bxz0_z1_q[3]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bxz0_z1_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(bxz0_z1_d[0]),
        .Q(bxz0_z1_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bxz0_z1_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(bxz0_z1_d[1]),
        .Q(bxz0_z1_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bxz0_z1_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(bxz0_z1_d[2]),
        .Q(bxz0_z1_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bxz0_z1_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\axz0_z1_q_reg[0]_0 ),
        .D(bxz0_z1_d[3]),
        .Q(bxz0_z1_q[3]));
endmodule

(* ORIG_REF_NAME = "aes_dom_dep_mul_gf2pn" *) 
module aes_dom_dep_mul_gf2pn__parameterized0
   (D,
    aes_square_gf2p2_return,
    \prd_i[17] ,
    \prd_i[15] ,
    g1_out,
    \prd_i[17]_0 ,
    prd_i_IBUF,
    Q,
    \a_omega_q_reg[0] ,
    \a_omega_q_reg[0]_0 ,
    \b_omega_q_reg[0] ,
    \b_omega_q_reg[0]_0 ,
    \b_omega_q_reg[0]_1 ,
    \b_yz0_q_reg[1]_0 ,
    CLK,
    \bxz0_z1_q_reg[1]_0 ,
    \axz0_z1_q_reg[1]_0 ,
    \a_yz0_q_reg[1]_0 ,
    \bxz0_z1_q_reg[1]_1 );
  output [1:0]D;
  output [1:0]aes_square_gf2p2_return;
  output [1:0]\prd_i[17] ;
  output [1:0]\prd_i[15] ;
  output [1:0]g1_out;
  output [1:0]\prd_i[17]_0 ;
  input [5:0]prd_i_IBUF;
  input [1:0]Q;
  input [1:0]\a_omega_q_reg[0] ;
  input [1:0]\a_omega_q_reg[0]_0 ;
  input [1:0]\b_omega_q_reg[0] ;
  input [1:0]\b_omega_q_reg[0]_0 ;
  input [1:0]\b_omega_q_reg[0]_1 ;
  input [1:0]\b_yz0_q_reg[1]_0 ;
  input CLK;
  input \bxz0_z1_q_reg[1]_0 ;
  input [1:0]\axz0_z1_q_reg[1]_0 ;
  input [1:0]\a_yz0_q_reg[1]_0 ;
  input [1:0]\bxz0_z1_q_reg[1]_1 ;

  wire \<const1> ;
  wire CLK;
  wire [1:0]D;
  wire [1:0]Q;
  wire [1:0]\a_omega_q_reg[0] ;
  wire [1:0]\a_omega_q_reg[0]_0 ;
  wire [1:0]a_yz0_q;
  wire [1:0]\a_yz0_q_reg[1]_0 ;
  wire aes_mul_gf2p21_return11_out;
  wire aes_mul_gf2p21_return16_out;
  wire [1:0]aes_square_gf2p2_return;
  wire [1:0]axz0_z1_q;
  wire [1:0]\axz0_z1_q_reg[1]_0 ;
  wire [1:0]\b_omega_q_reg[0] ;
  wire [1:0]\b_omega_q_reg[0]_0 ;
  wire [1:0]\b_omega_q_reg[0]_1 ;
  wire [1:0]b_yz0_q;
  wire [1:0]\b_yz0_q_reg[1]_0 ;
  wire [1:0]bxz0_z1_q;
  wire \bxz0_z1_q_reg[1]_0 ;
  wire [1:0]\bxz0_z1_q_reg[1]_1 ;
  wire [1:0]g1_out;
  wire [1:0]\prd_i[15] ;
  wire [1:0]\prd_i[17] ;
  wire [1:0]\prd_i[17]_0 ;
  wire [5:0]prd_i_IBUF;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h9669699696969696)) 
    \a_omega_q[0]_i_1 
       (.I0(Q[1]),
        .I1(axz0_z1_q[1]),
        .I2(aes_mul_gf2p21_return16_out),
        .I3(b_yz0_q[1]),
        .I4(\a_omega_q_reg[0] [1]),
        .I5(\a_omega_q_reg[0]_0 [1]),
        .O(aes_square_gf2p2_return[0]));
  LUT6 #(
    .INIT(64'h9669699696969696)) 
    \a_omega_q[1]_i_1 
       (.I0(Q[0]),
        .I1(axz0_z1_q[0]),
        .I2(aes_mul_gf2p21_return16_out),
        .I3(b_yz0_q[0]),
        .I4(\a_omega_q_reg[0] [0]),
        .I5(\a_omega_q_reg[0]_0 [0]),
        .O(aes_square_gf2p2_return[1]));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \a_omega_q[1]_i_2 
       (.I0(\a_omega_q_reg[0]_0 [0]),
        .I1(\a_omega_q_reg[0]_0 [1]),
        .I2(b_yz0_q[0]),
        .I3(\a_omega_q_reg[0] [0]),
        .I4(b_yz0_q[1]),
        .I5(\a_omega_q_reg[0] [1]),
        .O(aes_mul_gf2p21_return16_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[0]_i_1__1 
       (.I0(prd_i_IBUF[4]),
        .I1(aes_square_gf2p2_return[0]),
        .O(\prd_i[17] [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[1]_i_1__1 
       (.I0(prd_i_IBUF[5]),
        .I1(aes_square_gf2p2_return[1]),
        .O(\prd_i[17] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_yz0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_0 ),
        .D(\a_yz0_q_reg[1]_0 [0]),
        .Q(a_yz0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_yz0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_0 ),
        .D(\a_yz0_q_reg[1]_0 [1]),
        .Q(a_yz0_q[1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[0]_i_1__1 
       (.I0(prd_i_IBUF[2]),
        .I1(aes_square_gf2p2_return[0]),
        .I2(prd_i_IBUF[0]),
        .I3(aes_square_gf2p2_return[1]),
        .I4(prd_i_IBUF[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[1]_i_1__1 
       (.I0(prd_i_IBUF[3]),
        .I1(aes_square_gf2p2_return[1]),
        .I2(prd_i_IBUF[1]),
        .I3(aes_square_gf2p2_return[0]),
        .I4(prd_i_IBUF[0]),
        .O(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \axz0_z1_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_0 ),
        .D(\axz0_z1_q_reg[1]_0 [0]),
        .Q(axz0_z1_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \axz0_z1_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_0 ),
        .D(\axz0_z1_q_reg[1]_0 [1]),
        .Q(axz0_z1_q[1]));
  LUT6 #(
    .INIT(64'h9669699696969696)) 
    \b_omega_q[0]_i_1 
       (.I0(\b_omega_q_reg[0] [1]),
        .I1(bxz0_z1_q[1]),
        .I2(aes_mul_gf2p21_return11_out),
        .I3(a_yz0_q[1]),
        .I4(\b_omega_q_reg[0]_0 [1]),
        .I5(\b_omega_q_reg[0]_1 [1]),
        .O(g1_out[1]));
  LUT6 #(
    .INIT(64'h9669699696969696)) 
    \b_omega_q[1]_i_1 
       (.I0(\b_omega_q_reg[0] [0]),
        .I1(bxz0_z1_q[0]),
        .I2(aes_mul_gf2p21_return11_out),
        .I3(a_yz0_q[0]),
        .I4(\b_omega_q_reg[0]_0 [0]),
        .I5(\b_omega_q_reg[0]_1 [0]),
        .O(g1_out[0]));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \b_omega_q[1]_i_2 
       (.I0(\b_omega_q_reg[0]_1 [0]),
        .I1(\b_omega_q_reg[0]_1 [1]),
        .I2(a_yz0_q[0]),
        .I3(\b_omega_q_reg[0]_0 [0]),
        .I4(a_yz0_q[1]),
        .I5(\b_omega_q_reg[0]_0 [1]),
        .O(aes_mul_gf2p21_return11_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[0]_i_1__1 
       (.I0(prd_i_IBUF[4]),
        .I1(g1_out[1]),
        .O(\prd_i[17]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[1]_i_1__1 
       (.I0(prd_i_IBUF[5]),
        .I1(g1_out[0]),
        .O(\prd_i[17]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_yz0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_0 ),
        .D(\b_yz0_q_reg[1]_0 [0]),
        .Q(b_yz0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_yz0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_0 ),
        .D(\b_yz0_q_reg[1]_0 [1]),
        .Q(b_yz0_q[1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[0]_i_1__1 
       (.I0(prd_i_IBUF[2]),
        .I1(g1_out[1]),
        .I2(prd_i_IBUF[0]),
        .I3(g1_out[0]),
        .I4(prd_i_IBUF[1]),
        .O(\prd_i[15] [0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[1]_i_1__1 
       (.I0(prd_i_IBUF[3]),
        .I1(g1_out[0]),
        .I2(prd_i_IBUF[1]),
        .I3(g1_out[1]),
        .I4(prd_i_IBUF[0]),
        .O(\prd_i[15] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bxz0_z1_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_0 ),
        .D(\bxz0_z1_q_reg[1]_1 [0]),
        .Q(bxz0_z1_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bxz0_z1_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_0 ),
        .D(\bxz0_z1_q_reg[1]_1 [1]),
        .Q(bxz0_z1_q[1]));
endmodule

(* ORIG_REF_NAME = "aes_dom_dep_mul_gf2pn" *) 
module aes_dom_dep_mul_gf2pn__parameterized0_1
   (\a_y0_qqq_reg[1] ,
    D,
    \b_y1_qqq_reg[2] ,
    \a_y1_qqq_reg[1] ,
    \b_y0_qqq_reg[1] ,
    \a_y0_qqq_reg[2] ,
    \b_y1_qqq_reg[1] ,
    \a_y1_qqq_reg[2] ,
    \bq_z0_q_reg[3] ,
    Q,
    \aq_z0_q_reg[3] ,
    p_1_in8_in,
    p_0_in28_in,
    \mul_bx_by_q_reg[3] ,
    prd_i_IBUF,
    \mul_bx_by_q_reg[3]_0 ,
    p_0_in7_in,
    \mul_bx_by_q_reg[3]_1 ,
    \mul_bx_by_q_reg[3]_2 ,
    \aq_z0_q_reg[3]_0 ,
    \mul_ax_ay_q_reg[3] ,
    p_1_in29_in,
    aes_mul_gf2p2_return061_out,
    aes_mul_gf2p22_return011_out,
    aes_mul_gf2p2_return063_out,
    aes_mul_gf2p22_return013_out,
    aes_mul_gf2p2_return061_out__0,
    aes_mul_gf2p2_return063_out__0,
    aes_mul_gf2p22_return029_out__0,
    aes_mul_gf2p22_return031_out__0,
    \mul_ax_ay_q[3]_i_7_0 ,
    \mul_ax_ay_q[3]_i_7_1 ,
    \aq_z0_q_reg[3]_1 ,
    aes_mul_gf2p22_return011_out__0,
    aes_mul_gf2p2_return043_out__0,
    aes_mul_gf2p22_return013_out__0,
    aes_mul_gf2p2_return045_out__0,
    aes_mul_gf2p2_return043_out,
    aes_mul_gf2p2_return045_out,
    aes_mul_gf2p22_return029_out,
    aes_mul_gf2p22_return031_out,
    \aq_z0_q[3]_i_9_0 ,
    \aq_z0_q[3]_i_9_1 ,
    \axz0_z1_q_reg[1]_0 ,
    \bxz0_z1_q_reg[1]_0 ,
    \b_yz0_q_reg[1]_0 ,
    CLK,
    \bxz0_z1_q_reg[1]_1 ,
    \a_yz0_q_reg[1]_0 );
  output [3:0]\a_y0_qqq_reg[1] ;
  output [3:0]D;
  output [3:0]\b_y1_qqq_reg[2] ;
  output [3:0]\a_y1_qqq_reg[1] ;
  output [3:0]\b_y0_qqq_reg[1] ;
  output [3:0]\a_y0_qqq_reg[2] ;
  output [3:0]\b_y1_qqq_reg[1] ;
  output [3:0]\a_y1_qqq_reg[2] ;
  input \bq_z0_q_reg[3] ;
  input [3:0]Q;
  input [1:0]\aq_z0_q_reg[3] ;
  input p_1_in8_in;
  input p_0_in28_in;
  input \mul_bx_by_q_reg[3] ;
  input [11:0]prd_i_IBUF;
  input [3:0]\mul_bx_by_q_reg[3]_0 ;
  input p_0_in7_in;
  input \mul_bx_by_q_reg[3]_1 ;
  input [3:0]\mul_bx_by_q_reg[3]_2 ;
  input \aq_z0_q_reg[3]_0 ;
  input [3:0]\mul_ax_ay_q_reg[3] ;
  input p_1_in29_in;
  input aes_mul_gf2p2_return061_out;
  input aes_mul_gf2p22_return011_out;
  input aes_mul_gf2p2_return063_out;
  input aes_mul_gf2p22_return013_out;
  input aes_mul_gf2p2_return061_out__0;
  input aes_mul_gf2p2_return063_out__0;
  input aes_mul_gf2p22_return029_out__0;
  input aes_mul_gf2p22_return031_out__0;
  input [1:0]\mul_ax_ay_q[3]_i_7_0 ;
  input [1:0]\mul_ax_ay_q[3]_i_7_1 ;
  input [1:0]\aq_z0_q_reg[3]_1 ;
  input aes_mul_gf2p22_return011_out__0;
  input aes_mul_gf2p2_return043_out__0;
  input aes_mul_gf2p22_return013_out__0;
  input aes_mul_gf2p2_return045_out__0;
  input aes_mul_gf2p2_return043_out;
  input aes_mul_gf2p2_return045_out;
  input aes_mul_gf2p22_return029_out;
  input aes_mul_gf2p22_return031_out;
  input [1:0]\aq_z0_q[3]_i_9_0 ;
  input [1:0]\aq_z0_q[3]_i_9_1 ;
  input [1:0]\axz0_z1_q_reg[1]_0 ;
  input [1:0]\bxz0_z1_q_reg[1]_0 ;
  input [1:0]\b_yz0_q_reg[1]_0 ;
  input CLK;
  input \bxz0_z1_q_reg[1]_1 ;
  input [1:0]\a_yz0_q_reg[1]_0 ;

  wire \<const1> ;
  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire [1:0]a_theta;
  wire [3:0]\a_y0_qqq_reg[1] ;
  wire [3:0]\a_y0_qqq_reg[2] ;
  wire [3:0]\a_y1_qqq_reg[1] ;
  wire [3:0]\a_y1_qqq_reg[2] ;
  wire [1:0]a_yz0_q;
  wire [1:0]\a_yz0_q_reg[1]_0 ;
  wire aes_mul_gf2p21_return11_out;
  wire aes_mul_gf2p21_return16_out;
  wire aes_mul_gf2p22_return0;
  wire aes_mul_gf2p22_return011_out;
  wire aes_mul_gf2p22_return011_out__0;
  wire aes_mul_gf2p22_return013_out;
  wire aes_mul_gf2p22_return013_out__0;
  wire aes_mul_gf2p22_return019_out;
  wire aes_mul_gf2p22_return019_out__0;
  wire aes_mul_gf2p22_return021_out;
  wire aes_mul_gf2p22_return021_out__0;
  wire aes_mul_gf2p22_return029_out;
  wire aes_mul_gf2p22_return029_out__0;
  wire aes_mul_gf2p22_return031_out;
  wire aes_mul_gf2p22_return031_out__0;
  wire aes_mul_gf2p22_return03_out;
  wire aes_mul_gf2p22_return03_out__0;
  wire aes_mul_gf2p22_return0__0;
  wire aes_mul_gf2p2_return035_out;
  wire aes_mul_gf2p2_return035_out__0;
  wire aes_mul_gf2p2_return043_out;
  wire aes_mul_gf2p2_return043_out__0;
  wire aes_mul_gf2p2_return045_out;
  wire aes_mul_gf2p2_return045_out__0;
  wire aes_mul_gf2p2_return051_out;
  wire aes_mul_gf2p2_return051_out__0;
  wire aes_mul_gf2p2_return053_out;
  wire aes_mul_gf2p2_return053_out__0;
  wire aes_mul_gf2p2_return061_out;
  wire aes_mul_gf2p2_return061_out__0;
  wire aes_mul_gf2p2_return063_out;
  wire aes_mul_gf2p2_return063_out__0;
  wire aes_mul_gf2p2_return0__0;
  wire aes_mul_gf2p2_return0__1;
  wire \aq_z0_q[3]_i_5_n_0 ;
  wire [1:0]\aq_z0_q[3]_i_9_0 ;
  wire [1:0]\aq_z0_q[3]_i_9_1 ;
  wire [1:0]\aq_z0_q_reg[3] ;
  wire \aq_z0_q_reg[3]_0 ;
  wire [1:0]\aq_z0_q_reg[3]_1 ;
  wire [1:0]axz0_z1_d;
  wire [1:0]axz0_z1_q;
  wire [1:0]\axz0_z1_q_reg[1]_0 ;
  wire [1:0]b_theta;
  wire [3:0]\b_y0_qqq_reg[1] ;
  wire [3:0]\b_y1_qqq_reg[1] ;
  wire [3:0]\b_y1_qqq_reg[2] ;
  wire [1:0]b_yz0_q;
  wire [1:0]\b_yz0_q_reg[1]_0 ;
  wire \bq_z0_q_reg[3] ;
  wire [1:0]bxz0_z1_d;
  wire [1:0]bxz0_z1_q;
  wire [1:0]\bxz0_z1_q_reg[1]_0 ;
  wire \bxz0_z1_q_reg[1]_1 ;
  wire \indep_stage4A/p_0_in28_in ;
  wire \indep_stage4B/p_1_in29_in ;
  wire \mul_ax_ay_q[3]_i_2_n_0 ;
  wire [1:0]\mul_ax_ay_q[3]_i_7_0 ;
  wire [1:0]\mul_ax_ay_q[3]_i_7_1 ;
  wire [3:0]\mul_ax_ay_q_reg[3] ;
  wire \mul_bx_by_q_reg[3] ;
  wire [3:0]\mul_bx_by_q_reg[3]_0 ;
  wire \mul_bx_by_q_reg[3]_1 ;
  wire [3:0]\mul_bx_by_q_reg[3]_2 ;
  wire p_0_in28_in;
  wire p_0_in7_in;
  wire p_1_in29_in;
  wire p_1_in8_in;
  wire [11:0]prd_i_IBUF;

  VCC VCC
       (.P(\<const1> ));
  FDCE #(
    .INIT(1'b0)) 
    \a_yz0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_1 ),
        .D(\a_yz0_q_reg[1]_0 [0]),
        .Q(a_yz0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_yz0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_1 ),
        .D(\a_yz0_q_reg[1]_0 [1]),
        .Q(a_yz0_q[1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \aq_z0_q[0]_i_1 
       (.I0(aes_mul_gf2p22_return019_out__0),
        .I1(\indep_stage4B/p_1_in29_in ),
        .I2(p_0_in28_in),
        .I3(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I4(\mul_bx_by_q_reg[3] ),
        .I5(prd_i_IBUF[4]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \aq_z0_q[0]_i_1__0 
       (.I0(aes_mul_gf2p22_return019_out),
        .I1(p_1_in29_in),
        .I2(\indep_stage4A/p_0_in28_in ),
        .I3(\aq_z0_q_reg[3]_0 ),
        .I4(\aq_z0_q[3]_i_5_n_0 ),
        .I5(prd_i_IBUF[8]),
        .O(\a_y1_qqq_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[0]_i_2 
       (.I0(\mul_bx_by_q_reg[3]_0 [1]),
        .I1(a_theta[1]),
        .I2(\mul_bx_by_q_reg[3]_0 [0]),
        .I3(a_theta[0]),
        .O(aes_mul_gf2p22_return019_out__0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[0]_i_2__0 
       (.I0(b_theta[1]),
        .I1(\mul_ax_ay_q_reg[3] [1]),
        .I2(b_theta[0]),
        .I3(\mul_ax_ay_q_reg[3] [0]),
        .O(aes_mul_gf2p22_return019_out));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \aq_z0_q[1]_i_1 
       (.I0(aes_mul_gf2p22_return021_out__0),
        .I1(p_0_in28_in),
        .I2(\indep_stage4B/p_1_in29_in ),
        .I3(\mul_bx_by_q_reg[3] ),
        .I4(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I5(prd_i_IBUF[5]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \aq_z0_q[1]_i_1__0 
       (.I0(aes_mul_gf2p22_return021_out),
        .I1(\indep_stage4A/p_0_in28_in ),
        .I2(p_1_in29_in),
        .I3(\aq_z0_q[3]_i_5_n_0 ),
        .I4(\aq_z0_q_reg[3]_0 ),
        .I5(prd_i_IBUF[9]),
        .O(\a_y1_qqq_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[1]_i_2 
       (.I0(\mul_bx_by_q_reg[3]_0 [0]),
        .I1(a_theta[0]),
        .I2(\mul_bx_by_q_reg[3]_0 [1]),
        .I3(a_theta[1]),
        .O(aes_mul_gf2p22_return021_out__0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[1]_i_2__0 
       (.I0(b_theta[0]),
        .I1(\mul_ax_ay_q_reg[3] [0]),
        .I2(b_theta[1]),
        .I3(\mul_ax_ay_q_reg[3] [1]),
        .O(aes_mul_gf2p22_return021_out));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \aq_z0_q[2]_i_1 
       (.I0(aes_mul_gf2p22_return029_out__0),
        .I1(\indep_stage4B/p_1_in29_in ),
        .I2(p_0_in28_in),
        .I3(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I4(\mul_bx_by_q_reg[3] ),
        .I5(prd_i_IBUF[6]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \aq_z0_q[2]_i_1__0 
       (.I0(aes_mul_gf2p22_return029_out),
        .I1(p_1_in29_in),
        .I2(\indep_stage4A/p_0_in28_in ),
        .I3(\aq_z0_q_reg[3]_0 ),
        .I4(\aq_z0_q[3]_i_5_n_0 ),
        .I5(prd_i_IBUF[10]),
        .O(\a_y1_qqq_reg[2] [2]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \aq_z0_q[3]_i_1 
       (.I0(aes_mul_gf2p22_return031_out__0),
        .I1(p_0_in28_in),
        .I2(\indep_stage4B/p_1_in29_in ),
        .I3(\mul_bx_by_q_reg[3] ),
        .I4(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I5(prd_i_IBUF[7]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \aq_z0_q[3]_i_10 
       (.I0(\aq_z0_q[3]_i_9_0 [0]),
        .I1(\aq_z0_q[3]_i_9_1 [0]),
        .I2(a_yz0_q[0]),
        .I3(aes_mul_gf2p21_return11_out),
        .I4(bxz0_z1_q[0]),
        .O(b_theta[0]));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \aq_z0_q[3]_i_12 
       (.I0(\aq_z0_q[3]_i_9_0 [0]),
        .I1(\aq_z0_q[3]_i_9_0 [1]),
        .I2(a_yz0_q[0]),
        .I3(\aq_z0_q[3]_i_9_1 [0]),
        .I4(a_yz0_q[1]),
        .I5(\aq_z0_q[3]_i_9_1 [1]),
        .O(aes_mul_gf2p21_return11_out));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \aq_z0_q[3]_i_1__0 
       (.I0(aes_mul_gf2p22_return031_out),
        .I1(\indep_stage4A/p_0_in28_in ),
        .I2(p_1_in29_in),
        .I3(\aq_z0_q[3]_i_5_n_0 ),
        .I4(\aq_z0_q_reg[3]_0 ),
        .I5(prd_i_IBUF[11]),
        .O(\a_y1_qqq_reg[2] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_3 
       (.I0(b_theta[1]),
        .I1(\aq_z0_q_reg[3]_1 [1]),
        .O(\indep_stage4A/p_0_in28_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_5 
       (.I0(b_theta[0]),
        .I1(\aq_z0_q_reg[3]_1 [0]),
        .O(\aq_z0_q[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \aq_z0_q[3]_i_9 
       (.I0(\aq_z0_q[3]_i_9_0 [1]),
        .I1(\aq_z0_q[3]_i_9_1 [1]),
        .I2(a_yz0_q[1]),
        .I3(aes_mul_gf2p21_return11_out),
        .I4(bxz0_z1_q[1]),
        .O(b_theta[1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[0]_i_1__2 
       (.I0(prd_i_IBUF[2]),
        .I1(\axz0_z1_q_reg[1]_0 [0]),
        .I2(prd_i_IBUF[0]),
        .I3(\axz0_z1_q_reg[1]_0 [1]),
        .I4(prd_i_IBUF[1]),
        .O(axz0_z1_d[0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[1]_i_1__2 
       (.I0(prd_i_IBUF[3]),
        .I1(\axz0_z1_q_reg[1]_0 [1]),
        .I2(prd_i_IBUF[1]),
        .I3(\axz0_z1_q_reg[1]_0 [0]),
        .I4(prd_i_IBUF[0]),
        .O(axz0_z1_d[1]));
  FDCE #(
    .INIT(1'b0)) 
    \axz0_z1_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_1 ),
        .D(axz0_z1_d[0]),
        .Q(axz0_z1_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \axz0_z1_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_1 ),
        .D(axz0_z1_d[1]),
        .Q(axz0_z1_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_yz0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_1 ),
        .D(\b_yz0_q_reg[1]_0 [0]),
        .Q(b_yz0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_yz0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_1 ),
        .D(\b_yz0_q_reg[1]_0 [1]),
        .Q(b_yz0_q[1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \bq_z0_q[0]_i_1 
       (.I0(aes_mul_gf2p22_return0),
        .I1(\indep_stage4B/p_1_in29_in ),
        .I2(p_0_in7_in),
        .I3(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I4(\mul_bx_by_q_reg[3]_1 ),
        .I5(prd_i_IBUF[8]),
        .O(\b_y1_qqq_reg[2] [0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \bq_z0_q[0]_i_1__0 
       (.I0(aes_mul_gf2p22_return0__0),
        .I1(p_1_in8_in),
        .I2(\indep_stage4A/p_0_in28_in ),
        .I3(\bq_z0_q_reg[3] ),
        .I4(\aq_z0_q[3]_i_5_n_0 ),
        .I5(prd_i_IBUF[4]),
        .O(\a_y0_qqq_reg[2] [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[0]_i_2 
       (.I0(\mul_bx_by_q_reg[3]_2 [1]),
        .I1(a_theta[1]),
        .I2(\mul_bx_by_q_reg[3]_2 [0]),
        .I3(a_theta[0]),
        .O(aes_mul_gf2p22_return0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[0]_i_2__0 
       (.I0(b_theta[1]),
        .I1(Q[1]),
        .I2(b_theta[0]),
        .I3(Q[0]),
        .O(aes_mul_gf2p22_return0__0));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bq_z0_q[1]_i_1 
       (.I0(aes_mul_gf2p22_return03_out),
        .I1(p_0_in7_in),
        .I2(\indep_stage4B/p_1_in29_in ),
        .I3(\mul_bx_by_q_reg[3]_1 ),
        .I4(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I5(prd_i_IBUF[9]),
        .O(\b_y1_qqq_reg[2] [1]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bq_z0_q[1]_i_1__0 
       (.I0(aes_mul_gf2p22_return03_out__0),
        .I1(\indep_stage4A/p_0_in28_in ),
        .I2(p_1_in8_in),
        .I3(\aq_z0_q[3]_i_5_n_0 ),
        .I4(\bq_z0_q_reg[3] ),
        .I5(prd_i_IBUF[5]),
        .O(\a_y0_qqq_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[1]_i_2 
       (.I0(\mul_bx_by_q_reg[3]_2 [0]),
        .I1(a_theta[0]),
        .I2(\mul_bx_by_q_reg[3]_2 [1]),
        .I3(a_theta[1]),
        .O(aes_mul_gf2p22_return03_out));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[1]_i_2__0 
       (.I0(b_theta[0]),
        .I1(Q[0]),
        .I2(b_theta[1]),
        .I3(Q[1]),
        .O(aes_mul_gf2p22_return03_out__0));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \bq_z0_q[2]_i_1 
       (.I0(aes_mul_gf2p22_return011_out),
        .I1(\indep_stage4B/p_1_in29_in ),
        .I2(p_0_in7_in),
        .I3(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I4(\mul_bx_by_q_reg[3]_1 ),
        .I5(prd_i_IBUF[10]),
        .O(\b_y1_qqq_reg[2] [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \bq_z0_q[2]_i_1__0 
       (.I0(aes_mul_gf2p22_return011_out__0),
        .I1(p_1_in8_in),
        .I2(\indep_stage4A/p_0_in28_in ),
        .I3(\bq_z0_q_reg[3] ),
        .I4(\aq_z0_q[3]_i_5_n_0 ),
        .I5(prd_i_IBUF[6]),
        .O(\a_y0_qqq_reg[2] [2]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bq_z0_q[3]_i_1 
       (.I0(aes_mul_gf2p22_return013_out),
        .I1(p_0_in7_in),
        .I2(\indep_stage4B/p_1_in29_in ),
        .I3(\mul_bx_by_q_reg[3]_1 ),
        .I4(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I5(prd_i_IBUF[11]),
        .O(\b_y1_qqq_reg[2] [3]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bq_z0_q[3]_i_1__0 
       (.I0(aes_mul_gf2p22_return013_out__0),
        .I1(\indep_stage4A/p_0_in28_in ),
        .I2(p_1_in8_in),
        .I3(\aq_z0_q[3]_i_5_n_0 ),
        .I4(\bq_z0_q_reg[3] ),
        .I5(prd_i_IBUF[7]),
        .O(\a_y0_qqq_reg[2] [3]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[0]_i_1__2 
       (.I0(prd_i_IBUF[2]),
        .I1(\bxz0_z1_q_reg[1]_0 [0]),
        .I2(prd_i_IBUF[0]),
        .I3(\bxz0_z1_q_reg[1]_0 [1]),
        .I4(prd_i_IBUF[1]),
        .O(bxz0_z1_d[0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[1]_i_1__2 
       (.I0(prd_i_IBUF[3]),
        .I1(\bxz0_z1_q_reg[1]_0 [1]),
        .I2(prd_i_IBUF[1]),
        .I3(\bxz0_z1_q_reg[1]_0 [0]),
        .I4(prd_i_IBUF[0]),
        .O(bxz0_z1_d[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bxz0_z1_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_1 ),
        .D(bxz0_z1_d[0]),
        .Q(bxz0_z1_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bxz0_z1_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bxz0_z1_q_reg[1]_1 ),
        .D(bxz0_z1_d[1]),
        .Q(bxz0_z1_q[1]));
  LUT6 #(
    .INIT(64'h609F9F9F9F606060)) 
    \mul_ax_ay_q[0]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I3(p_1_in8_in),
        .I4(\indep_stage4B/p_1_in29_in ),
        .I5(aes_mul_gf2p2_return051_out__0),
        .O(\a_y0_qqq_reg[1] [0]));
  LUT6 #(
    .INIT(64'h28D7D7D7D7282828)) 
    \mul_ax_ay_q[0]_i_1__0 
       (.I0(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I1(\mul_ax_ay_q_reg[3] [2]),
        .I2(\mul_ax_ay_q_reg[3] [0]),
        .I3(\indep_stage4B/p_1_in29_in ),
        .I4(p_1_in29_in),
        .I5(aes_mul_gf2p2_return051_out),
        .O(\a_y1_qqq_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[0]_i_2 
       (.I0(Q[1]),
        .I1(a_theta[1]),
        .I2(Q[0]),
        .I3(a_theta[0]),
        .O(aes_mul_gf2p2_return051_out__0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[0]_i_2__0 
       (.I0(a_theta[1]),
        .I1(\mul_ax_ay_q_reg[3] [1]),
        .I2(a_theta[0]),
        .I3(\mul_ax_ay_q_reg[3] [0]),
        .O(aes_mul_gf2p2_return051_out));
  LUT6 #(
    .INIT(64'h3F65653FC09A9AC0)) 
    \mul_ax_ay_q[1]_i_1 
       (.I0(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I1(\bq_z0_q_reg[3] ),
        .I2(\indep_stage4B/p_1_in29_in ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(aes_mul_gf2p2_return053_out__0),
        .O(\a_y0_qqq_reg[1] [1]));
  LUT6 #(
    .INIT(64'h5665F33FA99A0CC0)) 
    \mul_ax_ay_q[1]_i_1__0 
       (.I0(\aq_z0_q_reg[3]_0 ),
        .I1(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I2(\mul_ax_ay_q_reg[3] [1]),
        .I3(\mul_ax_ay_q_reg[3] [3]),
        .I4(\indep_stage4B/p_1_in29_in ),
        .I5(aes_mul_gf2p2_return053_out),
        .O(\a_y1_qqq_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[1]_i_2 
       (.I0(Q[0]),
        .I1(a_theta[0]),
        .I2(Q[1]),
        .I3(a_theta[1]),
        .O(aes_mul_gf2p2_return053_out__0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[1]_i_2__0 
       (.I0(a_theta[0]),
        .I1(\mul_ax_ay_q_reg[3] [0]),
        .I2(a_theta[1]),
        .I3(\mul_ax_ay_q_reg[3] [1]),
        .O(aes_mul_gf2p2_return053_out));
  LUT6 #(
    .INIT(64'h28D7D7D7D7282828)) 
    \mul_ax_ay_q[2]_i_1 
       (.I0(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I1(\mul_ax_ay_q_reg[3] [2]),
        .I2(\mul_ax_ay_q_reg[3] [0]),
        .I3(\indep_stage4B/p_1_in29_in ),
        .I4(p_1_in29_in),
        .I5(aes_mul_gf2p2_return061_out),
        .O(\a_y1_qqq_reg[1] [2]));
  LUT6 #(
    .INIT(64'h609F9F9F9F606060)) 
    \mul_ax_ay_q[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I3(p_1_in8_in),
        .I4(\indep_stage4B/p_1_in29_in ),
        .I5(aes_mul_gf2p2_return061_out__0),
        .O(\a_y0_qqq_reg[1] [2]));
  LUT6 #(
    .INIT(64'h5665F33FA99A0CC0)) 
    \mul_ax_ay_q[3]_i_1 
       (.I0(\aq_z0_q_reg[3]_0 ),
        .I1(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I2(\mul_ax_ay_q_reg[3] [1]),
        .I3(\mul_ax_ay_q_reg[3] [3]),
        .I4(\indep_stage4B/p_1_in29_in ),
        .I5(aes_mul_gf2p2_return063_out),
        .O(\a_y1_qqq_reg[1] [3]));
  LUT6 #(
    .INIT(64'h3F65653FC09A9AC0)) 
    \mul_ax_ay_q[3]_i_1__0 
       (.I0(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I1(\bq_z0_q_reg[3] ),
        .I2(\indep_stage4B/p_1_in29_in ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(aes_mul_gf2p2_return063_out__0),
        .O(\a_y0_qqq_reg[1] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ax_ay_q[3]_i_2 
       (.I0(a_theta[0]),
        .I1(\aq_z0_q_reg[3] [0]),
        .O(\mul_ax_ay_q[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ax_ay_q[3]_i_3 
       (.I0(a_theta[1]),
        .I1(\aq_z0_q_reg[3] [1]),
        .O(\indep_stage4B/p_1_in29_in ));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \mul_ax_ay_q[3]_i_5 
       (.I0(\mul_ax_ay_q[3]_i_7_0 [0]),
        .I1(\mul_ax_ay_q[3]_i_7_1 [0]),
        .I2(b_yz0_q[0]),
        .I3(aes_mul_gf2p21_return16_out),
        .I4(axz0_z1_q[0]),
        .O(a_theta[0]));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \mul_ax_ay_q[3]_i_7 
       (.I0(\mul_ax_ay_q[3]_i_7_0 [1]),
        .I1(\mul_ax_ay_q[3]_i_7_1 [1]),
        .I2(b_yz0_q[1]),
        .I3(aes_mul_gf2p21_return16_out),
        .I4(axz0_z1_q[1]),
        .O(a_theta[1]));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \mul_ax_ay_q[3]_i_9 
       (.I0(\mul_ax_ay_q[3]_i_7_0 [0]),
        .I1(\mul_ax_ay_q[3]_i_7_0 [1]),
        .I2(b_yz0_q[0]),
        .I3(\mul_ax_ay_q[3]_i_7_1 [0]),
        .I4(b_yz0_q[1]),
        .I5(\mul_ax_ay_q[3]_i_7_1 [1]),
        .O(aes_mul_gf2p21_return16_out));
  LUT6 #(
    .INIT(64'h609F9F9F9F606060)) 
    \mul_bx_by_q[0]_i_1 
       (.I0(\mul_bx_by_q_reg[3]_0 [2]),
        .I1(\mul_bx_by_q_reg[3]_0 [0]),
        .I2(\aq_z0_q[3]_i_5_n_0 ),
        .I3(p_0_in28_in),
        .I4(\indep_stage4A/p_0_in28_in ),
        .I5(aes_mul_gf2p2_return0__1),
        .O(\b_y0_qqq_reg[1] [0]));
  LUT6 #(
    .INIT(64'h28D7D7D7D7282828)) 
    \mul_bx_by_q[0]_i_1__0 
       (.I0(\aq_z0_q[3]_i_5_n_0 ),
        .I1(\mul_bx_by_q_reg[3]_2 [2]),
        .I2(\mul_bx_by_q_reg[3]_2 [0]),
        .I3(\indep_stage4A/p_0_in28_in ),
        .I4(p_0_in7_in),
        .I5(aes_mul_gf2p2_return0__0),
        .O(\b_y1_qqq_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[0]_i_2 
       (.I0(\mul_bx_by_q_reg[3]_0 [1]),
        .I1(b_theta[1]),
        .I2(\mul_bx_by_q_reg[3]_0 [0]),
        .I3(b_theta[0]),
        .O(aes_mul_gf2p2_return0__1));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[0]_i_2__0 
       (.I0(b_theta[1]),
        .I1(\mul_bx_by_q_reg[3]_2 [1]),
        .I2(b_theta[0]),
        .I3(\mul_bx_by_q_reg[3]_2 [0]),
        .O(aes_mul_gf2p2_return0__0));
  LUT6 #(
    .INIT(64'h3F65653FC09A9AC0)) 
    \mul_bx_by_q[1]_i_1 
       (.I0(\aq_z0_q[3]_i_5_n_0 ),
        .I1(\mul_bx_by_q_reg[3] ),
        .I2(\indep_stage4A/p_0_in28_in ),
        .I3(\mul_bx_by_q_reg[3]_0 [1]),
        .I4(\mul_bx_by_q_reg[3]_0 [3]),
        .I5(aes_mul_gf2p2_return035_out__0),
        .O(\b_y0_qqq_reg[1] [1]));
  LUT6 #(
    .INIT(64'h5665F33FA99A0CC0)) 
    \mul_bx_by_q[1]_i_1__0 
       (.I0(\mul_bx_by_q_reg[3]_1 ),
        .I1(\aq_z0_q[3]_i_5_n_0 ),
        .I2(\mul_bx_by_q_reg[3]_2 [1]),
        .I3(\mul_bx_by_q_reg[3]_2 [3]),
        .I4(\indep_stage4A/p_0_in28_in ),
        .I5(aes_mul_gf2p2_return035_out),
        .O(\b_y1_qqq_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[1]_i_2 
       (.I0(\mul_bx_by_q_reg[3]_0 [0]),
        .I1(b_theta[0]),
        .I2(\mul_bx_by_q_reg[3]_0 [1]),
        .I3(b_theta[1]),
        .O(aes_mul_gf2p2_return035_out__0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[1]_i_2__0 
       (.I0(b_theta[0]),
        .I1(\mul_bx_by_q_reg[3]_2 [0]),
        .I2(b_theta[1]),
        .I3(\mul_bx_by_q_reg[3]_2 [1]),
        .O(aes_mul_gf2p2_return035_out));
  LUT6 #(
    .INIT(64'h609F9F9F9F606060)) 
    \mul_bx_by_q[2]_i_1 
       (.I0(\mul_bx_by_q_reg[3]_0 [2]),
        .I1(\mul_bx_by_q_reg[3]_0 [0]),
        .I2(\aq_z0_q[3]_i_5_n_0 ),
        .I3(p_0_in28_in),
        .I4(\indep_stage4A/p_0_in28_in ),
        .I5(aes_mul_gf2p2_return043_out__0),
        .O(\b_y0_qqq_reg[1] [2]));
  LUT6 #(
    .INIT(64'h28D7D7D7D7282828)) 
    \mul_bx_by_q[2]_i_1__0 
       (.I0(\aq_z0_q[3]_i_5_n_0 ),
        .I1(\mul_bx_by_q_reg[3]_2 [2]),
        .I2(\mul_bx_by_q_reg[3]_2 [0]),
        .I3(\indep_stage4A/p_0_in28_in ),
        .I4(p_0_in7_in),
        .I5(aes_mul_gf2p2_return043_out),
        .O(\b_y1_qqq_reg[1] [2]));
  LUT6 #(
    .INIT(64'h3F65653FC09A9AC0)) 
    \mul_bx_by_q[3]_i_1 
       (.I0(\aq_z0_q[3]_i_5_n_0 ),
        .I1(\mul_bx_by_q_reg[3] ),
        .I2(\indep_stage4A/p_0_in28_in ),
        .I3(\mul_bx_by_q_reg[3]_0 [1]),
        .I4(\mul_bx_by_q_reg[3]_0 [3]),
        .I5(aes_mul_gf2p2_return045_out__0),
        .O(\b_y0_qqq_reg[1] [3]));
  LUT6 #(
    .INIT(64'h5665F33FA99A0CC0)) 
    \mul_bx_by_q[3]_i_1__0 
       (.I0(\mul_bx_by_q_reg[3]_1 ),
        .I1(\aq_z0_q[3]_i_5_n_0 ),
        .I2(\mul_bx_by_q_reg[3]_2 [1]),
        .I3(\mul_bx_by_q_reg[3]_2 [3]),
        .I4(\indep_stage4A/p_0_in28_in ),
        .I5(aes_mul_gf2p2_return045_out),
        .O(\b_y1_qqq_reg[1] [3]));
endmodule

(* ORIG_REF_NAME = "aes_dom_dep_mul_gf2pn" *) 
module aes_dom_dep_mul_gf2pn__parameterized0_2
   (rst_ni,
    aes_mul_gf2p2_return063_out__0,
    \a_omega_q_reg[1] ,
    aes_mul_gf2p2_return061_out__0,
    aes_mul_gf2p22_return031_out__0,
    aes_mul_gf2p22_return029_out__0,
    aes_mul_gf2p22_return013_out,
    aes_mul_gf2p22_return011_out,
    aes_mul_gf2p2_return063_out,
    aes_mul_gf2p2_return061_out,
    aes_mul_gf2p2_return045_out__0,
    \b_omega_q_reg[1] ,
    aes_mul_gf2p2_return043_out__0,
    aes_mul_gf2p22_return013_out__0,
    aes_mul_gf2p22_return011_out__0,
    aes_mul_gf2p2_return045_out,
    aes_mul_gf2p2_return043_out,
    aes_mul_gf2p22_return031_out,
    aes_mul_gf2p22_return029_out,
    rst_ni_IBUF,
    Q,
    \mul_bx_by_q_reg[2] ,
    \mul_bx_by_q_reg[2]_0 ,
    \aq_z0_q_reg[2] ,
    \mul_ax_ay_q[3]_i_8_0 ,
    \mul_ax_ay_q[3]_i_8_1 ,
    \aq_z0_q[3]_i_8_0 ,
    \aq_z0_q[3]_i_8_1 ,
    prd_i_IBUF,
    \b_yz0_q_reg[1]_0 ,
    \a_yz0_q_reg[1]_0 ,
    CLK,
    D,
    \bxz0_z1_q_reg[1]_0 );
  output rst_ni;
  output aes_mul_gf2p2_return063_out__0;
  output [1:0]\a_omega_q_reg[1] ;
  output aes_mul_gf2p2_return061_out__0;
  output aes_mul_gf2p22_return031_out__0;
  output aes_mul_gf2p22_return029_out__0;
  output aes_mul_gf2p22_return013_out;
  output aes_mul_gf2p22_return011_out;
  output aes_mul_gf2p2_return063_out;
  output aes_mul_gf2p2_return061_out;
  output aes_mul_gf2p2_return045_out__0;
  output [1:0]\b_omega_q_reg[1] ;
  output aes_mul_gf2p2_return043_out__0;
  output aes_mul_gf2p22_return013_out__0;
  output aes_mul_gf2p22_return011_out__0;
  output aes_mul_gf2p2_return045_out;
  output aes_mul_gf2p2_return043_out;
  output aes_mul_gf2p22_return031_out;
  output aes_mul_gf2p22_return029_out;
  input rst_ni_IBUF;
  input [1:0]Q;
  input [1:0]\mul_bx_by_q_reg[2] ;
  input [1:0]\mul_bx_by_q_reg[2]_0 ;
  input [1:0]\aq_z0_q_reg[2] ;
  input [1:0]\mul_ax_ay_q[3]_i_8_0 ;
  input [1:0]\mul_ax_ay_q[3]_i_8_1 ;
  input [1:0]\aq_z0_q[3]_i_8_0 ;
  input [1:0]\aq_z0_q[3]_i_8_1 ;
  input [1:0]prd_i_IBUF;
  input [1:0]\b_yz0_q_reg[1]_0 ;
  input [1:0]\a_yz0_q_reg[1]_0 ;
  input CLK;
  input [1:0]D;
  input [1:0]\bxz0_z1_q_reg[1]_0 ;

  wire \<const1> ;
  wire CLK;
  wire [1:0]D;
  wire [1:0]Q;
  wire [1:0]\a_omega_q_reg[1] ;
  wire [1:0]a_yz0_d;
  wire [1:0]a_yz0_q;
  wire [1:0]\a_yz0_q_reg[1]_0 ;
  wire aes_mul_gf2p21_return11_out;
  wire aes_mul_gf2p21_return16_out;
  wire aes_mul_gf2p22_return011_out;
  wire aes_mul_gf2p22_return011_out__0;
  wire aes_mul_gf2p22_return013_out;
  wire aes_mul_gf2p22_return013_out__0;
  wire aes_mul_gf2p22_return029_out;
  wire aes_mul_gf2p22_return029_out__0;
  wire aes_mul_gf2p22_return031_out;
  wire aes_mul_gf2p22_return031_out__0;
  wire aes_mul_gf2p2_return043_out;
  wire aes_mul_gf2p2_return043_out__0;
  wire aes_mul_gf2p2_return045_out;
  wire aes_mul_gf2p2_return045_out__0;
  wire aes_mul_gf2p2_return061_out;
  wire aes_mul_gf2p2_return061_out__0;
  wire aes_mul_gf2p2_return063_out;
  wire aes_mul_gf2p2_return063_out__0;
  wire [1:0]\aq_z0_q[3]_i_8_0 ;
  wire [1:0]\aq_z0_q[3]_i_8_1 ;
  wire [1:0]\aq_z0_q_reg[2] ;
  wire [1:0]axz0_z1_q;
  wire [1:0]\b_omega_q_reg[1] ;
  wire [1:0]b_yz0_d;
  wire [1:0]b_yz0_q;
  wire [1:0]\b_yz0_q_reg[1]_0 ;
  wire [1:0]bxz0_z1_q;
  wire [1:0]\bxz0_z1_q_reg[1]_0 ;
  wire [1:0]\mul_ax_ay_q[3]_i_8_0 ;
  wire [1:0]\mul_ax_ay_q[3]_i_8_1 ;
  wire [1:0]\mul_bx_by_q_reg[2] ;
  wire [1:0]\mul_bx_by_q_reg[2]_0 ;
  wire [1:0]prd_i_IBUF;
  wire rst_ni;
  wire rst_ni_IBUF;

  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[0]_i_1__2 
       (.I0(prd_i_IBUF[0]),
        .I1(\a_yz0_q_reg[1]_0 [0]),
        .O(a_yz0_d[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[1]_i_1__2 
       (.I0(prd_i_IBUF[1]),
        .I1(\a_yz0_q_reg[1]_0 [1]),
        .O(a_yz0_d[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_yz0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(a_yz0_d[0]),
        .Q(a_yz0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_yz0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(a_yz0_d[1]),
        .Q(a_yz0_q[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[2]_i_2 
       (.I0(\mul_bx_by_q_reg[2] [1]),
        .I1(\a_omega_q_reg[1] [1]),
        .I2(\mul_bx_by_q_reg[2] [0]),
        .I3(\a_omega_q_reg[1] [0]),
        .O(aes_mul_gf2p22_return029_out__0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[2]_i_2__0 
       (.I0(\b_omega_q_reg[1] [1]),
        .I1(\aq_z0_q_reg[2] [1]),
        .I2(\b_omega_q_reg[1] [0]),
        .I3(\aq_z0_q_reg[2] [0]),
        .O(aes_mul_gf2p22_return029_out));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \aq_z0_q[3]_i_11 
       (.I0(\aq_z0_q[3]_i_8_0 [0]),
        .I1(\aq_z0_q[3]_i_8_0 [1]),
        .I2(a_yz0_q[0]),
        .I3(\aq_z0_q[3]_i_8_1 [0]),
        .I4(a_yz0_q[1]),
        .I5(\aq_z0_q[3]_i_8_1 [1]),
        .O(aes_mul_gf2p21_return11_out));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[3]_i_2 
       (.I0(\mul_bx_by_q_reg[2] [0]),
        .I1(\a_omega_q_reg[1] [0]),
        .I2(\mul_bx_by_q_reg[2] [1]),
        .I3(\a_omega_q_reg[1] [1]),
        .O(aes_mul_gf2p22_return031_out__0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[3]_i_2__0 
       (.I0(\b_omega_q_reg[1] [0]),
        .I1(\aq_z0_q_reg[2] [0]),
        .I2(\b_omega_q_reg[1] [1]),
        .I3(\aq_z0_q_reg[2] [1]),
        .O(aes_mul_gf2p22_return031_out));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \aq_z0_q[3]_i_7 
       (.I0(\aq_z0_q[3]_i_8_0 [0]),
        .I1(\aq_z0_q[3]_i_8_1 [0]),
        .I2(a_yz0_q[0]),
        .I3(aes_mul_gf2p21_return11_out),
        .I4(bxz0_z1_q[0]),
        .O(\b_omega_q_reg[1] [0]));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \aq_z0_q[3]_i_8 
       (.I0(\aq_z0_q[3]_i_8_0 [1]),
        .I1(\aq_z0_q[3]_i_8_1 [1]),
        .I2(a_yz0_q[1]),
        .I3(aes_mul_gf2p21_return11_out),
        .I4(bxz0_z1_q[1]),
        .O(\b_omega_q_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \axz0_z1_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(D[0]),
        .Q(axz0_z1_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \axz0_z1_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(D[1]),
        .Q(axz0_z1_q[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[0]_i_1__2 
       (.I0(prd_i_IBUF[0]),
        .I1(\b_yz0_q_reg[1]_0 [0]),
        .O(b_yz0_d[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[1]_i_1__2 
       (.I0(prd_i_IBUF[1]),
        .I1(\b_yz0_q_reg[1]_0 [1]),
        .O(b_yz0_d[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \b_yz0_q[3]_i_2 
       (.I0(rst_ni_IBUF),
        .O(rst_ni));
  FDCE #(
    .INIT(1'b0)) 
    \b_yz0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(b_yz0_d[0]),
        .Q(b_yz0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_yz0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(b_yz0_d[1]),
        .Q(b_yz0_q[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[2]_i_2 
       (.I0(\mul_bx_by_q_reg[2]_0 [1]),
        .I1(\a_omega_q_reg[1] [1]),
        .I2(\mul_bx_by_q_reg[2]_0 [0]),
        .I3(\a_omega_q_reg[1] [0]),
        .O(aes_mul_gf2p22_return011_out));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[2]_i_2__0 
       (.I0(\b_omega_q_reg[1] [1]),
        .I1(Q[1]),
        .I2(\b_omega_q_reg[1] [0]),
        .I3(Q[0]),
        .O(aes_mul_gf2p22_return011_out__0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[3]_i_2 
       (.I0(\mul_bx_by_q_reg[2]_0 [0]),
        .I1(\a_omega_q_reg[1] [0]),
        .I2(\mul_bx_by_q_reg[2]_0 [1]),
        .I3(\a_omega_q_reg[1] [1]),
        .O(aes_mul_gf2p22_return013_out));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[3]_i_2__0 
       (.I0(\b_omega_q_reg[1] [0]),
        .I1(Q[0]),
        .I2(\b_omega_q_reg[1] [1]),
        .I3(Q[1]),
        .O(aes_mul_gf2p22_return013_out__0));
  FDCE #(
    .INIT(1'b0)) 
    \bxz0_z1_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(\bxz0_z1_q_reg[1]_0 [0]),
        .Q(bxz0_z1_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bxz0_z1_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(\bxz0_z1_q_reg[1]_0 [1]),
        .Q(bxz0_z1_q[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[2]_i_2 
       (.I0(\a_omega_q_reg[1] [1]),
        .I1(\aq_z0_q_reg[2] [1]),
        .I2(\a_omega_q_reg[1] [0]),
        .I3(\aq_z0_q_reg[2] [0]),
        .O(aes_mul_gf2p2_return061_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[2]_i_3 
       (.I0(Q[1]),
        .I1(\a_omega_q_reg[1] [1]),
        .I2(Q[0]),
        .I3(\a_omega_q_reg[1] [0]),
        .O(aes_mul_gf2p2_return061_out__0));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \mul_ax_ay_q[3]_i_10 
       (.I0(\mul_ax_ay_q[3]_i_8_0 [0]),
        .I1(\mul_ax_ay_q[3]_i_8_0 [1]),
        .I2(b_yz0_q[0]),
        .I3(\mul_ax_ay_q[3]_i_8_1 [0]),
        .I4(b_yz0_q[1]),
        .I5(\mul_ax_ay_q[3]_i_8_1 [1]),
        .O(aes_mul_gf2p21_return16_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[3]_i_3__0 
       (.I0(Q[0]),
        .I1(\a_omega_q_reg[1] [0]),
        .I2(Q[1]),
        .I3(\a_omega_q_reg[1] [1]),
        .O(aes_mul_gf2p2_return063_out__0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[3]_i_4 
       (.I0(\a_omega_q_reg[1] [0]),
        .I1(\aq_z0_q_reg[2] [0]),
        .I2(\a_omega_q_reg[1] [1]),
        .I3(\aq_z0_q_reg[2] [1]),
        .O(aes_mul_gf2p2_return063_out));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \mul_ax_ay_q[3]_i_6 
       (.I0(\mul_ax_ay_q[3]_i_8_0 [0]),
        .I1(\mul_ax_ay_q[3]_i_8_1 [0]),
        .I2(b_yz0_q[0]),
        .I3(aes_mul_gf2p21_return16_out),
        .I4(axz0_z1_q[0]),
        .O(\a_omega_q_reg[1] [0]));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \mul_ax_ay_q[3]_i_8 
       (.I0(\mul_ax_ay_q[3]_i_8_0 [1]),
        .I1(\mul_ax_ay_q[3]_i_8_1 [1]),
        .I2(b_yz0_q[1]),
        .I3(aes_mul_gf2p21_return16_out),
        .I4(axz0_z1_q[1]),
        .O(\a_omega_q_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[2]_i_2 
       (.I0(\mul_bx_by_q_reg[2] [1]),
        .I1(\b_omega_q_reg[1] [1]),
        .I2(\mul_bx_by_q_reg[2] [0]),
        .I3(\b_omega_q_reg[1] [0]),
        .O(aes_mul_gf2p2_return043_out__0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[2]_i_2__0 
       (.I0(\b_omega_q_reg[1] [1]),
        .I1(\mul_bx_by_q_reg[2]_0 [1]),
        .I2(\b_omega_q_reg[1] [0]),
        .I3(\mul_bx_by_q_reg[2]_0 [0]),
        .O(aes_mul_gf2p2_return043_out));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[3]_i_2 
       (.I0(\mul_bx_by_q_reg[2] [0]),
        .I1(\b_omega_q_reg[1] [0]),
        .I2(\mul_bx_by_q_reg[2] [1]),
        .I3(\b_omega_q_reg[1] [1]),
        .O(aes_mul_gf2p2_return045_out__0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[3]_i_2__0 
       (.I0(\b_omega_q_reg[1] [0]),
        .I1(\mul_bx_by_q_reg[2]_0 [0]),
        .I2(\b_omega_q_reg[1] [1]),
        .I3(\mul_bx_by_q_reg[2]_0 [1]),
        .O(aes_mul_gf2p2_return045_out));
endmodule

module aes_dom_indep_mul_gf2pn
   (\a_y1_qqq_reg[0] ,
    p_1_in29_in,
    \b_y1_qqq_reg[0] ,
    p_0_in7_in,
    data_o_OBUF,
    \aq_z0_q_reg[3]_0 ,
    \mul_ax_ay_q_reg[3]_0 ,
    mask0_o_OBUF,
    \bq_z0_q_reg[3]_0 ,
    \mul_bx_by_q_reg[3]_0 ,
    Q,
    \mul_bx_by_q_reg[2]_0 ,
    \data_o[2] ,
    \data_o[5] ,
    \data_o[5]_0 ,
    \mask0_o[2] ,
    \mask0_o[5] ,
    \mask0_o[5]_0 ,
    D,
    CLK,
    \bq_z0_q_reg[0]_0 ,
    \mul_ax_ay_q_reg[3]_1 ,
    \bq_z0_q_reg[3]_1 ,
    \mul_bx_by_q_reg[3]_1 );
  output \a_y1_qqq_reg[0] ;
  output p_1_in29_in;
  output \b_y1_qqq_reg[0] ;
  output p_0_in7_in;
  output [2:0]data_o_OBUF;
  output [1:0]\aq_z0_q_reg[3]_0 ;
  output [1:0]\mul_ax_ay_q_reg[3]_0 ;
  output [2:0]mask0_o_OBUF;
  output [1:0]\bq_z0_q_reg[3]_0 ;
  output [1:0]\mul_bx_by_q_reg[3]_0 ;
  input [3:0]Q;
  input [3:0]\mul_bx_by_q_reg[2]_0 ;
  input \data_o[2] ;
  input [1:0]\data_o[5] ;
  input [1:0]\data_o[5]_0 ;
  input \mask0_o[2] ;
  input [1:0]\mask0_o[5] ;
  input [1:0]\mask0_o[5]_0 ;
  input [3:0]D;
  input CLK;
  input \bq_z0_q_reg[0]_0 ;
  input [3:0]\mul_ax_ay_q_reg[3]_1 ;
  input [3:0]\bq_z0_q_reg[3]_1 ;
  input [3:0]\mul_bx_by_q_reg[3]_1 ;

  wire \<const1> ;
  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire \a_y1_qqq_reg[0] ;
  wire [2:0]aq_z0_q;
  wire [1:0]\aq_z0_q_reg[3]_0 ;
  wire \b_y1_qqq_reg[0] ;
  wire [2:0]bq_z0_q;
  wire \bq_z0_q_reg[0]_0 ;
  wire [1:0]\bq_z0_q_reg[3]_0 ;
  wire [3:0]\bq_z0_q_reg[3]_1 ;
  wire \data_o[2] ;
  wire [1:0]\data_o[5] ;
  wire [1:0]\data_o[5]_0 ;
  wire [2:0]data_o_OBUF;
  wire \mask0_o[2] ;
  wire [1:0]\mask0_o[5] ;
  wire [1:0]\mask0_o[5]_0 ;
  wire [2:0]mask0_o_OBUF;
  wire [2:0]mul_ax_ay_q;
  wire [1:0]\mul_ax_ay_q_reg[3]_0 ;
  wire [3:0]\mul_ax_ay_q_reg[3]_1 ;
  wire [2:0]mul_bx_by_q;
  wire [3:0]\mul_bx_by_q_reg[2]_0 ;
  wire [1:0]\mul_bx_by_q_reg[3]_0 ;
  wire [3:0]\mul_bx_by_q_reg[3]_1 ;
  wire p_0_in7_in;
  wire p_1_in29_in;

  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_4 
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(p_1_in29_in));
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_6 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\a_y1_qqq_reg[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \aq_z0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(D[0]),
        .Q(aq_z0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aq_z0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(D[1]),
        .Q(\aq_z0_q_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \aq_z0_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(D[2]),
        .Q(aq_z0_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \aq_z0_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(D[3]),
        .Q(\aq_z0_q_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \bq_z0_q[3]_i_3 
       (.I0(\mul_bx_by_q_reg[2]_0 [1]),
        .I1(\mul_bx_by_q_reg[2]_0 [3]),
        .O(p_0_in7_in));
  LUT2 #(
    .INIT(4'h6)) 
    \bq_z0_q[3]_i_4 
       (.I0(\mul_bx_by_q_reg[2]_0 [0]),
        .I1(\mul_bx_by_q_reg[2]_0 [2]),
        .O(\b_y1_qqq_reg[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \bq_z0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\bq_z0_q_reg[3]_1 [0]),
        .Q(bq_z0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bq_z0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\bq_z0_q_reg[3]_1 [1]),
        .Q(\bq_z0_q_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bq_z0_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\bq_z0_q_reg[3]_1 [2]),
        .Q(bq_z0_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bq_z0_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\bq_z0_q_reg[3]_1 [3]),
        .Q(\bq_z0_q_reg[3]_0 [1]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \data_o_OBUF[2]_inst_i_1 
       (.I0(aq_z0_q[0]),
        .I1(mul_ax_ay_q[0]),
        .I2(aq_z0_q[2]),
        .I3(mul_ax_ay_q[2]),
        .I4(\data_o[2] ),
        .O(data_o_OBUF[0]));
  LUT4 #(
    .INIT(16'h9669)) 
    \data_o_OBUF[5]_inst_i_1 
       (.I0(mul_ax_ay_q[0]),
        .I1(aq_z0_q[0]),
        .I2(\data_o[5] [1]),
        .I3(\data_o[5]_0 [1]),
        .O(data_o_OBUF[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \data_o_OBUF[7]_inst_i_1 
       (.I0(\mul_ax_ay_q_reg[3]_0 [1]),
        .I1(\aq_z0_q_reg[3]_0 [1]),
        .I2(\data_o[5] [0]),
        .I3(\data_o[5]_0 [0]),
        .O(data_o_OBUF[2]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \mask0_o_OBUF[2]_inst_i_1 
       (.I0(bq_z0_q[0]),
        .I1(mul_bx_by_q[0]),
        .I2(bq_z0_q[2]),
        .I3(mul_bx_by_q[2]),
        .I4(\mask0_o[2] ),
        .O(mask0_o_OBUF[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \mask0_o_OBUF[5]_inst_i_1 
       (.I0(mul_bx_by_q[0]),
        .I1(bq_z0_q[0]),
        .I2(\mask0_o[5] [1]),
        .I3(\mask0_o[5]_0 [1]),
        .O(mask0_o_OBUF[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \mask0_o_OBUF[7]_inst_i_1 
       (.I0(\mul_bx_by_q_reg[3]_0 [1]),
        .I1(\bq_z0_q_reg[3]_0 [1]),
        .I2(\mask0_o[5] [0]),
        .I3(\mask0_o[5]_0 [0]),
        .O(mask0_o_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_ax_ay_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\mul_ax_ay_q_reg[3]_1 [0]),
        .Q(mul_ax_ay_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_ax_ay_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\mul_ax_ay_q_reg[3]_1 [1]),
        .Q(\mul_ax_ay_q_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_ax_ay_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\mul_ax_ay_q_reg[3]_1 [2]),
        .Q(mul_ax_ay_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_ax_ay_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\mul_ax_ay_q_reg[3]_1 [3]),
        .Q(\mul_ax_ay_q_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_bx_by_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\mul_bx_by_q_reg[3]_1 [0]),
        .Q(mul_bx_by_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_bx_by_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\mul_bx_by_q_reg[3]_1 [1]),
        .Q(\mul_bx_by_q_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_bx_by_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\mul_bx_by_q_reg[3]_1 [2]),
        .Q(mul_bx_by_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_bx_by_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\bq_z0_q_reg[0]_0 ),
        .D(\mul_bx_by_q_reg[3]_1 [3]),
        .Q(\mul_bx_by_q_reg[3]_0 [1]));
endmodule

(* ORIG_REF_NAME = "aes_dom_indep_mul_gf2pn" *) 
module aes_dom_indep_mul_gf2pn_0
   (\b_y0_qqq_reg[0] ,
    p_0_in28_in,
    \a_y0_qqq_reg[0] ,
    p_1_in8_in,
    data_o_OBUF,
    \aq_z0_q_reg[2]_0 ,
    \mul_ax_ay_q_reg[2]_0 ,
    \aq_z0_q_reg[1]_0 ,
    mask0_o_OBUF,
    \bq_z0_q_reg[2]_0 ,
    \mul_bx_by_q_reg[2]_0 ,
    \bq_z0_q_reg[1]_0 ,
    Q,
    \bq_z0_q_reg[3]_0 ,
    \data_o[4] ,
    \data_o[4]_0 ,
    \mask0_o[4] ,
    \mask0_o[4]_0 ,
    D,
    CLK,
    \mul_ax_ay_q_reg[3]_0 ,
    \mul_ax_ay_q_reg[3]_1 ,
    \bq_z0_q_reg[3]_1 ,
    \mul_bx_by_q_reg[3]_0 );
  output \b_y0_qqq_reg[0] ;
  output p_0_in28_in;
  output \a_y0_qqq_reg[0] ;
  output p_1_in8_in;
  output [4:0]data_o_OBUF;
  output [1:0]\aq_z0_q_reg[2]_0 ;
  output [1:0]\mul_ax_ay_q_reg[2]_0 ;
  output \aq_z0_q_reg[1]_0 ;
  output [4:0]mask0_o_OBUF;
  output [1:0]\bq_z0_q_reg[2]_0 ;
  output [1:0]\mul_bx_by_q_reg[2]_0 ;
  output \bq_z0_q_reg[1]_0 ;
  input [3:0]Q;
  input [3:0]\bq_z0_q_reg[3]_0 ;
  input [1:0]\data_o[4] ;
  input [1:0]\data_o[4]_0 ;
  input [1:0]\mask0_o[4] ;
  input [1:0]\mask0_o[4]_0 ;
  input [3:0]D;
  input CLK;
  input \mul_ax_ay_q_reg[3]_0 ;
  input [3:0]\mul_ax_ay_q_reg[3]_1 ;
  input [3:0]\bq_z0_q_reg[3]_1 ;
  input [3:0]\mul_bx_by_q_reg[3]_0 ;

  wire \<const1> ;
  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire \a_y0_qqq_reg[0] ;
  wire [3:0]aq_z0_q;
  wire \aq_z0_q_reg[1]_0 ;
  wire [1:0]\aq_z0_q_reg[2]_0 ;
  wire \b_y0_qqq_reg[0] ;
  wire [3:0]bq_z0_q;
  wire \bq_z0_q_reg[1]_0 ;
  wire [1:0]\bq_z0_q_reg[2]_0 ;
  wire [3:0]\bq_z0_q_reg[3]_0 ;
  wire [3:0]\bq_z0_q_reg[3]_1 ;
  wire [1:0]\data_o[4] ;
  wire [1:0]\data_o[4]_0 ;
  wire [4:0]data_o_OBUF;
  wire [1:0]\mask0_o[4] ;
  wire [1:0]\mask0_o[4]_0 ;
  wire [4:0]mask0_o_OBUF;
  wire [3:0]mul_ax_ay_q;
  wire [1:0]\mul_ax_ay_q_reg[2]_0 ;
  wire \mul_ax_ay_q_reg[3]_0 ;
  wire [3:0]\mul_ax_ay_q_reg[3]_1 ;
  wire [3:0]mul_bx_by_q;
  wire [1:0]\mul_bx_by_q_reg[2]_0 ;
  wire [3:0]\mul_bx_by_q_reg[3]_0 ;
  wire p_0_in28_in;
  wire p_1_in8_in;

  VCC VCC
       (.P(\<const1> ));
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_3__0 
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(p_0_in28_in));
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_4__0 
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\b_y0_qqq_reg[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \aq_z0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(D[0]),
        .Q(aq_z0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \aq_z0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(D[1]),
        .Q(\aq_z0_q_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \aq_z0_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(D[2]),
        .Q(\aq_z0_q_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \aq_z0_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(D[3]),
        .Q(aq_z0_q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bq_z0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\bq_z0_q_reg[3]_1 [0]),
        .Q(bq_z0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bq_z0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\bq_z0_q_reg[3]_1 [1]),
        .Q(\bq_z0_q_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bq_z0_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\bq_z0_q_reg[3]_1 [2]),
        .Q(\bq_z0_q_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bq_z0_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\bq_z0_q_reg[3]_1 [3]),
        .Q(bq_z0_q[3]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \data_o_OBUF[0]_inst_i_1 
       (.I0(aq_z0_q[0]),
        .I1(mul_ax_ay_q[0]),
        .I2(\data_o[4] [0]),
        .I3(\data_o[4]_0 [0]),
        .I4(\mul_ax_ay_q_reg[2]_0 [1]),
        .I5(\aq_z0_q_reg[2]_0 [1]),
        .O(data_o_OBUF[0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \data_o_OBUF[1]_inst_i_1 
       (.I0(aq_z0_q[0]),
        .I1(mul_ax_ay_q[0]),
        .I2(\data_o[4] [0]),
        .I3(\data_o[4]_0 [0]),
        .I4(\mul_ax_ay_q_reg[2]_0 [0]),
        .I5(\aq_z0_q_reg[2]_0 [0]),
        .O(data_o_OBUF[1]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \data_o_OBUF[3]_inst_i_1 
       (.I0(aq_z0_q[0]),
        .I1(mul_ax_ay_q[0]),
        .I2(aq_z0_q[3]),
        .I3(mul_ax_ay_q[3]),
        .I4(\aq_z0_q_reg[1]_0 ),
        .O(data_o_OBUF[2]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \data_o_OBUF[3]_inst_i_2 
       (.I0(\aq_z0_q_reg[2]_0 [0]),
        .I1(\mul_ax_ay_q_reg[2]_0 [0]),
        .I2(\data_o[4] [1]),
        .I3(\data_o[4]_0 [1]),
        .I4(\mul_ax_ay_q_reg[2]_0 [1]),
        .I5(\aq_z0_q_reg[2]_0 [1]),
        .O(\aq_z0_q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \data_o_OBUF[4]_inst_i_1 
       (.I0(mul_ax_ay_q[3]),
        .I1(aq_z0_q[3]),
        .I2(\aq_z0_q_reg[2]_0 [0]),
        .I3(\mul_ax_ay_q_reg[2]_0 [0]),
        .I4(\data_o[4] [1]),
        .I5(\data_o[4]_0 [1]),
        .O(data_o_OBUF[3]));
  LUT4 #(
    .INIT(16'h9669)) 
    \data_o_OBUF[6]_inst_i_1 
       (.I0(mul_ax_ay_q[3]),
        .I1(aq_z0_q[3]),
        .I2(\data_o[4]_0 [1]),
        .I3(\data_o[4] [1]),
        .O(data_o_OBUF[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \mask0_o_OBUF[0]_inst_i_1 
       (.I0(bq_z0_q[0]),
        .I1(mul_bx_by_q[0]),
        .I2(\mask0_o[4] [0]),
        .I3(\mask0_o[4]_0 [0]),
        .I4(\mul_bx_by_q_reg[2]_0 [1]),
        .I5(\bq_z0_q_reg[2]_0 [1]),
        .O(mask0_o_OBUF[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \mask0_o_OBUF[1]_inst_i_1 
       (.I0(bq_z0_q[0]),
        .I1(mul_bx_by_q[0]),
        .I2(\mask0_o[4] [0]),
        .I3(\mask0_o[4]_0 [0]),
        .I4(\mul_bx_by_q_reg[2]_0 [0]),
        .I5(\bq_z0_q_reg[2]_0 [0]),
        .O(mask0_o_OBUF[1]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \mask0_o_OBUF[3]_inst_i_1 
       (.I0(bq_z0_q[0]),
        .I1(mul_bx_by_q[0]),
        .I2(bq_z0_q[3]),
        .I3(mul_bx_by_q[3]),
        .I4(\bq_z0_q_reg[1]_0 ),
        .O(mask0_o_OBUF[2]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \mask0_o_OBUF[3]_inst_i_2 
       (.I0(\bq_z0_q_reg[2]_0 [0]),
        .I1(\mul_bx_by_q_reg[2]_0 [0]),
        .I2(\mask0_o[4] [1]),
        .I3(\mask0_o[4]_0 [1]),
        .I4(\mul_bx_by_q_reg[2]_0 [1]),
        .I5(\bq_z0_q_reg[2]_0 [1]),
        .O(\bq_z0_q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \mask0_o_OBUF[4]_inst_i_1 
       (.I0(mul_bx_by_q[3]),
        .I1(bq_z0_q[3]),
        .I2(\bq_z0_q_reg[2]_0 [0]),
        .I3(\mul_bx_by_q_reg[2]_0 [0]),
        .I4(\mask0_o[4] [1]),
        .I5(\mask0_o[4]_0 [1]),
        .O(mask0_o_OBUF[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \mask0_o_OBUF[6]_inst_i_1 
       (.I0(mul_bx_by_q[3]),
        .I1(bq_z0_q[3]),
        .I2(\mask0_o[4]_0 [1]),
        .I3(\mask0_o[4] [1]),
        .O(mask0_o_OBUF[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ax_ay_q[2]_i_2__0 
       (.I0(\bq_z0_q_reg[3]_0 [1]),
        .I1(\bq_z0_q_reg[3]_0 [3]),
        .O(p_1_in8_in));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ax_ay_q[3]_i_2__0 
       (.I0(\bq_z0_q_reg[3]_0 [0]),
        .I1(\bq_z0_q_reg[3]_0 [2]),
        .O(\a_y0_qqq_reg[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_ax_ay_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\mul_ax_ay_q_reg[3]_1 [0]),
        .Q(mul_ax_ay_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_ax_ay_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\mul_ax_ay_q_reg[3]_1 [1]),
        .Q(\mul_ax_ay_q_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_ax_ay_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\mul_ax_ay_q_reg[3]_1 [2]),
        .Q(\mul_ax_ay_q_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_ax_ay_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\mul_ax_ay_q_reg[3]_1 [3]),
        .Q(mul_ax_ay_q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_bx_by_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\mul_bx_by_q_reg[3]_0 [0]),
        .Q(mul_bx_by_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_bx_by_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\mul_bx_by_q_reg[3]_0 [1]),
        .Q(\mul_bx_by_q_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_bx_by_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\mul_bx_by_q_reg[3]_0 [2]),
        .Q(\mul_bx_by_q_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \mul_bx_by_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\mul_ax_ay_q_reg[3]_0 ),
        .D(\mul_bx_by_q_reg[3]_0 [3]),
        .Q(mul_bx_by_q[3]));
endmodule

module aes_dom_inverse_gf2p4
   (rst_ni,
    \a_y0_qqq_reg[1] ,
    D,
    \b_y1_qqq_reg[2] ,
    \a_y1_qqq_reg[1] ,
    \b_y0_qqq_reg[1] ,
    \a_y0_qqq_reg[2] ,
    \b_y1_qqq_reg[1] ,
    \a_y1_qqq_reg[2] ,
    rst_ni_IBUF,
    \bq_z0_q_reg[3] ,
    Q,
    p_1_in8_in,
    p_0_in28_in,
    \mul_bx_by_q_reg[3] ,
    prd_i_IBUF,
    \mul_bx_by_q_reg[3]_0 ,
    p_0_in7_in,
    \mul_bx_by_q_reg[3]_1 ,
    \mul_bx_by_q_reg[3]_2 ,
    \aq_z0_q_reg[3] ,
    \mul_ax_ay_q_reg[3] ,
    p_1_in29_in,
    \b_yz0_q_reg[1] ,
    CLK,
    a_gamma,
    \axz0_z1_q_reg[1] ,
    \a_yz0_q_reg[1] ,
    b_gamma,
    \bxz0_z1_q_reg[1] ,
    \a_gamma_ss_q_reg[1]_0 ,
    \b_gamma_ss_q_reg[1]_0 );
  output rst_ni;
  output [3:0]\a_y0_qqq_reg[1] ;
  output [3:0]D;
  output [3:0]\b_y1_qqq_reg[2] ;
  output [3:0]\a_y1_qqq_reg[1] ;
  output [3:0]\b_y0_qqq_reg[1] ;
  output [3:0]\a_y0_qqq_reg[2] ;
  output [3:0]\b_y1_qqq_reg[1] ;
  output [3:0]\a_y1_qqq_reg[2] ;
  input rst_ni_IBUF;
  input \bq_z0_q_reg[3] ;
  input [3:0]Q;
  input p_1_in8_in;
  input p_0_in28_in;
  input \mul_bx_by_q_reg[3] ;
  input [15:0]prd_i_IBUF;
  input [3:0]\mul_bx_by_q_reg[3]_0 ;
  input p_0_in7_in;
  input \mul_bx_by_q_reg[3]_1 ;
  input [3:0]\mul_bx_by_q_reg[3]_2 ;
  input \aq_z0_q_reg[3] ;
  input [3:0]\mul_ax_ay_q_reg[3] ;
  input p_1_in29_in;
  input [1:0]\b_yz0_q_reg[1] ;
  input CLK;
  input [3:0]a_gamma;
  input [1:0]\axz0_z1_q_reg[1] ;
  input [1:0]\a_yz0_q_reg[1] ;
  input [3:0]b_gamma;
  input [1:0]\bxz0_z1_q_reg[1] ;
  input [1:0]\a_gamma_ss_q_reg[1]_0 ;
  input [1:0]\b_gamma_ss_q_reg[1]_0 ;

  wire \<const1> ;
  wire CLK;
  wire [3:0]D;
  wire [3:0]Q;
  wire [3:0]a_gamma;
  wire [1:0]a_gamma0_q;
  wire [1:0]a_gamma0_qq;
  wire [1:0]a_gamma1_q;
  wire [1:0]a_gamma1_qq;
  wire [1:0]a_gamma_ss_q;
  wire [1:0]\a_gamma_ss_q_reg[1]_0 ;
  wire [1:0]a_omega_q;
  wire [3:2]a_theta;
  wire [3:0]\a_y0_qqq_reg[1] ;
  wire [3:0]\a_y0_qqq_reg[2] ;
  wire [3:0]\a_y1_qqq_reg[1] ;
  wire [3:0]\a_y1_qqq_reg[2] ;
  wire [1:0]a_yz0_d;
  wire [1:0]\a_yz0_q_reg[1] ;
  wire aes_mul_gf2p22_return011_out;
  wire aes_mul_gf2p22_return011_out__0;
  wire aes_mul_gf2p22_return013_out;
  wire aes_mul_gf2p22_return013_out__0;
  wire aes_mul_gf2p22_return029_out;
  wire aes_mul_gf2p22_return029_out__0;
  wire aes_mul_gf2p22_return031_out;
  wire aes_mul_gf2p22_return031_out__0;
  wire aes_mul_gf2p2_return043_out;
  wire aes_mul_gf2p2_return043_out__0;
  wire aes_mul_gf2p2_return045_out;
  wire aes_mul_gf2p2_return045_out__0;
  wire aes_mul_gf2p2_return061_out;
  wire aes_mul_gf2p2_return061_out__0;
  wire aes_mul_gf2p2_return063_out;
  wire aes_mul_gf2p2_return063_out__0;
  wire [1:0]aes_square_gf2p2_return;
  wire \aq_z0_q_reg[3] ;
  wire [1:0]axz0_z1_d;
  wire [1:0]\axz0_z1_q_reg[1] ;
  wire [3:0]b_gamma;
  wire [1:0]b_gamma0_q;
  wire [1:0]b_gamma0_qq;
  wire [1:0]b_gamma1_q;
  wire [1:0]b_gamma1_qq;
  wire [1:0]b_gamma_ss_q;
  wire [1:0]\b_gamma_ss_q_reg[1]_0 ;
  wire [1:0]b_omega_q;
  wire [3:2]b_theta;
  wire [3:0]\b_y0_qqq_reg[1] ;
  wire [3:0]\b_y1_qqq_reg[1] ;
  wire [3:0]\b_y1_qqq_reg[2] ;
  wire [1:0]b_yz0_d;
  wire [1:0]\b_yz0_q_reg[1] ;
  wire \bq_z0_q_reg[3] ;
  wire [1:0]bxz0_z1_d;
  wire [1:0]\bxz0_z1_q_reg[1] ;
  wire [1:0]g1_out;
  wire [3:0]\mul_ax_ay_q_reg[3] ;
  wire \mul_bx_by_q_reg[3] ;
  wire [3:0]\mul_bx_by_q_reg[3]_0 ;
  wire \mul_bx_by_q_reg[3]_1 ;
  wire [3:0]\mul_bx_by_q_reg[3]_2 ;
  wire p_0_in28_in;
  wire p_0_in7_in;
  wire p_1_in29_in;
  wire p_1_in8_in;
  wire [15:0]prd_i_IBUF;
  wire rst_ni;
  wire rst_ni_IBUF;

  VCC VCC
       (.P(\<const1> ));
  FDCE #(
    .INIT(1'b0)) 
    \a_gamma0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(a_gamma[0]),
        .Q(a_gamma0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_gamma0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(a_gamma[1]),
        .Q(a_gamma0_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_gamma0_qq_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(a_gamma0_q[0]),
        .Q(a_gamma0_qq[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_gamma0_qq_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(a_gamma0_q[1]),
        .Q(a_gamma0_qq[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_gamma1_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(a_gamma[2]),
        .Q(a_gamma1_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_gamma1_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(a_gamma[3]),
        .Q(a_gamma1_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_gamma1_qq_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(a_gamma1_q[0]),
        .Q(a_gamma1_qq[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_gamma1_qq_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(a_gamma1_q[1]),
        .Q(a_gamma1_qq[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_gamma_ss_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(\a_gamma_ss_q_reg[1]_0 [0]),
        .Q(a_gamma_ss_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_gamma_ss_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(\a_gamma_ss_q_reg[1]_0 [1]),
        .Q(a_gamma_ss_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_omega_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(aes_square_gf2p2_return[0]),
        .Q(a_omega_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_omega_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(aes_square_gf2p2_return[1]),
        .Q(a_omega_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_gamma0_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(b_gamma[0]),
        .Q(b_gamma0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_gamma0_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(b_gamma[1]),
        .Q(b_gamma0_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_gamma0_qq_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(b_gamma0_q[0]),
        .Q(b_gamma0_qq[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_gamma0_qq_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(b_gamma0_q[1]),
        .Q(b_gamma0_qq[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_gamma1_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(b_gamma[2]),
        .Q(b_gamma1_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_gamma1_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(b_gamma[3]),
        .Q(b_gamma1_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_gamma1_qq_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(b_gamma1_q[0]),
        .Q(b_gamma1_qq[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_gamma1_qq_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(b_gamma1_q[1]),
        .Q(b_gamma1_qq[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_gamma_ss_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(\b_gamma_ss_q_reg[1]_0 [0]),
        .Q(b_gamma_ss_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_gamma_ss_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(\b_gamma_ss_q_reg[1]_0 [1]),
        .Q(b_gamma_ss_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_omega_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(g1_out[1]),
        .Q(b_omega_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_omega_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(rst_ni),
        .D(g1_out[0]),
        .Q(b_omega_q[1]));
  aes_dom_dep_mul_gf2pn__parameterized0 dep_stage2
       (.CLK(CLK),
        .D(axz0_z1_d),
        .Q(a_gamma_ss_q),
        .\a_omega_q_reg[0] (a_gamma0_q),
        .\a_omega_q_reg[0]_0 (a_gamma1_q),
        .\a_yz0_q_reg[1]_0 (\a_yz0_q_reg[1] ),
        .aes_square_gf2p2_return(aes_square_gf2p2_return),
        .\axz0_z1_q_reg[1]_0 (\axz0_z1_q_reg[1] ),
        .\b_omega_q_reg[0] (b_gamma_ss_q),
        .\b_omega_q_reg[0]_0 (b_gamma0_q),
        .\b_omega_q_reg[0]_1 (b_gamma1_q),
        .\b_yz0_q_reg[1]_0 (\b_yz0_q_reg[1] ),
        .\bxz0_z1_q_reg[1]_0 (rst_ni),
        .\bxz0_z1_q_reg[1]_1 (\bxz0_z1_q_reg[1] ),
        .g1_out(g1_out),
        .\prd_i[15] (bxz0_z1_d),
        .\prd_i[17] (a_yz0_d),
        .\prd_i[17]_0 (b_yz0_d),
        .prd_i_IBUF(prd_i_IBUF[5:0]));
  aes_dom_dep_mul_gf2pn__parameterized0_1 dep_stage3A
       (.CLK(CLK),
        .D(D),
        .Q(Q),
        .\a_y0_qqq_reg[1] (\a_y0_qqq_reg[1] ),
        .\a_y0_qqq_reg[2] (\a_y0_qqq_reg[2] ),
        .\a_y1_qqq_reg[1] (\a_y1_qqq_reg[1] ),
        .\a_y1_qqq_reg[2] (\a_y1_qqq_reg[2] ),
        .\a_yz0_q_reg[1]_0 (a_yz0_d),
        .aes_mul_gf2p22_return011_out(aes_mul_gf2p22_return011_out),
        .aes_mul_gf2p22_return011_out__0(aes_mul_gf2p22_return011_out__0),
        .aes_mul_gf2p22_return013_out(aes_mul_gf2p22_return013_out),
        .aes_mul_gf2p22_return013_out__0(aes_mul_gf2p22_return013_out__0),
        .aes_mul_gf2p22_return029_out(aes_mul_gf2p22_return029_out),
        .aes_mul_gf2p22_return029_out__0(aes_mul_gf2p22_return029_out__0),
        .aes_mul_gf2p22_return031_out(aes_mul_gf2p22_return031_out),
        .aes_mul_gf2p22_return031_out__0(aes_mul_gf2p22_return031_out__0),
        .aes_mul_gf2p2_return043_out(aes_mul_gf2p2_return043_out),
        .aes_mul_gf2p2_return043_out__0(aes_mul_gf2p2_return043_out__0),
        .aes_mul_gf2p2_return045_out(aes_mul_gf2p2_return045_out),
        .aes_mul_gf2p2_return045_out__0(aes_mul_gf2p2_return045_out__0),
        .aes_mul_gf2p2_return061_out(aes_mul_gf2p2_return061_out),
        .aes_mul_gf2p2_return061_out__0(aes_mul_gf2p2_return061_out__0),
        .aes_mul_gf2p2_return063_out(aes_mul_gf2p2_return063_out),
        .aes_mul_gf2p2_return063_out__0(aes_mul_gf2p2_return063_out__0),
        .\aq_z0_q[3]_i_9_0 (b_gamma1_qq),
        .\aq_z0_q[3]_i_9_1 (b_omega_q),
        .\aq_z0_q_reg[3] (a_theta),
        .\aq_z0_q_reg[3]_0 (\aq_z0_q_reg[3] ),
        .\aq_z0_q_reg[3]_1 (b_theta),
        .\axz0_z1_q_reg[1]_0 (a_gamma1_q),
        .\b_y0_qqq_reg[1] (\b_y0_qqq_reg[1] ),
        .\b_y1_qqq_reg[1] (\b_y1_qqq_reg[1] ),
        .\b_y1_qqq_reg[2] (\b_y1_qqq_reg[2] ),
        .\b_yz0_q_reg[1]_0 (b_yz0_d),
        .\bq_z0_q_reg[3] (\bq_z0_q_reg[3] ),
        .\bxz0_z1_q_reg[1]_0 (b_gamma1_q),
        .\bxz0_z1_q_reg[1]_1 (rst_ni),
        .\mul_ax_ay_q[3]_i_7_0 (a_gamma1_qq),
        .\mul_ax_ay_q[3]_i_7_1 (a_omega_q),
        .\mul_ax_ay_q_reg[3] (\mul_ax_ay_q_reg[3] ),
        .\mul_bx_by_q_reg[3] (\mul_bx_by_q_reg[3] ),
        .\mul_bx_by_q_reg[3]_0 (\mul_bx_by_q_reg[3]_0 ),
        .\mul_bx_by_q_reg[3]_1 (\mul_bx_by_q_reg[3]_1 ),
        .\mul_bx_by_q_reg[3]_2 (\mul_bx_by_q_reg[3]_2 ),
        .p_0_in28_in(p_0_in28_in),
        .p_0_in7_in(p_0_in7_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in8_in(p_1_in8_in),
        .prd_i_IBUF(prd_i_IBUF[15:4]));
  aes_dom_dep_mul_gf2pn__parameterized0_2 dep_stage3B
       (.CLK(CLK),
        .D(axz0_z1_d),
        .Q(Q[3:2]),
        .\a_omega_q_reg[1] (a_theta),
        .\a_yz0_q_reg[1]_0 (a_gamma0_q),
        .aes_mul_gf2p22_return011_out(aes_mul_gf2p22_return011_out),
        .aes_mul_gf2p22_return011_out__0(aes_mul_gf2p22_return011_out__0),
        .aes_mul_gf2p22_return013_out(aes_mul_gf2p22_return013_out),
        .aes_mul_gf2p22_return013_out__0(aes_mul_gf2p22_return013_out__0),
        .aes_mul_gf2p22_return029_out(aes_mul_gf2p22_return029_out),
        .aes_mul_gf2p22_return029_out__0(aes_mul_gf2p22_return029_out__0),
        .aes_mul_gf2p22_return031_out(aes_mul_gf2p22_return031_out),
        .aes_mul_gf2p22_return031_out__0(aes_mul_gf2p22_return031_out__0),
        .aes_mul_gf2p2_return043_out(aes_mul_gf2p2_return043_out),
        .aes_mul_gf2p2_return043_out__0(aes_mul_gf2p2_return043_out__0),
        .aes_mul_gf2p2_return045_out(aes_mul_gf2p2_return045_out),
        .aes_mul_gf2p2_return045_out__0(aes_mul_gf2p2_return045_out__0),
        .aes_mul_gf2p2_return061_out(aes_mul_gf2p2_return061_out),
        .aes_mul_gf2p2_return061_out__0(aes_mul_gf2p2_return061_out__0),
        .aes_mul_gf2p2_return063_out(aes_mul_gf2p2_return063_out),
        .aes_mul_gf2p2_return063_out__0(aes_mul_gf2p2_return063_out__0),
        .\aq_z0_q[3]_i_8_0 (b_omega_q),
        .\aq_z0_q[3]_i_8_1 (b_gamma0_qq),
        .\aq_z0_q_reg[2] (\mul_ax_ay_q_reg[3] [3:2]),
        .\b_omega_q_reg[1] (b_theta),
        .\b_yz0_q_reg[1]_0 (b_gamma0_q),
        .\bxz0_z1_q_reg[1]_0 (bxz0_z1_d),
        .\mul_ax_ay_q[3]_i_8_0 (a_omega_q),
        .\mul_ax_ay_q[3]_i_8_1 (a_gamma0_qq),
        .\mul_bx_by_q_reg[2] (\mul_bx_by_q_reg[3]_0 [3:2]),
        .\mul_bx_by_q_reg[2]_0 (\mul_bx_by_q_reg[3]_2 [3:2]),
        .prd_i_IBUF(prd_i_IBUF[1:0]),
        .rst_ni(rst_ni),
        .rst_ni_IBUF(rst_ni_IBUF));
endmodule

module aes_dom_inverse_gf2p8
   (data_o_OBUF,
    mask0_o_OBUF,
    rst_ni_IBUF,
    data_i_IBUF,
    mask0_i_IBUF,
    CLK,
    prd_i_IBUF);
  output [7:0]data_o_OBUF;
  output [7:0]mask0_o_OBUF;
  input rst_ni_IBUF;
  input [7:0]data_i_IBUF;
  input [7:0]mask0_i_IBUF;
  input CLK;
  input [27:0]prd_i_IBUF;

  wire \<const1> ;
  wire CLK;
  wire [1:0]a_a_y_ss_d;
  wire [1:0]a_b_y_ss_d;
  wire [3:0]a_gamma;
  wire [3:0]a_y0_q;
  wire \a_y0_qqq[0]_i_1_n_0 ;
  wire \a_y0_qqq[1]_i_1_n_0 ;
  wire \a_y0_qqq[3]_i_1_n_0 ;
  wire [3:0]a_y1_qqq;
  wire [1:1]a_y_ss_d;
  wire [3:0]a_y_ss_q;
  wire \a_y_ss_q[0]_i_1_n_0 ;
  wire [3:0]aes_mul_gf2p4_return;
  wire [3:0]aes_mul_gf2p4_return_6;
  wire [3:0]aq_z0_d;
  wire [3:0]aq_z0_d_5;
  wire [3:1]aq_z0_q;
  wire [2:1]aq_z0_q_3;
  wire [3:0]b_gamma;
  wire [3:0]b_y0_q;
  wire \b_y0_qqq[0]_i_1_n_0 ;
  wire \b_y0_qqq[1]_i_1_n_0 ;
  wire \b_y0_qqq[3]_i_1_n_0 ;
  wire [3:0]b_y1_qqq;
  wire [1:1]b_y_ss_d;
  wire [3:0]b_y_ss_q;
  wire \b_y_ss_q[0]_i_1_n_0 ;
  wire [3:0]bq_z0_d;
  wire [3:0]bq_z0_d_4;
  wire [3:1]bq_z0_q;
  wire [2:1]bq_z0_q_1;
  wire [7:0]data_i_IBUF;
  wire [7:0]data_o_OBUF;
  wire dep_stage1_n_0;
  wire dep_stage1_n_15;
  wire dep_stage1_n_2;
  wire dep_stage1_n_25;
  wire dep_stage1_n_3;
  wire dep_stage1_n_4;
  wire dep_stage1_n_6;
  wire dep_stage1_n_7;
  wire [1:0]\dep_stage2/a_yz0_d ;
  wire [1:0]\dep_stage2/axz0_z1_d ;
  wire [1:0]\dep_stage2/b_yz0_d ;
  wire [1:0]\dep_stage2/bxz0_z1_d ;
  wire [1:1]g;
  wire [1:1]g0_out;
  wire [7:7]in_data_basis_x;
  wire [7:7]in_mask0_basis_x;
  wire indep_stage4A_n_0;
  wire indep_stage4A_n_2;
  wire indep_stage4B_n_0;
  wire indep_stage4B_n_13;
  wire indep_stage4B_n_2;
  wire indep_stage4B_n_23;
  wire [7:0]mask0_i_IBUF;
  wire [7:0]mask0_o_OBUF;
  wire [3:1]mul_ax_ay_q;
  wire [2:1]mul_ax_ay_q_2;
  wire [3:1]mul_bx_by_q;
  wire [2:1]mul_bx_by_q_0;
  wire p_0_in28_in;
  wire p_0_in7_in;
  wire p_1_in29_in;
  wire p_1_in8_in;
  wire [27:0]prd_i_IBUF;
  wire rst_ni_IBUF;
  wire u_aes_dom_inverse_gf2p4_n_0;
  wire u_aes_dom_inverse_gf2p4_n_17;
  wire u_aes_dom_inverse_gf2p4_n_18;
  wire u_aes_dom_inverse_gf2p4_n_19;
  wire u_aes_dom_inverse_gf2p4_n_20;
  wire u_aes_dom_inverse_gf2p4_n_25;
  wire u_aes_dom_inverse_gf2p4_n_26;
  wire u_aes_dom_inverse_gf2p4_n_27;
  wire u_aes_dom_inverse_gf2p4_n_28;

  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \a_y0_qqq[0]_i_1 
       (.I0(data_i_IBUF[2]),
        .I1(data_i_IBUF[1]),
        .I2(data_i_IBUF[0]),
        .I3(data_i_IBUF[6]),
        .I4(data_i_IBUF[3]),
        .O(\a_y0_qqq[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \a_y0_qqq[1]_i_1 
       (.I0(data_i_IBUF[5]),
        .I1(data_i_IBUF[6]),
        .I2(data_i_IBUF[0]),
        .O(\a_y0_qqq[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \a_y0_qqq[3]_i_1 
       (.I0(data_i_IBUF[0]),
        .I1(data_i_IBUF[4]),
        .I2(data_i_IBUF[3]),
        .I3(data_i_IBUF[7]),
        .I4(data_i_IBUF[1]),
        .O(\a_y0_qqq[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \a_y0_qqq_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(\a_y0_qqq[0]_i_1_n_0 ),
        .Q(a_y0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y0_qqq_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(\a_y0_qqq[1]_i_1_n_0 ),
        .Q(a_y0_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y0_qqq_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(data_i_IBUF[0]),
        .Q(a_y0_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y0_qqq_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(\a_y0_qqq[3]_i_1_n_0 ),
        .Q(a_y0_q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y1_qqq_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(dep_stage1_n_0),
        .Q(a_y1_qqq[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y1_qqq_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(dep_stage1_n_3),
        .Q(a_y1_qqq[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y1_qqq_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(dep_stage1_n_2),
        .Q(a_y1_qqq[2]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y1_qqq_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(in_data_basis_x),
        .Q(a_y1_qqq[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \a_y_ss_q[0]_i_1 
       (.I0(data_i_IBUF[3]),
        .I1(data_i_IBUF[6]),
        .I2(data_i_IBUF[0]),
        .I3(data_i_IBUF[1]),
        .I4(data_i_IBUF[2]),
        .I5(dep_stage1_n_0),
        .O(\a_y_ss_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \a_y_ss_q[1]_i_1 
       (.I0(data_i_IBUF[1]),
        .I1(data_i_IBUF[7]),
        .I2(data_i_IBUF[0]),
        .I3(data_i_IBUF[6]),
        .I4(data_i_IBUF[5]),
        .I5(\a_y0_qqq[0]_i_1_n_0 ),
        .O(a_y_ss_d));
  LUT5 #(
    .INIT(32'h96696996)) 
    \a_y_ss_q[2]_i_1 
       (.I0(data_i_IBUF[0]),
        .I1(data_i_IBUF[4]),
        .I2(data_i_IBUF[3]),
        .I3(data_i_IBUF[7]),
        .I4(in_data_basis_x),
        .O(a_a_y_ss_d[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \a_y_ss_q[3]_i_1 
       (.I0(data_i_IBUF[7]),
        .I1(\a_y0_qqq[0]_i_1_n_0 ),
        .I2(data_i_IBUF[4]),
        .I3(data_i_IBUF[0]),
        .O(a_a_y_ss_d[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y_ss_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(\a_y_ss_q[0]_i_1_n_0 ),
        .Q(a_y_ss_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y_ss_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(a_y_ss_d),
        .Q(a_y_ss_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y_ss_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(a_a_y_ss_d[1]),
        .Q(a_y_ss_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \a_y_ss_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(a_a_y_ss_d[0]),
        .Q(a_y_ss_q[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \b_y0_qqq[0]_i_1 
       (.I0(mask0_i_IBUF[2]),
        .I1(mask0_i_IBUF[1]),
        .I2(mask0_i_IBUF[0]),
        .I3(mask0_i_IBUF[6]),
        .I4(mask0_i_IBUF[3]),
        .O(\b_y0_qqq[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \b_y0_qqq[1]_i_1 
       (.I0(mask0_i_IBUF[5]),
        .I1(mask0_i_IBUF[6]),
        .I2(mask0_i_IBUF[0]),
        .O(\b_y0_qqq[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \b_y0_qqq[3]_i_1 
       (.I0(mask0_i_IBUF[0]),
        .I1(mask0_i_IBUF[1]),
        .I2(mask0_i_IBUF[3]),
        .I3(mask0_i_IBUF[4]),
        .I4(mask0_i_IBUF[7]),
        .O(\b_y0_qqq[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \b_y0_qqq_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(\b_y0_qqq[0]_i_1_n_0 ),
        .Q(b_y0_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y0_qqq_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(\b_y0_qqq[1]_i_1_n_0 ),
        .Q(b_y0_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y0_qqq_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(mask0_i_IBUF[0]),
        .Q(b_y0_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y0_qqq_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(\b_y0_qqq[3]_i_1_n_0 ),
        .Q(b_y0_q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y1_qqq_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(dep_stage1_n_4),
        .Q(b_y1_qqq[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y1_qqq_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(dep_stage1_n_7),
        .Q(b_y1_qqq[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y1_qqq_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(dep_stage1_n_6),
        .Q(b_y1_qqq[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y1_qqq_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(in_mask0_basis_x),
        .Q(b_y1_qqq[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \b_y_ss_q[0]_i_1 
       (.I0(mask0_i_IBUF[3]),
        .I1(mask0_i_IBUF[6]),
        .I2(mask0_i_IBUF[0]),
        .I3(mask0_i_IBUF[1]),
        .I4(mask0_i_IBUF[2]),
        .I5(dep_stage1_n_4),
        .O(\b_y_ss_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \b_y_ss_q[1]_i_1 
       (.I0(mask0_i_IBUF[1]),
        .I1(mask0_i_IBUF[7]),
        .I2(mask0_i_IBUF[0]),
        .I3(mask0_i_IBUF[6]),
        .I4(mask0_i_IBUF[5]),
        .I5(\b_y0_qqq[0]_i_1_n_0 ),
        .O(b_y_ss_d));
  LUT5 #(
    .INIT(32'h96696996)) 
    \b_y_ss_q[2]_i_1 
       (.I0(mask0_i_IBUF[0]),
        .I1(mask0_i_IBUF[3]),
        .I2(mask0_i_IBUF[4]),
        .I3(mask0_i_IBUF[7]),
        .I4(in_mask0_basis_x),
        .O(a_b_y_ss_d[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \b_y_ss_q[3]_i_1 
       (.I0(mask0_i_IBUF[7]),
        .I1(\b_y0_qqq[0]_i_1_n_0 ),
        .I2(mask0_i_IBUF[4]),
        .I3(mask0_i_IBUF[0]),
        .O(a_b_y_ss_d[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y_ss_q_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(\b_y_ss_q[0]_i_1_n_0 ),
        .Q(b_y_ss_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y_ss_q_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(b_y_ss_d),
        .Q(b_y_ss_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y_ss_q_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(a_b_y_ss_d[1]),
        .Q(b_y_ss_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_y_ss_q_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(u_aes_dom_inverse_gf2p4_n_0),
        .D(a_b_y_ss_d[0]),
        .Q(b_y_ss_q[3]));
  aes_dom_dep_mul_gf2pn dep_stage1
       (.CLK(CLK),
        .D({in_data_basis_x,dep_stage1_n_2,dep_stage1_n_3}),
        .Q(a_y1_qqq),
        .a_gamma(a_gamma),
        .\a_gamma1_q_reg[0] (a_y0_q),
        .\a_gamma1_q_reg[1] (a_y_ss_q),
        .\axz0_z1_q_reg[0]_0 (u_aes_dom_inverse_gf2p4_n_0),
        .\axz0_z1_q_reg[1]_0 ({g0_out,dep_stage1_n_15}),
        .b_gamma(b_gamma),
        .\b_gamma1_q_reg[0] (b_y0_q),
        .\b_gamma1_q_reg[1] (b_y1_qqq),
        .\b_gamma1_q_reg[1]_0 (b_y_ss_q),
        .\bxz0_z1_q_reg[1]_0 ({g,dep_stage1_n_25}),
        .\data_i[7] (dep_stage1_n_0),
        .data_i_IBUF(data_i_IBUF),
        .\mask0_i[7] (dep_stage1_n_4),
        .\mask0_i[7]_0 ({in_mask0_basis_x,dep_stage1_n_6,dep_stage1_n_7}),
        .mask0_i_IBUF(mask0_i_IBUF),
        .\prd_i[11] (\dep_stage2/axz0_z1_d ),
        .\prd_i[11]_0 (\dep_stage2/bxz0_z1_d ),
        .\prd_i[9] (\dep_stage2/a_yz0_d ),
        .\prd_i[9]_0 (\dep_stage2/b_yz0_d ),
        .prd_i_IBUF(prd_i_IBUF[11:0]));
  aes_dom_indep_mul_gf2pn indep_stage4A
       (.CLK(CLK),
        .D(aq_z0_d),
        .Q(a_y1_qqq),
        .\a_y1_qqq_reg[0] (indep_stage4A_n_0),
        .\aq_z0_q_reg[3]_0 ({aq_z0_q[3],aq_z0_q[1]}),
        .\b_y1_qqq_reg[0] (indep_stage4A_n_2),
        .\bq_z0_q_reg[0]_0 (u_aes_dom_inverse_gf2p4_n_0),
        .\bq_z0_q_reg[3]_0 ({bq_z0_q[3],bq_z0_q[1]}),
        .\bq_z0_q_reg[3]_1 (bq_z0_d_4),
        .\data_o[2] (indep_stage4B_n_13),
        .\data_o[5] (mul_ax_ay_q_2),
        .\data_o[5]_0 (aq_z0_q_3),
        .data_o_OBUF({data_o_OBUF[7],data_o_OBUF[5],data_o_OBUF[2]}),
        .\mask0_o[2] (indep_stage4B_n_23),
        .\mask0_o[5] (mul_bx_by_q_0),
        .\mask0_o[5]_0 (bq_z0_q_1),
        .mask0_o_OBUF({mask0_o_OBUF[7],mask0_o_OBUF[5],mask0_o_OBUF[2]}),
        .\mul_ax_ay_q_reg[3]_0 ({mul_ax_ay_q[3],mul_ax_ay_q[1]}),
        .\mul_ax_ay_q_reg[3]_1 (aes_mul_gf2p4_return),
        .\mul_bx_by_q_reg[2]_0 (b_y1_qqq),
        .\mul_bx_by_q_reg[3]_0 ({mul_bx_by_q[3],mul_bx_by_q[1]}),
        .\mul_bx_by_q_reg[3]_1 ({u_aes_dom_inverse_gf2p4_n_25,u_aes_dom_inverse_gf2p4_n_26,u_aes_dom_inverse_gf2p4_n_27,u_aes_dom_inverse_gf2p4_n_28}),
        .p_0_in7_in(p_0_in7_in),
        .p_1_in29_in(p_1_in29_in));
  aes_dom_indep_mul_gf2pn_0 indep_stage4B
       (.CLK(CLK),
        .D(aq_z0_d_5),
        .Q(b_y0_q),
        .\a_y0_qqq_reg[0] (indep_stage4B_n_2),
        .\aq_z0_q_reg[1]_0 (indep_stage4B_n_13),
        .\aq_z0_q_reg[2]_0 (aq_z0_q_3),
        .\b_y0_qqq_reg[0] (indep_stage4B_n_0),
        .\bq_z0_q_reg[1]_0 (indep_stage4B_n_23),
        .\bq_z0_q_reg[2]_0 (bq_z0_q_1),
        .\bq_z0_q_reg[3]_0 (a_y0_q),
        .\bq_z0_q_reg[3]_1 (bq_z0_d),
        .\data_o[4] ({aq_z0_q[3],aq_z0_q[1]}),
        .\data_o[4]_0 ({mul_ax_ay_q[3],mul_ax_ay_q[1]}),
        .data_o_OBUF({data_o_OBUF[6],data_o_OBUF[4:3],data_o_OBUF[1:0]}),
        .\mask0_o[4] ({bq_z0_q[3],bq_z0_q[1]}),
        .\mask0_o[4]_0 ({mul_bx_by_q[3],mul_bx_by_q[1]}),
        .mask0_o_OBUF({mask0_o_OBUF[6],mask0_o_OBUF[4:3],mask0_o_OBUF[1:0]}),
        .\mul_ax_ay_q_reg[2]_0 (mul_ax_ay_q_2),
        .\mul_ax_ay_q_reg[3]_0 (u_aes_dom_inverse_gf2p4_n_0),
        .\mul_ax_ay_q_reg[3]_1 (aes_mul_gf2p4_return_6),
        .\mul_bx_by_q_reg[2]_0 (mul_bx_by_q_0),
        .\mul_bx_by_q_reg[3]_0 ({u_aes_dom_inverse_gf2p4_n_17,u_aes_dom_inverse_gf2p4_n_18,u_aes_dom_inverse_gf2p4_n_19,u_aes_dom_inverse_gf2p4_n_20}),
        .p_0_in28_in(p_0_in28_in),
        .p_1_in8_in(p_1_in8_in));
  aes_dom_inverse_gf2p4 u_aes_dom_inverse_gf2p4
       (.CLK(CLK),
        .D(aq_z0_d_5),
        .Q(a_y0_q),
        .a_gamma(a_gamma),
        .\a_gamma_ss_q_reg[1]_0 ({g0_out,dep_stage1_n_15}),
        .\a_y0_qqq_reg[1] (aes_mul_gf2p4_return_6),
        .\a_y0_qqq_reg[2] (bq_z0_d),
        .\a_y1_qqq_reg[1] (aes_mul_gf2p4_return),
        .\a_y1_qqq_reg[2] (aq_z0_d),
        .\a_yz0_q_reg[1] (\dep_stage2/a_yz0_d ),
        .\aq_z0_q_reg[3] (indep_stage4A_n_0),
        .\axz0_z1_q_reg[1] (\dep_stage2/axz0_z1_d ),
        .b_gamma(b_gamma),
        .\b_gamma_ss_q_reg[1]_0 ({g,dep_stage1_n_25}),
        .\b_y0_qqq_reg[1] ({u_aes_dom_inverse_gf2p4_n_17,u_aes_dom_inverse_gf2p4_n_18,u_aes_dom_inverse_gf2p4_n_19,u_aes_dom_inverse_gf2p4_n_20}),
        .\b_y1_qqq_reg[1] ({u_aes_dom_inverse_gf2p4_n_25,u_aes_dom_inverse_gf2p4_n_26,u_aes_dom_inverse_gf2p4_n_27,u_aes_dom_inverse_gf2p4_n_28}),
        .\b_y1_qqq_reg[2] (bq_z0_d_4),
        .\b_yz0_q_reg[1] (\dep_stage2/b_yz0_d ),
        .\bq_z0_q_reg[3] (indep_stage4B_n_2),
        .\bxz0_z1_q_reg[1] (\dep_stage2/bxz0_z1_d ),
        .\mul_ax_ay_q_reg[3] (a_y1_qqq),
        .\mul_bx_by_q_reg[3] (indep_stage4B_n_0),
        .\mul_bx_by_q_reg[3]_0 (b_y0_q),
        .\mul_bx_by_q_reg[3]_1 (indep_stage4A_n_2),
        .\mul_bx_by_q_reg[3]_2 (b_y1_qqq),
        .p_0_in28_in(p_0_in28_in),
        .p_0_in7_in(p_0_in7_in),
        .p_1_in29_in(p_1_in29_in),
        .p_1_in8_in(p_1_in8_in),
        .prd_i_IBUF(prd_i_IBUF[27:12]),
        .rst_ni(u_aes_dom_inverse_gf2p4_n_0),
        .rst_ni_IBUF(rst_ni_IBUF));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module aes_sbox_dom
   (clk_i,
    rst_ni,
    en_i,
    out_ack_i,
    op_i,
    data_i,
    mask0_i,
    prd_i,
    data_o,
    mask0_o);
  input clk_i;
  input rst_ni;
  input en_i;
  input out_ack_i;
  input [1:0]op_i;
  input [7:0]data_i;
  input [7:0]mask0_i;
  input [27:0]prd_i;
  output [7:0]data_o;
  output [7:0]mask0_o;

  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire [7:0]data_i;
  wire [7:0]data_i_IBUF;
  wire [7:0]data_o;
  wire [7:0]data_o_OBUF;
  wire [7:0]mask0_i;
  wire [7:0]mask0_i_IBUF;
  wire [7:0]mask0_o;
  wire [7:0]mask0_o_OBUF;
  wire [27:0]prd_i;
  wire [27:0]prd_i_IBUF;
  wire rst_ni;
  wire rst_ni_IBUF;

  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  IBUF \data_i_IBUF[0]_inst 
       (.I(data_i[0]),
        .O(data_i_IBUF[0]));
  IBUF \data_i_IBUF[1]_inst 
       (.I(data_i[1]),
        .O(data_i_IBUF[1]));
  IBUF \data_i_IBUF[2]_inst 
       (.I(data_i[2]),
        .O(data_i_IBUF[2]));
  IBUF \data_i_IBUF[3]_inst 
       (.I(data_i[3]),
        .O(data_i_IBUF[3]));
  IBUF \data_i_IBUF[4]_inst 
       (.I(data_i[4]),
        .O(data_i_IBUF[4]));
  IBUF \data_i_IBUF[5]_inst 
       (.I(data_i[5]),
        .O(data_i_IBUF[5]));
  IBUF \data_i_IBUF[6]_inst 
       (.I(data_i[6]),
        .O(data_i_IBUF[6]));
  IBUF \data_i_IBUF[7]_inst 
       (.I(data_i[7]),
        .O(data_i_IBUF[7]));
  OBUF \data_o_OBUF[0]_inst 
       (.I(data_o_OBUF[0]),
        .O(data_o[0]));
  OBUF \data_o_OBUF[1]_inst 
       (.I(data_o_OBUF[1]),
        .O(data_o[1]));
  OBUF \data_o_OBUF[2]_inst 
       (.I(data_o_OBUF[2]),
        .O(data_o[2]));
  OBUF \data_o_OBUF[3]_inst 
       (.I(data_o_OBUF[3]),
        .O(data_o[3]));
  OBUF \data_o_OBUF[4]_inst 
       (.I(data_o_OBUF[4]),
        .O(data_o[4]));
  OBUF \data_o_OBUF[5]_inst 
       (.I(data_o_OBUF[5]),
        .O(data_o[5]));
  OBUF \data_o_OBUF[6]_inst 
       (.I(data_o_OBUF[6]),
        .O(data_o[6]));
  OBUF \data_o_OBUF[7]_inst 
       (.I(data_o_OBUF[7]),
        .O(data_o[7]));
  IBUF \mask0_i_IBUF[0]_inst 
       (.I(mask0_i[0]),
        .O(mask0_i_IBUF[0]));
  IBUF \mask0_i_IBUF[1]_inst 
       (.I(mask0_i[1]),
        .O(mask0_i_IBUF[1]));
  IBUF \mask0_i_IBUF[2]_inst 
       (.I(mask0_i[2]),
        .O(mask0_i_IBUF[2]));
  IBUF \mask0_i_IBUF[3]_inst 
       (.I(mask0_i[3]),
        .O(mask0_i_IBUF[3]));
  IBUF \mask0_i_IBUF[4]_inst 
       (.I(mask0_i[4]),
        .O(mask0_i_IBUF[4]));
  IBUF \mask0_i_IBUF[5]_inst 
       (.I(mask0_i[5]),
        .O(mask0_i_IBUF[5]));
  IBUF \mask0_i_IBUF[6]_inst 
       (.I(mask0_i[6]),
        .O(mask0_i_IBUF[6]));
  IBUF \mask0_i_IBUF[7]_inst 
       (.I(mask0_i[7]),
        .O(mask0_i_IBUF[7]));
  OBUF \mask0_o_OBUF[0]_inst 
       (.I(mask0_o_OBUF[0]),
        .O(mask0_o[0]));
  OBUF \mask0_o_OBUF[1]_inst 
       (.I(mask0_o_OBUF[1]),
        .O(mask0_o[1]));
  OBUF \mask0_o_OBUF[2]_inst 
       (.I(mask0_o_OBUF[2]),
        .O(mask0_o[2]));
  OBUF \mask0_o_OBUF[3]_inst 
       (.I(mask0_o_OBUF[3]),
        .O(mask0_o[3]));
  OBUF \mask0_o_OBUF[4]_inst 
       (.I(mask0_o_OBUF[4]),
        .O(mask0_o[4]));
  OBUF \mask0_o_OBUF[5]_inst 
       (.I(mask0_o_OBUF[5]),
        .O(mask0_o[5]));
  OBUF \mask0_o_OBUF[6]_inst 
       (.I(mask0_o_OBUF[6]),
        .O(mask0_o[6]));
  OBUF \mask0_o_OBUF[7]_inst 
       (.I(mask0_o_OBUF[7]),
        .O(mask0_o[7]));
  IBUF \prd_i_IBUF[0]_inst 
       (.I(prd_i[0]),
        .O(prd_i_IBUF[0]));
  IBUF \prd_i_IBUF[10]_inst 
       (.I(prd_i[10]),
        .O(prd_i_IBUF[10]));
  IBUF \prd_i_IBUF[11]_inst 
       (.I(prd_i[11]),
        .O(prd_i_IBUF[11]));
  IBUF \prd_i_IBUF[12]_inst 
       (.I(prd_i[12]),
        .O(prd_i_IBUF[12]));
  IBUF \prd_i_IBUF[13]_inst 
       (.I(prd_i[13]),
        .O(prd_i_IBUF[13]));
  IBUF \prd_i_IBUF[14]_inst 
       (.I(prd_i[14]),
        .O(prd_i_IBUF[14]));
  IBUF \prd_i_IBUF[15]_inst 
       (.I(prd_i[15]),
        .O(prd_i_IBUF[15]));
  IBUF \prd_i_IBUF[16]_inst 
       (.I(prd_i[16]),
        .O(prd_i_IBUF[16]));
  IBUF \prd_i_IBUF[17]_inst 
       (.I(prd_i[17]),
        .O(prd_i_IBUF[17]));
  IBUF \prd_i_IBUF[18]_inst 
       (.I(prd_i[18]),
        .O(prd_i_IBUF[18]));
  IBUF \prd_i_IBUF[19]_inst 
       (.I(prd_i[19]),
        .O(prd_i_IBUF[19]));
  IBUF \prd_i_IBUF[1]_inst 
       (.I(prd_i[1]),
        .O(prd_i_IBUF[1]));
  IBUF \prd_i_IBUF[20]_inst 
       (.I(prd_i[20]),
        .O(prd_i_IBUF[20]));
  IBUF \prd_i_IBUF[21]_inst 
       (.I(prd_i[21]),
        .O(prd_i_IBUF[21]));
  IBUF \prd_i_IBUF[22]_inst 
       (.I(prd_i[22]),
        .O(prd_i_IBUF[22]));
  IBUF \prd_i_IBUF[23]_inst 
       (.I(prd_i[23]),
        .O(prd_i_IBUF[23]));
  IBUF \prd_i_IBUF[24]_inst 
       (.I(prd_i[24]),
        .O(prd_i_IBUF[24]));
  IBUF \prd_i_IBUF[25]_inst 
       (.I(prd_i[25]),
        .O(prd_i_IBUF[25]));
  IBUF \prd_i_IBUF[26]_inst 
       (.I(prd_i[26]),
        .O(prd_i_IBUF[26]));
  IBUF \prd_i_IBUF[27]_inst 
       (.I(prd_i[27]),
        .O(prd_i_IBUF[27]));
  IBUF \prd_i_IBUF[2]_inst 
       (.I(prd_i[2]),
        .O(prd_i_IBUF[2]));
  IBUF \prd_i_IBUF[3]_inst 
       (.I(prd_i[3]),
        .O(prd_i_IBUF[3]));
  IBUF \prd_i_IBUF[4]_inst 
       (.I(prd_i[4]),
        .O(prd_i_IBUF[4]));
  IBUF \prd_i_IBUF[5]_inst 
       (.I(prd_i[5]),
        .O(prd_i_IBUF[5]));
  IBUF \prd_i_IBUF[6]_inst 
       (.I(prd_i[6]),
        .O(prd_i_IBUF[6]));
  IBUF \prd_i_IBUF[7]_inst 
       (.I(prd_i[7]),
        .O(prd_i_IBUF[7]));
  IBUF \prd_i_IBUF[8]_inst 
       (.I(prd_i[8]),
        .O(prd_i_IBUF[8]));
  IBUF \prd_i_IBUF[9]_inst 
       (.I(prd_i[9]),
        .O(prd_i_IBUF[9]));
  IBUF rst_ni_IBUF_inst
       (.I(rst_ni),
        .O(rst_ni_IBUF));
  aes_dom_inverse_gf2p8 u_aes_dom_inverse_gf2p8
       (.CLK(clk_i_IBUF_BUFG),
        .data_i_IBUF(data_i_IBUF),
        .data_o_OBUF(data_o_OBUF),
        .mask0_i_IBUF(mask0_i_IBUF),
        .mask0_o_OBUF(mask0_o_OBUF),
        .prd_i_IBUF(prd_i_IBUF),
        .rst_ni_IBUF(rst_ni_IBUF));
endmodule
