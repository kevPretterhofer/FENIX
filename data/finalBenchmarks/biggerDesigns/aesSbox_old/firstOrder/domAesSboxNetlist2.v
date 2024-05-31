// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Sun Nov 27 12:35:30 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/biggerDesigns/aesSbox_old/firstOrder/domAesSboxNetlist2.v
// Design      : aes_sbox_dom
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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

  wire \<const1> ;
  wire [1:0]a_a_y_ss_d;
  wire [1:0]a_b_y_ss_d;
  wire \a_gamma0_q[0]_i_2_n_0 ;
  wire \a_gamma1_q[0]_i_3_n_0 ;
  wire \a_gamma1_q[1]_i_6_n_0 ;
  wire \a_gamma_ss_q[0]_i_1_n_0 ;
  wire \a_y0_qqq[0]_i_1_n_0 ;
  wire \a_y0_qqq[1]_i_1_n_0 ;
  wire \a_y0_qqq[3]_i_1_n_0 ;
  wire \a_y1_qqq[0]_i_1_n_0 ;
  wire \a_y1_qqq[1]_i_1_n_0 ;
  wire \a_y1_qqq[2]_i_1_n_0 ;
  wire [1:1]a_y_ss_d;
  wire \a_y_ss_q[0]_i_1_n_0 ;
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
  wire \aq_z0_q[3]_i_4__0_n_0 ;
  wire \aq_z0_q[3]_i_5_n_0 ;
  wire \aq_z0_q[3]_i_6_n_0 ;
  wire \axz0_z1_q[3]_i_4_n_0 ;
  wire \b_gamma0_q[0]_i_2_n_0 ;
  wire \b_gamma1_q[0]_i_3_n_0 ;
  wire \b_gamma1_q[1]_i_6_n_0 ;
  wire \b_gamma_ss_q[0]_i_1_n_0 ;
  wire \b_y0_qqq[0]_i_1_n_0 ;
  wire \b_y0_qqq[1]_i_1_n_0 ;
  wire \b_y0_qqq[3]_i_1_n_0 ;
  wire \b_y1_qqq[0]_i_1_n_0 ;
  wire \b_y1_qqq[1]_i_1_n_0 ;
  wire \b_y1_qqq[2]_i_1_n_0 ;
  wire [1:1]b_y_ss_d;
  wire \b_y_ss_q[0]_i_1_n_0 ;
  wire \b_yz0_q[3]_i_2_n_0 ;
  wire \bq_z0_q[3]_i_4_n_0 ;
  wire \bxz0_z1_q[3]_i_4_n_0 ;
  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire [7:0]data_i;
  wire [7:0]data_i_IBUF;
  wire [7:0]data_o;
  wire [7:0]data_o_OBUF;
  wire \data_o_OBUF[3]_inst_i_2_n_0 ;
  wire [7:7]in_data_basis_x;
  wire [7:7]in_mask0_basis_x;
  wire [7:0]mask0_i;
  wire [7:0]mask0_i_IBUF;
  wire [7:0]mask0_o;
  wire [7:0]mask0_o_OBUF;
  wire \mask0_o_OBUF[3]_inst_i_2_n_0 ;
  wire \mul_ax_ay_q[3]_i_2__0_n_0 ;
  wire \mul_ax_ay_q[3]_i_2_n_0 ;
  wire \mul_bx_by_q[0]_i_1__0_n_0 ;
  wire \mul_bx_by_q[0]_i_1_n_0 ;
  wire \mul_bx_by_q[1]_i_1__0_n_0 ;
  wire \mul_bx_by_q[1]_i_1_n_0 ;
  wire \mul_bx_by_q[2]_i_1__0_n_0 ;
  wire \mul_bx_by_q[2]_i_1_n_0 ;
  wire \mul_bx_by_q[3]_i_1__0_n_0 ;
  wire \mul_bx_by_q[3]_i_1_n_0 ;
  wire [27:0]prd_i;
  wire [27:0]prd_i_IBUF;
  wire rst_ni;
  wire rst_ni_IBUF;
  wire [3:0]\u_aes_dom_inverse_gf2p8/a_gamma ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/a_theta ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/a_y0_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/a_y1_qqq ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/a_y_ss_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/b_gamma ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/b_theta ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/b_y0_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/b_y1_qqq ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/b_y_ss_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_d ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return114_out ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return11_out ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return122_out ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return138_out ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return10_in ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return21_in ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_d ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_d ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_d ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in15_in ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in23_in ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in30_in ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in39_in ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in7_in ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/p_1_in52_in ;
  wire \u_aes_dom_inverse_gf2p8/dep_stage1/p_1_in69_in ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4A/aes_mul_gf2p4_return ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_d ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_d ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q ;
  wire \u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ;
  wire \u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in7_in ;
  wire \u_aes_dom_inverse_gf2p8/indep_stage4A/p_1_in29_in ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4B/aes_mul_gf2p4_return ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_d ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_d ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q ;
  wire [3:0]\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q ;
  wire \u_aes_dom_inverse_gf2p8/indep_stage4B/p_0_in28_in ;
  wire \u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ;
  wire \u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in8_in ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_qq ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_qq ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma_ss_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_qq ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_qq ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma_ss_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_q ;
  wire \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/aes_mul_gf2p21_return11_out ;
  wire \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/aes_mul_gf2p21_return16_out ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_q ;
  wire \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/aes_mul_gf2p21_return11_out ;
  wire \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/aes_mul_gf2p21_return16_out ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_q ;
  wire \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/aes_mul_gf2p21_return11_out ;
  wire \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/aes_mul_gf2p21_return16_out ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_q ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_d ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_q ;
  wire [1:1]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g ;
  wire [1:1]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g0_out ;
  wire [1:0]\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out ;

  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \a_gamma0_q[0]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return10_in [0]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .I3(\a_gamma0_q[0]_i_2_n_0 ),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return122_out ),
        .I5(\u_aes_dom_inverse_gf2p8/a_y_ss_q [0]),
        .O(\u_aes_dom_inverse_gf2p8/a_gamma [0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_gamma0_q[0]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [0]),
        .O(\a_gamma0_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \a_gamma0_q[1]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return10_in [1]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .I3(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in23_in ),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return122_out ),
        .I5(\u_aes_dom_inverse_gf2p8/a_y_ss_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/a_gamma [1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_gamma0_q[1]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in23_in ));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \a_gamma0_q[1]_i_3 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y0_q [0]),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/a_y0_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return122_out ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \a_gamma1_q[0]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return10_in [0]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .I3(\a_gamma1_q[0]_i_3_n_0 ),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return138_out ),
        .I5(\u_aes_dom_inverse_gf2p8/a_y_ss_q [2]),
        .O(\u_aes_dom_inverse_gf2p8/a_gamma [2]));
  LUT6 #(
    .INIT(64'h609F9F6060606060)) 
    \a_gamma1_q[0]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in30_in ),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .I4(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .I5(\a_gamma1_q[1]_i_6_n_0 ),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return10_in [0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_gamma1_q[0]_i_3 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [2]),
        .O(\a_gamma1_q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \a_gamma1_q[1]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return10_in [1]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .I3(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in39_in ),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return138_out ),
        .I5(\u_aes_dom_inverse_gf2p8/a_y_ss_q [3]),
        .O(\u_aes_dom_inverse_gf2p8/a_gamma [3]));
  LUT6 #(
    .INIT(64'h1428BE82BE821428)) 
    \a_gamma1_q[1]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in30_in ),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .I3(\a_gamma1_q[1]_i_6_n_0 ),
        .I4(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .I5(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return10_in [1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_gamma1_q[1]_i_3 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [3]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in39_in ));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \a_gamma1_q[1]_i_4 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .I2(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y0_q [2]),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [3]),
        .I5(\u_aes_dom_inverse_gf2p8/a_y0_q [3]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return138_out ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_gamma1_q[1]_i_5 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y0_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [3]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in30_in ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_gamma1_q[1]_i_6 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y0_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [2]),
        .O(\a_gamma1_q[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_gamma_ss_q[0]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/a_gamma [3]),
        .I1(\u_aes_dom_inverse_gf2p8/a_gamma [1]),
        .I2(\u_aes_dom_inverse_gf2p8/a_gamma [2]),
        .I3(\u_aes_dom_inverse_gf2p8/a_gamma [0]),
        .O(\a_gamma_ss_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_gamma_ss_q[1]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/a_gamma [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_gamma [3]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g0_out ));
  LUT6 #(
    .INIT(64'h9669699696969696)) 
    \a_omega_q[0]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma_ss_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/aes_mul_gf2p21_return16_out ),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return [0]));
  LUT6 #(
    .INIT(64'h9669699696969696)) 
    \a_omega_q[1]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma_ss_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/aes_mul_gf2p21_return16_out ),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_q [0]),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q [0]),
        .I5(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [0]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return [1]));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \a_omega_q[1]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q [0]),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/aes_mul_gf2p21_return16_out ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \a_y0_qqq[0]_i_1 
       (.I0(data_i_IBUF[2]),
        .I1(data_i_IBUF[1]),
        .I2(data_i_IBUF[0]),
        .I3(data_i_IBUF[6]),
        .I4(data_i_IBUF[3]),
        .O(\a_y0_qqq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \a_y0_qqq[1]_i_1 
       (.I0(data_i_IBUF[5]),
        .I1(data_i_IBUF[6]),
        .I2(data_i_IBUF[0]),
        .O(\a_y0_qqq[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \a_y0_qqq[3]_i_1 
       (.I0(data_i_IBUF[0]),
        .I1(data_i_IBUF[4]),
        .I2(data_i_IBUF[3]),
        .I3(data_i_IBUF[7]),
        .I4(data_i_IBUF[1]),
        .O(\a_y0_qqq[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_y1_qqq[0]_i_1 
       (.I0(data_i_IBUF[7]),
        .I1(data_i_IBUF[0]),
        .I2(data_i_IBUF[6]),
        .I3(data_i_IBUF[5]),
        .O(\a_y1_qqq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_y1_qqq[1]_i_1 
       (.I0(data_i_IBUF[6]),
        .I1(data_i_IBUF[0]),
        .I2(data_i_IBUF[1]),
        .I3(data_i_IBUF[5]),
        .O(\a_y1_qqq[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_y1_qqq[2]_i_1 
       (.I0(data_i_IBUF[4]),
        .I1(data_i_IBUF[0]),
        .I2(data_i_IBUF[6]),
        .I3(data_i_IBUF[5]),
        .O(\a_y1_qqq[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \a_y1_qqq[3]_i_1 
       (.I0(data_i_IBUF[7]),
        .I1(data_i_IBUF[6]),
        .I2(data_i_IBUF[0]),
        .I3(data_i_IBUF[1]),
        .I4(data_i_IBUF[5]),
        .I5(data_i_IBUF[2]),
        .O(in_data_basis_x));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \a_y_ss_q[0]_i_1 
       (.I0(data_i_IBUF[3]),
        .I1(data_i_IBUF[6]),
        .I2(data_i_IBUF[0]),
        .I3(data_i_IBUF[1]),
        .I4(data_i_IBUF[2]),
        .I5(\a_y1_qqq[0]_i_1_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_y_ss_q[3]_i_1 
       (.I0(data_i_IBUF[7]),
        .I1(\a_y0_qqq[0]_i_1_n_0 ),
        .I2(data_i_IBUF[4]),
        .I3(data_i_IBUF[0]),
        .O(a_a_y_ss_d[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \a_yz0_q[0]_i_1 
       (.I0(prd_i_IBUF[0]),
        .I1(data_i_IBUF[3]),
        .I2(data_i_IBUF[6]),
        .I3(data_i_IBUF[0]),
        .I4(data_i_IBUF[1]),
        .I5(data_i_IBUF[2]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_d [0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[0]_i_1__0 
       (.I0(prd_i_IBUF[8]),
        .I1(\u_aes_dom_inverse_gf2p8/a_gamma [0]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_d [0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[0]_i_1__1 
       (.I0(prd_i_IBUF[16]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return [0]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_d [0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[0]_i_1__2 
       (.I0(prd_i_IBUF[12]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q [0]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_d [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \a_yz0_q[1]_i_1 
       (.I0(prd_i_IBUF[1]),
        .I1(data_i_IBUF[0]),
        .I2(data_i_IBUF[6]),
        .I3(data_i_IBUF[5]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_d [1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[1]_i_1__0 
       (.I0(prd_i_IBUF[9]),
        .I1(\u_aes_dom_inverse_gf2p8/a_gamma [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_d [1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[1]_i_1__1 
       (.I0(prd_i_IBUF[17]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_d [1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[1]_i_1__2 
       (.I0(prd_i_IBUF[13]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_d [1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \a_yz0_q[2]_i_1 
       (.I0(prd_i_IBUF[2]),
        .I1(data_i_IBUF[0]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_d [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \a_yz0_q[3]_i_1 
       (.I0(prd_i_IBUF[3]),
        .I1(data_i_IBUF[1]),
        .I2(data_i_IBUF[7]),
        .I3(data_i_IBUF[3]),
        .I4(data_i_IBUF[4]),
        .I5(data_i_IBUF[0]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_d [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \aq_z0_q[0]_i_1 
       (.I0(aes_mul_gf2p22_return019_out__0),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_0_in28_in ),
        .I3(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I4(\aq_z0_q[3]_i_4__0_n_0 ),
        .I5(prd_i_IBUF[20]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_d [0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \aq_z0_q[0]_i_1__0 
       (.I0(aes_mul_gf2p22_return019_out),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_1_in29_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I3(\aq_z0_q[3]_i_6_n_0 ),
        .I4(\aq_z0_q[3]_i_5_n_0 ),
        .I5(prd_i_IBUF[24]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_d [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[0]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [1]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [0]),
        .O(aes_mul_gf2p22_return019_out__0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[0]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [0]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .O(aes_mul_gf2p22_return019_out));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \aq_z0_q[1]_i_1 
       (.I0(aes_mul_gf2p22_return021_out__0),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_0_in28_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I3(\aq_z0_q[3]_i_4__0_n_0 ),
        .I4(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I5(prd_i_IBUF[21]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_d [1]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \aq_z0_q[1]_i_1__0 
       (.I0(aes_mul_gf2p22_return021_out),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_1_in29_in ),
        .I3(\aq_z0_q[3]_i_5_n_0 ),
        .I4(\aq_z0_q[3]_i_6_n_0 ),
        .I5(prd_i_IBUF[25]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_d [1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[1]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [0]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [1]),
        .O(aes_mul_gf2p22_return021_out__0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[1]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [1]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .O(aes_mul_gf2p22_return021_out));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \aq_z0_q[2]_i_1 
       (.I0(aes_mul_gf2p22_return029_out__0),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_0_in28_in ),
        .I3(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I4(\aq_z0_q[3]_i_4__0_n_0 ),
        .I5(prd_i_IBUF[22]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_d [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \aq_z0_q[2]_i_1__0 
       (.I0(aes_mul_gf2p22_return029_out),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_1_in29_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I3(\aq_z0_q[3]_i_6_n_0 ),
        .I4(\aq_z0_q[3]_i_5_n_0 ),
        .I5(prd_i_IBUF[26]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_d [2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[2]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [3]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y0_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [2]),
        .O(aes_mul_gf2p22_return029_out__0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[2]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [3]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [2]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .O(aes_mul_gf2p22_return029_out));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \aq_z0_q[3]_i_1 
       (.I0(aes_mul_gf2p22_return031_out__0),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_0_in28_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I3(\aq_z0_q[3]_i_4__0_n_0 ),
        .I4(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I5(prd_i_IBUF[23]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_d [3]));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \aq_z0_q[3]_i_10 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_qq [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/aes_mul_gf2p21_return11_out ),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_q [0]),
        .O(\u_aes_dom_inverse_gf2p8/b_theta [0]));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \aq_z0_q[3]_i_11 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_qq [0]),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_qq [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/aes_mul_gf2p21_return11_out ));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \aq_z0_q[3]_i_12 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_qq [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_qq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q [0]),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/aes_mul_gf2p21_return11_out ));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \aq_z0_q[3]_i_1__0 
       (.I0(aes_mul_gf2p22_return031_out),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_1_in29_in ),
        .I3(\aq_z0_q[3]_i_5_n_0 ),
        .I4(\aq_z0_q[3]_i_6_n_0 ),
        .I5(prd_i_IBUF[27]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_d [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[3]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [2]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y0_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [3]),
        .O(aes_mul_gf2p22_return031_out__0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \aq_z0_q[3]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [2]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [3]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .O(aes_mul_gf2p22_return031_out));
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_3 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [1]),
        .I1(\u_aes_dom_inverse_gf2p8/b_theta [3]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_3__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y0_q [3]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_0_in28_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_4 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_1_in29_in ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_4__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y0_q [2]),
        .O(\aq_z0_q[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_5 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [0]),
        .I1(\u_aes_dom_inverse_gf2p8/b_theta [2]),
        .O(\aq_z0_q[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \aq_z0_q[3]_i_6 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .O(\aq_z0_q[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \aq_z0_q[3]_i_7 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_qq [0]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/aes_mul_gf2p21_return11_out ),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_q [0]),
        .O(\u_aes_dom_inverse_gf2p8/b_theta [2]));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \aq_z0_q[3]_i_8 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_qq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/aes_mul_gf2p21_return11_out ),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/b_theta [3]));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \aq_z0_q[3]_i_9 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_qq [1]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/aes_mul_gf2p21_return11_out ),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/b_theta [1]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \axz0_z1_q[0]_i_1 
       (.I0(prd_i_IBUF[4]),
        .I1(prd_i_IBUF[1]),
        .I2(\a_y1_qqq[1]_i_1_n_0 ),
        .I3(prd_i_IBUF[0]),
        .I4(\a_y1_qqq[0]_i_1_n_0 ),
        .I5(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return21_in [0]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_d [0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[0]_i_1__0 
       (.I0(prd_i_IBUF[10]),
        .I1(\u_aes_dom_inverse_gf2p8/a_gamma [2]),
        .I2(prd_i_IBUF[8]),
        .I3(\u_aes_dom_inverse_gf2p8/a_gamma [3]),
        .I4(prd_i_IBUF[9]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_d [0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[0]_i_1__1 
       (.I0(prd_i_IBUF[14]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return [0]),
        .I2(prd_i_IBUF[12]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return [1]),
        .I4(prd_i_IBUF[13]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_d [0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[0]_i_1__2 
       (.I0(prd_i_IBUF[18]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [0]),
        .I2(prd_i_IBUF[16]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [1]),
        .I4(prd_i_IBUF[17]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_d [0]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \axz0_z1_q[1]_i_1 
       (.I0(prd_i_IBUF[5]),
        .I1(prd_i_IBUF[0]),
        .I2(\a_y1_qqq[0]_i_1_n_0 ),
        .I3(prd_i_IBUF[1]),
        .I4(\a_y1_qqq[1]_i_1_n_0 ),
        .I5(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return21_in [1]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_d [1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[1]_i_1__0 
       (.I0(prd_i_IBUF[11]),
        .I1(\u_aes_dom_inverse_gf2p8/a_gamma [3]),
        .I2(prd_i_IBUF[9]),
        .I3(\u_aes_dom_inverse_gf2p8/a_gamma [2]),
        .I4(prd_i_IBUF[8]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_d [1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[1]_i_1__1 
       (.I0(prd_i_IBUF[15]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return [1]),
        .I2(prd_i_IBUF[13]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return [0]),
        .I4(prd_i_IBUF[12]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_d [1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \axz0_z1_q[1]_i_1__2 
       (.I0(prd_i_IBUF[19]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [1]),
        .I2(prd_i_IBUF[17]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [0]),
        .I4(prd_i_IBUF[16]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_d [1]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \axz0_z1_q[2]_i_1 
       (.I0(prd_i_IBUF[6]),
        .I1(prd_i_IBUF[3]),
        .I2(in_data_basis_x),
        .I3(prd_i_IBUF[2]),
        .I4(\a_y1_qqq[2]_i_1_n_0 ),
        .I5(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return21_in [0]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_d [2]));
  LUT6 #(
    .INIT(64'h2828D728D7282828)) 
    \axz0_z1_q[2]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/p_1_in69_in ),
        .I1(prd_i_IBUF[3]),
        .I2(prd_i_IBUF[1]),
        .I3(\axz0_z1_q[3]_i_4_n_0 ),
        .I4(prd_i_IBUF[0]),
        .I5(prd_i_IBUF[2]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return21_in [0]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \axz0_z1_q[3]_i_1 
       (.I0(prd_i_IBUF[7]),
        .I1(prd_i_IBUF[2]),
        .I2(\a_y1_qqq[2]_i_1_n_0 ),
        .I3(prd_i_IBUF[3]),
        .I4(in_data_basis_x),
        .I5(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return21_in [1]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_d [3]));
  LUT6 #(
    .INIT(64'h06F6F60660909060)) 
    \axz0_z1_q[3]_i_2 
       (.I0(prd_i_IBUF[3]),
        .I1(prd_i_IBUF[1]),
        .I2(\u_aes_dom_inverse_gf2p8/dep_stage1/p_1_in69_in ),
        .I3(prd_i_IBUF[0]),
        .I4(prd_i_IBUF[2]),
        .I5(\axz0_z1_q[3]_i_4_n_0 ),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return21_in [1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axz0_z1_q[3]_i_3 
       (.I0(data_i_IBUF[2]),
        .I1(data_i_IBUF[7]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/p_1_in69_in ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axz0_z1_q[3]_i_4 
       (.I0(data_i_IBUF[7]),
        .I1(data_i_IBUF[4]),
        .O(\axz0_z1_q[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \b_gamma0_q[0]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return [0]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .I3(\b_gamma0_q[0]_i_2_n_0 ),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return11_out ),
        .I5(\u_aes_dom_inverse_gf2p8/b_y_ss_q [0]),
        .O(\u_aes_dom_inverse_gf2p8/b_gamma [0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_gamma0_q[0]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y0_q [0]),
        .O(\b_gamma0_q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \b_gamma0_q[1]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return [1]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .I3(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in ),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return11_out ),
        .I5(\u_aes_dom_inverse_gf2p8/b_y_ss_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/b_gamma [1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_gamma0_q[1]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y0_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in ));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \b_gamma0_q[1]_i_3 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/b_y0_q [0]),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/b_y0_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return11_out ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \b_gamma1_q[0]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return [0]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .I3(\b_gamma1_q[0]_i_3_n_0 ),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return114_out ),
        .I5(\u_aes_dom_inverse_gf2p8/b_y_ss_q [2]),
        .O(\u_aes_dom_inverse_gf2p8/b_gamma [2]));
  LUT6 #(
    .INIT(64'h609F9F6060606060)) 
    \b_gamma1_q[0]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in7_in ),
        .I3(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .I4(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .I5(\b_gamma1_q[1]_i_6_n_0 ),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return [0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_gamma1_q[0]_i_3 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y0_q [2]),
        .O(\b_gamma1_q[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9666699969999666)) 
    \b_gamma1_q[1]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return [1]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .I3(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in15_in ),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return114_out ),
        .I5(\u_aes_dom_inverse_gf2p8/b_y_ss_q [3]),
        .O(\u_aes_dom_inverse_gf2p8/b_gamma [3]));
  LUT6 #(
    .INIT(64'h1428BE82BE821428)) 
    \b_gamma1_q[1]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in7_in ),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .I3(\b_gamma1_q[1]_i_6_n_0 ),
        .I4(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .I5(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p20_return [1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_gamma1_q[1]_i_3 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y0_q [3]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in15_in ));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \b_gamma1_q[1]_i_4 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .I2(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/b_y0_q [2]),
        .I4(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [3]),
        .I5(\u_aes_dom_inverse_gf2p8/b_y0_q [3]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_mul_gf2p20_return114_out ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_gamma1_q[1]_i_5 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y0_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [3]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/p_0_in7_in ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_gamma1_q[1]_i_6 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y0_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [2]),
        .O(\b_gamma1_q[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_gamma_ss_q[0]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/b_gamma [3]),
        .I1(\u_aes_dom_inverse_gf2p8/b_gamma [1]),
        .I2(\u_aes_dom_inverse_gf2p8/b_gamma [2]),
        .I3(\u_aes_dom_inverse_gf2p8/b_gamma [0]),
        .O(\b_gamma_ss_q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_gamma_ss_q[1]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/b_gamma [1]),
        .I1(\u_aes_dom_inverse_gf2p8/b_gamma [3]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g ));
  LUT6 #(
    .INIT(64'h9669699696969696)) 
    \b_omega_q[0]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma_ss_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/aes_mul_gf2p21_return11_out ),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out [1]));
  LUT6 #(
    .INIT(64'h9669699696969696)) 
    \b_omega_q[1]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma_ss_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/aes_mul_gf2p21_return11_out ),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_q [0]),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q [0]),
        .I5(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [0]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out [0]));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \b_omega_q[1]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q [0]),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/aes_mul_gf2p21_return11_out ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \b_y0_qqq[0]_i_1 
       (.I0(mask0_i_IBUF[2]),
        .I1(mask0_i_IBUF[1]),
        .I2(mask0_i_IBUF[0]),
        .I3(mask0_i_IBUF[6]),
        .I4(mask0_i_IBUF[3]),
        .O(\b_y0_qqq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \b_y0_qqq[1]_i_1 
       (.I0(mask0_i_IBUF[5]),
        .I1(mask0_i_IBUF[6]),
        .I2(mask0_i_IBUF[0]),
        .O(\b_y0_qqq[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \b_y0_qqq[3]_i_1 
       (.I0(mask0_i_IBUF[0]),
        .I1(mask0_i_IBUF[1]),
        .I2(mask0_i_IBUF[3]),
        .I3(mask0_i_IBUF[4]),
        .I4(mask0_i_IBUF[7]),
        .O(\b_y0_qqq[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_y1_qqq[0]_i_1 
       (.I0(mask0_i_IBUF[7]),
        .I1(mask0_i_IBUF[0]),
        .I2(mask0_i_IBUF[6]),
        .I3(mask0_i_IBUF[5]),
        .O(\b_y1_qqq[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_y1_qqq[1]_i_1 
       (.I0(mask0_i_IBUF[6]),
        .I1(mask0_i_IBUF[0]),
        .I2(mask0_i_IBUF[1]),
        .I3(mask0_i_IBUF[5]),
        .O(\b_y1_qqq[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_y1_qqq[2]_i_1 
       (.I0(mask0_i_IBUF[4]),
        .I1(mask0_i_IBUF[0]),
        .I2(mask0_i_IBUF[6]),
        .I3(mask0_i_IBUF[5]),
        .O(\b_y1_qqq[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \b_y1_qqq[3]_i_1 
       (.I0(mask0_i_IBUF[7]),
        .I1(mask0_i_IBUF[6]),
        .I2(mask0_i_IBUF[0]),
        .I3(mask0_i_IBUF[1]),
        .I4(mask0_i_IBUF[5]),
        .I5(mask0_i_IBUF[2]),
        .O(in_mask0_basis_x));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \b_y_ss_q[0]_i_1 
       (.I0(mask0_i_IBUF[3]),
        .I1(mask0_i_IBUF[6]),
        .I2(mask0_i_IBUF[0]),
        .I3(mask0_i_IBUF[1]),
        .I4(mask0_i_IBUF[2]),
        .I5(\b_y1_qqq[0]_i_1_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_y_ss_q[3]_i_1 
       (.I0(mask0_i_IBUF[7]),
        .I1(\b_y0_qqq[0]_i_1_n_0 ),
        .I2(mask0_i_IBUF[4]),
        .I3(mask0_i_IBUF[0]),
        .O(a_b_y_ss_d[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \b_yz0_q[0]_i_1 
       (.I0(prd_i_IBUF[0]),
        .I1(mask0_i_IBUF[3]),
        .I2(mask0_i_IBUF[6]),
        .I3(mask0_i_IBUF[0]),
        .I4(mask0_i_IBUF[1]),
        .I5(mask0_i_IBUF[2]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_d [0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[0]_i_1__0 
       (.I0(prd_i_IBUF[8]),
        .I1(\u_aes_dom_inverse_gf2p8/b_gamma [0]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_d [0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[0]_i_1__1 
       (.I0(prd_i_IBUF[16]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_d [0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[0]_i_1__2 
       (.I0(prd_i_IBUF[12]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q [0]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_d [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \b_yz0_q[1]_i_1 
       (.I0(prd_i_IBUF[1]),
        .I1(mask0_i_IBUF[0]),
        .I2(mask0_i_IBUF[6]),
        .I3(mask0_i_IBUF[5]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_d [1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[1]_i_1__0 
       (.I0(prd_i_IBUF[9]),
        .I1(\u_aes_dom_inverse_gf2p8/b_gamma [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_d [1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[1]_i_1__1 
       (.I0(prd_i_IBUF[17]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out [0]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_d [1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[1]_i_1__2 
       (.I0(prd_i_IBUF[13]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_d [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \b_yz0_q[2]_i_1 
       (.I0(prd_i_IBUF[2]),
        .I1(mask0_i_IBUF[0]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_d [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \b_yz0_q[3]_i_1 
       (.I0(prd_i_IBUF[3]),
        .I1(mask0_i_IBUF[7]),
        .I2(mask0_i_IBUF[4]),
        .I3(mask0_i_IBUF[3]),
        .I4(mask0_i_IBUF[1]),
        .I5(mask0_i_IBUF[0]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_d [3]));
  LUT1 #(
    .INIT(2'h1)) 
    \b_yz0_q[3]_i_2 
       (.I0(rst_ni_IBUF),
        .O(\b_yz0_q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \bq_z0_q[0]_i_1 
       (.I0(aes_mul_gf2p22_return0),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in7_in ),
        .I3(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I4(\bq_z0_q[3]_i_4_n_0 ),
        .I5(prd_i_IBUF[24]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_d [0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \bq_z0_q[0]_i_1__0 
       (.I0(aes_mul_gf2p22_return0__0),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in8_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I3(\mul_ax_ay_q[3]_i_2__0_n_0 ),
        .I4(\aq_z0_q[3]_i_5_n_0 ),
        .I5(prd_i_IBUF[20]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_d [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[0]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [1]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [0]),
        .O(aes_mul_gf2p22_return0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[0]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [0]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y0_q [0]),
        .O(aes_mul_gf2p22_return0__0));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bq_z0_q[1]_i_1 
       (.I0(aes_mul_gf2p22_return03_out),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in7_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I3(\bq_z0_q[3]_i_4_n_0 ),
        .I4(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I5(prd_i_IBUF[25]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_d [1]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bq_z0_q[1]_i_1__0 
       (.I0(aes_mul_gf2p22_return03_out__0),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in8_in ),
        .I3(\aq_z0_q[3]_i_5_n_0 ),
        .I4(\mul_ax_ay_q[3]_i_2__0_n_0 ),
        .I5(prd_i_IBUF[21]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_d [1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[1]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [0]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [1]),
        .O(aes_mul_gf2p22_return03_out));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[1]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [1]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y0_q [1]),
        .O(aes_mul_gf2p22_return03_out__0));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \bq_z0_q[2]_i_1 
       (.I0(aes_mul_gf2p22_return011_out),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in7_in ),
        .I3(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I4(\bq_z0_q[3]_i_4_n_0 ),
        .I5(prd_i_IBUF[26]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_d [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    \bq_z0_q[2]_i_1__0 
       (.I0(aes_mul_gf2p22_return011_out__0),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in8_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I3(\mul_ax_ay_q[3]_i_2__0_n_0 ),
        .I4(\aq_z0_q[3]_i_5_n_0 ),
        .I5(prd_i_IBUF[22]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_d [2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[2]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [3]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [2]),
        .O(aes_mul_gf2p22_return011_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[2]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [3]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [3]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [2]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y0_q [2]),
        .O(aes_mul_gf2p22_return011_out__0));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bq_z0_q[3]_i_1 
       (.I0(aes_mul_gf2p22_return013_out),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in7_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I3(\bq_z0_q[3]_i_4_n_0 ),
        .I4(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I5(prd_i_IBUF[27]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_d [3]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bq_z0_q[3]_i_1__0 
       (.I0(aes_mul_gf2p22_return013_out__0),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in8_in ),
        .I3(\aq_z0_q[3]_i_5_n_0 ),
        .I4(\mul_ax_ay_q[3]_i_2__0_n_0 ),
        .I5(prd_i_IBUF[23]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_d [3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[3]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [2]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [3]),
        .O(aes_mul_gf2p22_return013_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \bq_z0_q[3]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [2]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [2]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [3]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y0_q [3]),
        .O(aes_mul_gf2p22_return013_out__0));
  LUT2 #(
    .INIT(4'h6)) 
    \bq_z0_q[3]_i_3 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in7_in ));
  LUT2 #(
    .INIT(4'h6)) 
    \bq_z0_q[3]_i_4 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .O(\bq_z0_q[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bxz0_z1_q[0]_i_1 
       (.I0(prd_i_IBUF[4]),
        .I1(prd_i_IBUF[1]),
        .I2(\b_y1_qqq[1]_i_1_n_0 ),
        .I3(prd_i_IBUF[0]),
        .I4(\b_y1_qqq[0]_i_1_n_0 ),
        .I5(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return [0]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_d [0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[0]_i_1__0 
       (.I0(prd_i_IBUF[10]),
        .I1(\u_aes_dom_inverse_gf2p8/b_gamma [2]),
        .I2(prd_i_IBUF[8]),
        .I3(\u_aes_dom_inverse_gf2p8/b_gamma [3]),
        .I4(prd_i_IBUF[9]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_d [0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[0]_i_1__1 
       (.I0(prd_i_IBUF[14]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out [1]),
        .I2(prd_i_IBUF[12]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out [0]),
        .I4(prd_i_IBUF[13]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_d [0]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[0]_i_1__2 
       (.I0(prd_i_IBUF[18]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [0]),
        .I2(prd_i_IBUF[16]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [1]),
        .I4(prd_i_IBUF[17]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_d [0]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bxz0_z1_q[1]_i_1 
       (.I0(prd_i_IBUF[5]),
        .I1(prd_i_IBUF[0]),
        .I2(\b_y1_qqq[0]_i_1_n_0 ),
        .I3(prd_i_IBUF[1]),
        .I4(\b_y1_qqq[1]_i_1_n_0 ),
        .I5(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return [1]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_d [1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[1]_i_1__0 
       (.I0(prd_i_IBUF[11]),
        .I1(\u_aes_dom_inverse_gf2p8/b_gamma [3]),
        .I2(prd_i_IBUF[9]),
        .I3(\u_aes_dom_inverse_gf2p8/b_gamma [2]),
        .I4(prd_i_IBUF[8]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_d [1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[1]_i_1__1 
       (.I0(prd_i_IBUF[15]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out [0]),
        .I2(prd_i_IBUF[13]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out [1]),
        .I4(prd_i_IBUF[12]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_d [1]));
  LUT5 #(
    .INIT(32'h69665AAA)) 
    \bxz0_z1_q[1]_i_1__2 
       (.I0(prd_i_IBUF[19]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [1]),
        .I2(prd_i_IBUF[17]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [0]),
        .I4(prd_i_IBUF[16]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_d [1]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bxz0_z1_q[2]_i_1 
       (.I0(prd_i_IBUF[6]),
        .I1(prd_i_IBUF[3]),
        .I2(in_mask0_basis_x),
        .I3(prd_i_IBUF[2]),
        .I4(\b_y1_qqq[2]_i_1_n_0 ),
        .I5(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return [0]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_d [2]));
  LUT6 #(
    .INIT(64'h2828D728D7282828)) 
    \bxz0_z1_q[2]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/dep_stage1/p_1_in52_in ),
        .I1(prd_i_IBUF[3]),
        .I2(prd_i_IBUF[1]),
        .I3(\bxz0_z1_q[3]_i_4_n_0 ),
        .I4(prd_i_IBUF[0]),
        .I5(prd_i_IBUF[2]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return [0]));
  LUT6 #(
    .INIT(64'hA959659556A69A6A)) 
    \bxz0_z1_q[3]_i_1 
       (.I0(prd_i_IBUF[7]),
        .I1(prd_i_IBUF[2]),
        .I2(\b_y1_qqq[2]_i_1_n_0 ),
        .I3(prd_i_IBUF[3]),
        .I4(in_mask0_basis_x),
        .I5(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return [1]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_d [3]));
  LUT6 #(
    .INIT(64'h06F6F60660909060)) 
    \bxz0_z1_q[3]_i_2 
       (.I0(prd_i_IBUF[3]),
        .I1(prd_i_IBUF[1]),
        .I2(\u_aes_dom_inverse_gf2p8/dep_stage1/p_1_in52_in ),
        .I3(prd_i_IBUF[0]),
        .I4(prd_i_IBUF[2]),
        .I5(\bxz0_z1_q[3]_i_4_n_0 ),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/aes_scale_omega2_gf2p2_return [1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bxz0_z1_q[3]_i_3 
       (.I0(mask0_i_IBUF[2]),
        .I1(mask0_i_IBUF[7]),
        .O(\u_aes_dom_inverse_gf2p8/dep_stage1/p_1_in52_in ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bxz0_z1_q[3]_i_4 
       (.I0(mask0_i_IBUF[7]),
        .I1(mask0_i_IBUF[4]),
        .O(\bxz0_z1_q[3]_i_4_n_0 ));
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
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \data_o_OBUF[0]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [2]),
        .I5(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [2]),
        .O(data_o_OBUF[0]));
  OBUF \data_o_OBUF[1]_inst 
       (.I(data_o_OBUF[1]),
        .O(data_o[1]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \data_o_OBUF[1]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [1]),
        .O(data_o_OBUF[1]));
  OBUF \data_o_OBUF[2]_inst 
       (.I(data_o_OBUF[2]),
        .O(data_o[2]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \data_o_OBUF[2]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [2]),
        .I4(\data_o_OBUF[3]_inst_i_2_n_0 ),
        .O(data_o_OBUF[2]));
  OBUF \data_o_OBUF[3]_inst 
       (.I(data_o_OBUF[3]),
        .O(data_o[3]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \data_o_OBUF[3]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [3]),
        .I4(\data_o_OBUF[3]_inst_i_2_n_0 ),
        .O(data_o_OBUF[3]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \data_o_OBUF[3]_inst_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [3]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [2]),
        .I5(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [2]),
        .O(\data_o_OBUF[3]_inst_i_2_n_0 ));
  OBUF \data_o_OBUF[4]_inst 
       (.I(data_o_OBUF[4]),
        .O(data_o[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \data_o_OBUF[4]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [3]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [3]),
        .I5(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [3]),
        .O(data_o_OBUF[4]));
  OBUF \data_o_OBUF[5]_inst 
       (.I(data_o_OBUF[5]),
        .O(data_o[5]));
  LUT4 #(
    .INIT(16'h9669)) 
    \data_o_OBUF[5]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [2]),
        .O(data_o_OBUF[5]));
  OBUF \data_o_OBUF[6]_inst 
       (.I(data_o_OBUF[6]),
        .O(data_o[6]));
  LUT4 #(
    .INIT(16'h9669)) 
    \data_o_OBUF[6]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [3]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [3]),
        .O(data_o_OBUF[6]));
  OBUF \data_o_OBUF[7]_inst 
       (.I(data_o_OBUF[7]),
        .O(data_o[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \data_o_OBUF[7]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [3]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [1]),
        .O(data_o_OBUF[7]));
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
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \mask0_o_OBUF[0]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [2]),
        .I5(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [2]),
        .O(mask0_o_OBUF[0]));
  OBUF \mask0_o_OBUF[1]_inst 
       (.I(mask0_o_OBUF[1]),
        .O(mask0_o[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \mask0_o_OBUF[1]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [1]),
        .O(mask0_o_OBUF[1]));
  OBUF \mask0_o_OBUF[2]_inst 
       (.I(mask0_o_OBUF[2]),
        .O(mask0_o[2]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \mask0_o_OBUF[2]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [2]),
        .I4(\mask0_o_OBUF[3]_inst_i_2_n_0 ),
        .O(mask0_o_OBUF[2]));
  OBUF \mask0_o_OBUF[3]_inst 
       (.I(mask0_o_OBUF[3]),
        .O(mask0_o[3]));
  LUT5 #(
    .INIT(32'h69969669)) 
    \mask0_o_OBUF[3]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [3]),
        .I4(\mask0_o_OBUF[3]_inst_i_2_n_0 ),
        .O(mask0_o_OBUF[3]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \mask0_o_OBUF[3]_inst_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [3]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [2]),
        .I5(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [2]),
        .O(\mask0_o_OBUF[3]_inst_i_2_n_0 ));
  OBUF \mask0_o_OBUF[4]_inst 
       (.I(mask0_o_OBUF[4]),
        .O(mask0_o[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \mask0_o_OBUF[4]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [3]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [3]),
        .I5(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [3]),
        .O(mask0_o_OBUF[4]));
  OBUF \mask0_o_OBUF[5]_inst 
       (.I(mask0_o_OBUF[5]),
        .O(mask0_o[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \mask0_o_OBUF[5]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [2]),
        .O(mask0_o_OBUF[5]));
  OBUF \mask0_o_OBUF[6]_inst 
       (.I(mask0_o_OBUF[6]),
        .O(mask0_o[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \mask0_o_OBUF[6]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [3]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [3]),
        .O(mask0_o_OBUF[6]));
  OBUF \mask0_o_OBUF[7]_inst 
       (.I(mask0_o_OBUF[7]),
        .O(mask0_o[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \mask0_o_OBUF[7]_inst_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [3]),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [1]),
        .O(mask0_o_OBUF[7]));
  LUT6 #(
    .INIT(64'h609F9F9F9F606060)) 
    \mul_ax_ay_q[0]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y0_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [0]),
        .I2(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in8_in ),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I5(aes_mul_gf2p2_return051_out__0),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/aes_mul_gf2p4_return [0]));
  LUT6 #(
    .INIT(64'h28D7D7D7D7282828)) 
    \mul_ax_ay_q[0]_i_1__0 
       (.I0(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_1_in29_in ),
        .I5(aes_mul_gf2p2_return051_out),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/aes_mul_gf2p4_return [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[0]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [1]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [0]),
        .O(aes_mul_gf2p2_return051_out__0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[0]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/a_theta [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/a_theta [0]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .O(aes_mul_gf2p2_return051_out));
  LUT6 #(
    .INIT(64'h3F65653FC09A9AC0)) 
    \mul_ax_ay_q[1]_i_1 
       (.I0(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I1(\mul_ax_ay_q[3]_i_2__0_n_0 ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I3(\u_aes_dom_inverse_gf2p8/a_y0_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/a_y0_q [3]),
        .I5(aes_mul_gf2p2_return053_out__0),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/aes_mul_gf2p4_return [1]));
  LUT6 #(
    .INIT(64'h5665F33FA99A0CC0)) 
    \mul_ax_ay_q[1]_i_1__0 
       (.I0(\aq_z0_q[3]_i_6_n_0 ),
        .I1(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I2(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I5(aes_mul_gf2p2_return053_out),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/aes_mul_gf2p4_return [1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[1]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [0]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [1]),
        .O(aes_mul_gf2p2_return053_out__0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[1]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/a_theta [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .I2(\u_aes_dom_inverse_gf2p8/a_theta [1]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .O(aes_mul_gf2p2_return053_out));
  LUT6 #(
    .INIT(64'h28D7D7D7D7282828)) 
    \mul_ax_ay_q[2]_i_1 
       (.I0(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_1_in29_in ),
        .I5(aes_mul_gf2p2_return061_out),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/aes_mul_gf2p4_return [2]));
  LUT6 #(
    .INIT(64'h609F9F9F9F606060)) 
    \mul_ax_ay_q[2]_i_1__0 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y0_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [0]),
        .I2(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in8_in ),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I5(aes_mul_gf2p2_return061_out__0),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/aes_mul_gf2p4_return [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[2]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/a_theta [3]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .I2(\u_aes_dom_inverse_gf2p8/a_theta [2]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .O(aes_mul_gf2p2_return061_out));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ax_ay_q[2]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [3]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in8_in ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[2]_i_3 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y0_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [3]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y0_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [2]),
        .O(aes_mul_gf2p2_return061_out__0));
  LUT6 #(
    .INIT(64'h5665F33FA99A0CC0)) 
    \mul_ax_ay_q[3]_i_1 
       (.I0(\aq_z0_q[3]_i_6_n_0 ),
        .I1(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I2(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I5(aes_mul_gf2p2_return063_out),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4A/aes_mul_gf2p4_return [3]));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \mul_ax_ay_q[3]_i_10 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_qq [0]),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_qq [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/aes_mul_gf2p21_return16_out ));
  LUT6 #(
    .INIT(64'h3F65653FC09A9AC0)) 
    \mul_ax_ay_q[3]_i_1__0 
       (.I0(\mul_ax_ay_q[3]_i_2_n_0 ),
        .I1(\mul_ax_ay_q[3]_i_2__0_n_0 ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ),
        .I3(\u_aes_dom_inverse_gf2p8/a_y0_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/a_y0_q [3]),
        .I5(aes_mul_gf2p2_return063_out__0),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/aes_mul_gf2p4_return [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ax_ay_q[3]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/a_theta [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [2]),
        .O(\mul_ax_ay_q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ax_ay_q[3]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y0_q [2]),
        .O(\mul_ax_ay_q[3]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ax_ay_q[3]_i_3 
       (.I0(\u_aes_dom_inverse_gf2p8/a_theta [1]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [3]),
        .O(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_1_in29_in ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[3]_i_3__0 
       (.I0(\u_aes_dom_inverse_gf2p8/a_y0_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/a_theta [2]),
        .I2(\u_aes_dom_inverse_gf2p8/a_y0_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/a_theta [3]),
        .O(aes_mul_gf2p2_return063_out__0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_ax_ay_q[3]_i_4 
       (.I0(\u_aes_dom_inverse_gf2p8/a_theta [2]),
        .I1(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]),
        .I2(\u_aes_dom_inverse_gf2p8/a_theta [3]),
        .I3(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]),
        .O(aes_mul_gf2p2_return063_out));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \mul_ax_ay_q[3]_i_5 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_qq [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q [0]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/aes_mul_gf2p21_return16_out ),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_q [0]),
        .O(\u_aes_dom_inverse_gf2p8/a_theta [0]));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \mul_ax_ay_q[3]_i_6 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_qq [0]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/aes_mul_gf2p21_return16_out ),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_q [0]),
        .O(\u_aes_dom_inverse_gf2p8/a_theta [2]));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \mul_ax_ay_q[3]_i_7 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_qq [1]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/aes_mul_gf2p21_return16_out ),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/a_theta [1]));
  LUT5 #(
    .INIT(32'h28D7D728)) 
    \mul_ax_ay_q[3]_i_8 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_qq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/aes_mul_gf2p21_return16_out ),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/a_theta [3]));
  LUT6 #(
    .INIT(64'h0660600660060660)) 
    \mul_ax_ay_q[3]_i_9 
       (.I0(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_qq [0]),
        .I1(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_qq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q [0]),
        .I4(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_q [1]),
        .I5(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q [1]),
        .O(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/aes_mul_gf2p21_return16_out ));
  LUT6 #(
    .INIT(64'h609F9F9F9F606060)) 
    \mul_bx_by_q[0]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y0_q [0]),
        .I2(\aq_z0_q[3]_i_5_n_0 ),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_0_in28_in ),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I5(aes_mul_gf2p2_return0__1),
        .O(\mul_bx_by_q[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28D7D7D7D7282828)) 
    \mul_bx_by_q[0]_i_1__0 
       (.I0(\aq_z0_q[3]_i_5_n_0 ),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in7_in ),
        .I5(aes_mul_gf2p2_return0__0),
        .O(\mul_bx_by_q[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[0]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [1]),
        .I1(\u_aes_dom_inverse_gf2p8/b_theta [1]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y0_q [0]),
        .I3(\u_aes_dom_inverse_gf2p8/b_theta [0]),
        .O(aes_mul_gf2p2_return0__1));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[0]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [1]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [0]),
        .I3(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .O(aes_mul_gf2p2_return0__0));
  LUT6 #(
    .INIT(64'h3F65653FC09A9AC0)) 
    \mul_bx_by_q[1]_i_1 
       (.I0(\aq_z0_q[3]_i_5_n_0 ),
        .I1(\aq_z0_q[3]_i_4__0_n_0 ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I3(\u_aes_dom_inverse_gf2p8/b_y0_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/b_y0_q [3]),
        .I5(aes_mul_gf2p2_return035_out__0),
        .O(\mul_bx_by_q[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5665F33FA99A0CC0)) 
    \mul_bx_by_q[1]_i_1__0 
       (.I0(\bq_z0_q[3]_i_4_n_0 ),
        .I1(\aq_z0_q[3]_i_5_n_0 ),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .I3(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I5(aes_mul_gf2p2_return035_out),
        .O(\mul_bx_by_q[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[1]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [0]),
        .I1(\u_aes_dom_inverse_gf2p8/b_theta [0]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y0_q [1]),
        .I3(\u_aes_dom_inverse_gf2p8/b_theta [1]),
        .O(aes_mul_gf2p2_return035_out__0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[1]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [0]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [1]),
        .I3(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .O(aes_mul_gf2p2_return035_out));
  LUT6 #(
    .INIT(64'h609F9F9F9F606060)) 
    \mul_bx_by_q[2]_i_1 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y0_q [0]),
        .I2(\aq_z0_q[3]_i_5_n_0 ),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4B/p_0_in28_in ),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I5(aes_mul_gf2p2_return043_out__0),
        .O(\mul_bx_by_q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h28D7D7D7D7282828)) 
    \mul_bx_by_q[2]_i_1__0 
       (.I0(\aq_z0_q[3]_i_5_n_0 ),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]),
        .I3(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in7_in ),
        .I5(aes_mul_gf2p2_return043_out),
        .O(\mul_bx_by_q[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[2]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [3]),
        .I1(\u_aes_dom_inverse_gf2p8/b_theta [3]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y0_q [2]),
        .I3(\u_aes_dom_inverse_gf2p8/b_theta [2]),
        .O(aes_mul_gf2p2_return043_out__0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[2]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [3]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [2]),
        .I3(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .O(aes_mul_gf2p2_return043_out));
  LUT6 #(
    .INIT(64'h3F65653FC09A9AC0)) 
    \mul_bx_by_q[3]_i_1 
       (.I0(\aq_z0_q[3]_i_5_n_0 ),
        .I1(\aq_z0_q[3]_i_4__0_n_0 ),
        .I2(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I3(\u_aes_dom_inverse_gf2p8/b_y0_q [1]),
        .I4(\u_aes_dom_inverse_gf2p8/b_y0_q [3]),
        .I5(aes_mul_gf2p2_return045_out__0),
        .O(\mul_bx_by_q[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5665F33FA99A0CC0)) 
    \mul_bx_by_q[3]_i_1__0 
       (.I0(\bq_z0_q[3]_i_4_n_0 ),
        .I1(\aq_z0_q[3]_i_5_n_0 ),
        .I2(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]),
        .I3(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .I4(\u_aes_dom_inverse_gf2p8/indep_stage4A/p_0_in28_in ),
        .I5(aes_mul_gf2p2_return045_out),
        .O(\mul_bx_by_q[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[3]_i_2 
       (.I0(\u_aes_dom_inverse_gf2p8/b_y0_q [2]),
        .I1(\u_aes_dom_inverse_gf2p8/b_theta [2]),
        .I2(\u_aes_dom_inverse_gf2p8/b_y0_q [3]),
        .I3(\u_aes_dom_inverse_gf2p8/b_theta [3]),
        .O(aes_mul_gf2p2_return045_out__0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hE248)) 
    \mul_bx_by_q[3]_i_2__0 
       (.I0(\u_aes_dom_inverse_gf2p8/b_theta [2]),
        .I1(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]),
        .I2(\u_aes_dom_inverse_gf2p8/b_theta [3]),
        .I3(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]),
        .O(aes_mul_gf2p2_return045_out));
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
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y0_qqq_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\a_y0_qqq[0]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/a_y0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y0_qqq_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\a_y0_qqq[1]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/a_y0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y0_qqq_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(data_i_IBUF[0]),
        .Q(\u_aes_dom_inverse_gf2p8/a_y0_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y0_qqq_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\a_y0_qqq[3]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/a_y0_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y1_qqq_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\a_y1_qqq[0]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/a_y1_qqq [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y1_qqq_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\a_y1_qqq[1]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/a_y1_qqq [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y1_qqq_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\a_y1_qqq[2]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/a_y1_qqq [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y1_qqq_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(in_data_basis_x),
        .Q(\u_aes_dom_inverse_gf2p8/a_y1_qqq [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y_ss_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\a_y_ss_q[0]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/a_y_ss_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y_ss_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(a_y_ss_d),
        .Q(\u_aes_dom_inverse_gf2p8/a_y_ss_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y_ss_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(a_a_y_ss_d[1]),
        .Q(\u_aes_dom_inverse_gf2p8/a_y_ss_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/a_y_ss_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(a_a_y_ss_d[0]),
        .Q(\u_aes_dom_inverse_gf2p8/a_y_ss_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y0_qqq_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\b_y0_qqq[0]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/b_y0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y0_qqq_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\b_y0_qqq[1]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/b_y0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y0_qqq_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(mask0_i_IBUF[0]),
        .Q(\u_aes_dom_inverse_gf2p8/b_y0_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y0_qqq_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\b_y0_qqq[3]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/b_y0_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y1_qqq_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\b_y1_qqq[0]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/b_y1_qqq [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y1_qqq_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\b_y1_qqq[1]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/b_y1_qqq [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y1_qqq_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\b_y1_qqq[2]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/b_y1_qqq [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y1_qqq_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(in_mask0_basis_x),
        .Q(\u_aes_dom_inverse_gf2p8/b_y1_qqq [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y_ss_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\b_y_ss_q[0]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/b_y_ss_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y_ss_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(b_y_ss_d),
        .Q(\u_aes_dom_inverse_gf2p8/b_y_ss_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y_ss_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(a_b_y_ss_d[1]),
        .Q(\u_aes_dom_inverse_gf2p8/b_y_ss_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/b_y_ss_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(a_b_y_ss_d[0]),
        .Q(\u_aes_dom_inverse_gf2p8/b_y_ss_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_d [2]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_d [3]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/a_yz0_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_d [2]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_d [3]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/axz0_z1_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_d [2]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_d [3]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/b_yz0_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_d [2]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_d [3]),
        .Q(\u_aes_dom_inverse_gf2p8/dep_stage1/bxz0_z1_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_d [2]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_d [3]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/aq_z0_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_d [2]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_d [3]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/bq_z0_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/aes_mul_gf2p4_return [0]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/aes_mul_gf2p4_return [1]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/aes_mul_gf2p4_return [2]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4A/aes_mul_gf2p4_return [3]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_ax_ay_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\mul_bx_by_q[0]_i_1__0_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\mul_bx_by_q[1]_i_1__0_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\mul_bx_by_q[2]_i_1__0_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\mul_bx_by_q[3]_i_1__0_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4A/mul_bx_by_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_d [2]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_d [3]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/aq_z0_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_d [2]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_d [3]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/bq_z0_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/aes_mul_gf2p4_return [0]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/aes_mul_gf2p4_return [1]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/aes_mul_gf2p4_return [2]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/indep_stage4B/aes_mul_gf2p4_return [3]),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_ax_ay_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\mul_bx_by_q[0]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\mul_bx_by_q[1]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\mul_bx_by_q[2]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [2]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\mul_bx_by_q[3]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/indep_stage4B/mul_bx_by_q [3]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/a_gamma [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/a_gamma [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_qq_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_qq [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_qq_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_q [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma0_qq [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/a_gamma [2]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/a_gamma [3]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_qq_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_qq [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_qq_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_q [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma1_qq [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma_ss_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\a_gamma_ss_q[0]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma_ss_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma_ss_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g0_out ),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_gamma_ss_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/aes_square_gf2p2_return [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/a_omega_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/b_gamma [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/b_gamma [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_qq_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_qq [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_qq_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_q [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma0_qq [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/b_gamma [2]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/b_gamma [3]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_qq_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_qq [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_qq_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_q [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma1_qq [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma_ss_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\b_gamma_ss_q[0]_i_1_n_0 ),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma_ss_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma_ss_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g ),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_gamma_ss_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/g1_out [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/b_omega_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/a_yz0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/axz0_z1_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/b_yz0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage2/bxz0_z1_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/a_yz0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/axz0_z1_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/b_yz0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3A/bxz0_z1_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/a_yz0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/axz0_z1_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/b_yz0_q [1]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_q_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_d [0]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_q [0]));
  FDCE #(
    .INIT(1'b0)) 
    \u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_q_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(\b_yz0_q[3]_i_2_n_0 ),
        .D(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_d [1]),
        .Q(\u_aes_dom_inverse_gf2p8/u_aes_dom_inverse_gf2p4/dep_stage3B/bxz0_z1_q [1]));
endmodule
