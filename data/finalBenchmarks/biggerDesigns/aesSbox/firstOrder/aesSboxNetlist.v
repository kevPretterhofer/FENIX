// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Nov 25 14:26:04 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/biggerDesigns/aesSbox/firstOrder/aesSboxNetlist.v
// Design      : aes_sbox
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module aes_sbox
   (ClkxCI,
    RstxBI,
    \XxDI[0] ,
    \XxDI[1] ,
    \Zmul1xDI[0] ,
    \Zmul2xDI[0] ,
    \Zmul3xDI[0] ,
    \Zinv1xDI[0] ,
    \Zinv2xDI[0] ,
    \Zinv3xDI[0] ,
    \Bmul1xDI[0] ,
    \Bmul1xDI[1] ,
    \Binv1xDI[0] ,
    \Binv1xDI[1] ,
    \Binv2xDI[0] ,
    \Binv2xDI[1] ,
    \Binv3xDI[0] ,
    \Binv3xDI[1] ,
    \QxDO[0] ,
    \QxDO[1] );
  input ClkxCI;
  input RstxBI;
  input [7:0]\XxDI[0] ;
  input [7:0]\XxDI[1] ;
  input [3:0]\Zmul1xDI[0] ;
  input [3:0]\Zmul2xDI[0] ;
  input [3:0]\Zmul3xDI[0] ;
  input [1:0]\Zinv1xDI[0] ;
  input [1:0]\Zinv2xDI[0] ;
  input [1:0]\Zinv3xDI[0] ;
  input [3:0]\Bmul1xDI[0] ;
  input [3:0]\Bmul1xDI[1] ;
  input [1:0]\Binv1xDI[0] ;
  input [1:0]\Binv1xDI[1] ;
  input [1:0]\Binv2xDI[0] ;
  input [1:0]\Binv2xDI[1] ;
  input [1:0]\Binv3xDI[0] ;
  input [1:0]\Binv3xDI[1] ;
  output [7:0]\QxDO[0] ;
  output [7:0]\QxDO[1] ;

  wire \<const0> ;
  wire \<const1> ;
  wire ClkxCI;
  wire ClkxCI_IBUF;
  wire ClkxCI_IBUF_BUFG;
  wire \InverterInxDP[0][0] ;
  wire \InverterInxDP[0][1] ;
  wire \InverterInxDP[0][2] ;
  wire \InverterInxDP[0][3] ;
  wire \InverterInxDP[1][0] ;
  wire \InverterInxDP[1][1] ;
  wire \InverterInxDP[1][2] ;
  wire \InverterInxDP[1][3] ;
  wire \InverterInxD[0][0] ;
  wire \InverterInxD[0][1] ;
  wire \InverterInxD[0][2] ;
  wire \InverterInxD[0][3] ;
  wire \InverterInxD[1][0] ;
  wire \InverterInxD[1][1] ;
  wire \InverterInxD[1][2] ;
  wire \InverterInxD[1][3] ;
  wire \InverterOutxD[0][1] ;
  wire \InverterOutxD[0][2] ;
  wire \InverterOutxD[0][3] ;
  wire \InverterOutxD[1][1] ;
  wire \InverterOutxD[1][2] ;
  wire \InverterOutxD[1][3] ;
  wire [7:0]\QxDO[0] ;
  wire \QxDO[0][3]_INST_0_i_2_n_33 ;
  wire [7:0]\QxDO[0]_OBUF ;
  wire [7:0]\QxDO[1] ;
  wire \QxDO[1][3]_INST_0_i_2_n_33 ;
  wire [7:0]\QxDO[1]_OBUF ;
  wire RstxBI;
  wire RstxBI_IBUF;
  wire [7:0]\XxDI[0] ;
  wire [7:0]\XxDI[1] ;
  wire \Y0_0xDP[0][0] ;
  wire \Y0_0xDP[0][1] ;
  wire \Y0_0xDP[0][2] ;
  wire \Y0_0xDP[0][3] ;
  wire \Y0_0xDP[1][0] ;
  wire \Y0_0xDP[1][1] ;
  wire \Y0_0xDP[1][2] ;
  wire \Y0_0xDP[1][3] ;
  wire \Y0_1xDP[0][0] ;
  wire \Y0_1xDP[0][1] ;
  wire \Y0_1xDP[0][2] ;
  wire \Y0_1xDP[0][3] ;
  wire \Y0_1xDP[1][0] ;
  wire \Y0_1xDP[1][1] ;
  wire \Y0_1xDP[1][2] ;
  wire \Y0_1xDP[1][3] ;
  wire \Y0_2xDP[0][0] ;
  wire \Y0_2xDP[0][1] ;
  wire \Y0_2xDP[0][2] ;
  wire \Y0_2xDP[0][3] ;
  wire \Y0_2xDP[1][0] ;
  wire \Y0_2xDP[1][1] ;
  wire \Y0_2xDP[1][2] ;
  wire \Y0_2xDP[1][3] ;
  wire \Y0_3xDP[0][0] ;
  wire \Y0_3xDP[0][1] ;
  wire \Y0_3xDP[0][2] ;
  wire \Y0_3xDP[0][3] ;
  wire \Y0_3xDP[1][0] ;
  wire \Y0_3xDP[1][1] ;
  wire \Y0_3xDP[1][2] ;
  wire \Y0_3xDP[1][3] ;
  wire \Y0_4xDP[0][0] ;
  wire \Y0_4xDP[0][1] ;
  wire \Y0_4xDP[0][2] ;
  wire \Y0_4xDP[0][3] ;
  wire \Y0_4xDP[1][0] ;
  wire \Y0_4xDP[1][1] ;
  wire \Y0_4xDP[1][2] ;
  wire \Y0_4xDP[1][3] ;
  wire \Y0xD[0][0] ;
  wire \Y0xD[0][1] ;
  wire \Y0xD[0][2] ;
  wire \Y0xD[0][3] ;
  wire \Y0xD[1][0] ;
  wire \Y0xD[1][1] ;
  wire \Y0xD[1][2] ;
  wire \Y0xD[1][3] ;
  wire \Y0xorY12xDP[0][0] ;
  wire \Y0xorY12xDP[0][1] ;
  wire \Y0xorY12xDP[0][2] ;
  wire \Y0xorY12xDP[0][3] ;
  wire \Y0xorY12xDP[1][0] ;
  wire \Y0xorY12xDP[1][1] ;
  wire \Y0xorY12xDP[1][2] ;
  wire \Y0xorY12xDP[1][3] ;
  wire \Y0xorY12xD[0][1] ;
  wire \Y0xorY12xD[0][2] ;
  wire \Y0xorY12xD[0][3] ;
  wire \Y0xorY12xD[1][1] ;
  wire \Y0xorY12xD[1][2] ;
  wire \Y0xorY12xD[1][3] ;
  wire \Y1_0xDP[0][0] ;
  wire \Y1_0xDP[0][1] ;
  wire \Y1_0xDP[0][2] ;
  wire \Y1_0xDP[0][3] ;
  wire \Y1_0xDP[1][0] ;
  wire \Y1_0xDP[1][1] ;
  wire \Y1_0xDP[1][2] ;
  wire \Y1_0xDP[1][3] ;
  wire \Y1_1xDP[0][0] ;
  wire \Y1_1xDP[0][1] ;
  wire \Y1_1xDP[0][2] ;
  wire \Y1_1xDP[0][3] ;
  wire \Y1_1xDP[1][0] ;
  wire \Y1_1xDP[1][1] ;
  wire \Y1_1xDP[1][2] ;
  wire \Y1_1xDP[1][3] ;
  wire \Y1_2xDP[0][0] ;
  wire \Y1_2xDP[0][1] ;
  wire \Y1_2xDP[0][2] ;
  wire \Y1_2xDP[0][3] ;
  wire \Y1_2xDP[1][0] ;
  wire \Y1_2xDP[1][1] ;
  wire \Y1_2xDP[1][2] ;
  wire \Y1_2xDP[1][3] ;
  wire \Y1_3xDP[0][0] ;
  wire \Y1_3xDP[0][1] ;
  wire \Y1_3xDP[0][2] ;
  wire \Y1_3xDP[0][3] ;
  wire \Y1_3xDP[1][0] ;
  wire \Y1_3xDP[1][1] ;
  wire \Y1_3xDP[1][2] ;
  wire \Y1_3xDP[1][3] ;
  wire \Y1_4xDP[0][0] ;
  wire \Y1_4xDP[0][1] ;
  wire \Y1_4xDP[0][2] ;
  wire \Y1_4xDP[0][3] ;
  wire \Y1_4xDP[1][0] ;
  wire \Y1_4xDP[1][1] ;
  wire \Y1_4xDP[1][2] ;
  wire \Y1_4xDP[1][3] ;
  wire \Y1xD[0][4] ;
  wire \Y1xD[0][5] ;
  wire \Y1xD[0][6] ;
  wire \Y1xD[0][7] ;
  wire \Y1xD[1][4] ;
  wire \Y1xD[1][5] ;
  wire \Y1xD[1][6] ;
  wire \Y1xD[1][7] ;
  wire [1:0]\Zinv1xDI[0] ;
  wire [1:0]\Zinv2xDI[0] ;
  wire [1:0]\Zinv3xDI[0] ;
  wire [3:0]\Zmul1xDI[0] ;
  wire [3:0]\Zmul2xDI[0] ;
  wire [3:0]\Zmul3xDI[0] ;
  wire \generate_instances_g[0].input_mapping/qi_i_1__5_n_33 ;
  wire \generate_instances_g[1].input_mapping/qi_i_1__5_n_33 ;
  wire \inverter_gf24/AxDP[0][0] ;
  wire \inverter_gf24/AxDP[0][1] ;
  wire \inverter_gf24/AxDP[1][0] ;
  wire \inverter_gf24/AxDP[1][1] ;
  wire \inverter_gf24/BxDP[0][0] ;
  wire \inverter_gf24/BxDP[0][1] ;
  wire \inverter_gf24/BxDP[1][0] ;
  wire \inverter_gf24/BxDP[1][1] ;
  wire \inverter_gf24/CxDP[0][0] ;
  wire \inverter_gf24/CxDP[0][1] ;
  wire \inverter_gf24/CxDP[1][0] ;
  wire \inverter_gf24/CxDP[1][1] ;
  wire \inverter_gf24/CxD[0][0] ;
  wire \inverter_gf24/CxD[1][0] ;
  wire \inverter_gf24/ExDP[0][0] ;
  wire \inverter_gf24/ExDP[0][1] ;
  wire \inverter_gf24/ExDP[1][0] ;
  wire \inverter_gf24/ExDP[1][1] ;
  wire \inverter_gf24/ExD[0][0] ;
  wire \inverter_gf24/ExD[0][1] ;
  wire \inverter_gf24/ExD[1][0] ;
  wire \inverter_gf24/ExD[1][1] ;
  wire \inverter_gf24/a_mul_b/FFxDN[0][1] ;
  wire \inverter_gf24/a_mul_b/FFxDN[1][0] ;
  wire \inverter_gf24/a_mul_b/FFxDN[1][1] ;
  wire \inverter_gf24/a_mul_b/FFxDN[2][0] ;
  wire \inverter_gf24/a_mul_b/FFxDN[2][1] ;
  wire \inverter_gf24/a_mul_b/FFxDN[3][1] ;
  wire \inverter_gf24/a_mul_b/FFxDP[0][0] ;
  wire \inverter_gf24/a_mul_b/FFxDP[0][1] ;
  wire \inverter_gf24/a_mul_b/FFxDP[1][0] ;
  wire \inverter_gf24/a_mul_b/FFxDP[1][1] ;
  wire \inverter_gf24/a_mul_b/FFxDP[2][0] ;
  wire \inverter_gf24/a_mul_b/FFxDP[2][1] ;
  wire \inverter_gf24/a_mul_b/FFxDP[3][0] ;
  wire \inverter_gf24/a_mul_b/FFxDP[3][1] ;
  wire \inverter_gf24/a_mul_b/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0_n_33 ;
  wire \inverter_gf24/a_mul_b/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0_n_33 ;
  wire \inverter_gf24/a_mul_e/FFxDN[0][1] ;
  wire \inverter_gf24/a_mul_e/FFxDN[1][0] ;
  wire \inverter_gf24/a_mul_e/FFxDN[1][1] ;
  wire \inverter_gf24/a_mul_e/FFxDN[2][0] ;
  wire \inverter_gf24/a_mul_e/FFxDN[2][1] ;
  wire \inverter_gf24/a_mul_e/FFxDN[3][1] ;
  wire \inverter_gf24/a_mul_e/FFxDP[0][0] ;
  wire \inverter_gf24/a_mul_e/FFxDP[0][1] ;
  wire \inverter_gf24/a_mul_e/FFxDP[1][0] ;
  wire \inverter_gf24/a_mul_e/FFxDP[1][1] ;
  wire \inverter_gf24/a_mul_e/FFxDP[2][0] ;
  wire \inverter_gf24/a_mul_e/FFxDP[2][1] ;
  wire \inverter_gf24/a_mul_e/FFxDP[3][0] ;
  wire \inverter_gf24/a_mul_e/FFxDP[3][1] ;
  wire \inverter_gf24/a_mul_e/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0_n_33 ;
  wire \inverter_gf24/a_mul_e/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0_n_33 ;
  wire \inverter_gf24/b_mul_e/FFxDN[0][1] ;
  wire \inverter_gf24/b_mul_e/FFxDN[1][0] ;
  wire \inverter_gf24/b_mul_e/FFxDN[1][1] ;
  wire \inverter_gf24/b_mul_e/FFxDN[2][0] ;
  wire \inverter_gf24/b_mul_e/FFxDN[2][1] ;
  wire \inverter_gf24/b_mul_e/FFxDN[3][1] ;
  wire \inverter_gf24/b_mul_e/FFxDP[0][0] ;
  wire \inverter_gf24/b_mul_e/FFxDP[0][1] ;
  wire \inverter_gf24/b_mul_e/FFxDP[1][0] ;
  wire \inverter_gf24/b_mul_e/FFxDP[1][1] ;
  wire \inverter_gf24/b_mul_e/FFxDP[2][0] ;
  wire \inverter_gf24/b_mul_e/FFxDP[2][1] ;
  wire \inverter_gf24/b_mul_e/FFxDP[3][0] ;
  wire \inverter_gf24/b_mul_e/FFxDP[3][1] ;
  wire \inverter_gf24/b_mul_e/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0_n_33 ;
  wire \inverter_gf24/b_mul_e/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0_n_33 ;
  wire \inverter_gf24/p_0_in1_in ;
  wire \inverter_gf24/p_5_in ;
  wire \inverter_gf24/pipelinedAxDP[0][0] ;
  wire \inverter_gf24/pipelinedAxDP[0][1] ;
  wire \inverter_gf24/pipelinedAxDP[1][0] ;
  wire \inverter_gf24/pipelinedAxDP[1][1] ;
  wire \inverter_gf24/pipelinedBxDP[0][0] ;
  wire \inverter_gf24/pipelinedBxDP[0][1] ;
  wire \inverter_gf24/pipelinedBxDP[1][0] ;
  wire \inverter_gf24/pipelinedBxDP[1][1] ;
  wire \mappedxD[0][1] ;
  wire \mappedxD[0][3] ;
  wire \mappedxD[0][4] ;
  wire \mappedxD[0][5] ;
  wire \mappedxD[0][6] ;
  wire \mappedxD[0][7] ;
  wire \mappedxD[1][1] ;
  wire \mappedxD[1][3] ;
  wire \mappedxD[1][4] ;
  wire \mappedxD[1][5] ;
  wire \mappedxD[1][6] ;
  wire \mappedxD[1][7] ;
  wire \mul_y0y1/FFxDN[0][1] ;
  wire \mul_y0y1/FFxDN[0][2] ;
  wire \mul_y0y1/FFxDN[0][3] ;
  wire \mul_y0y1/FFxDN[1][0] ;
  wire \mul_y0y1/FFxDN[1][1] ;
  wire \mul_y0y1/FFxDN[1][2] ;
  wire \mul_y0y1/FFxDN[1][3] ;
  wire \mul_y0y1/FFxDN[2][0] ;
  wire \mul_y0y1/FFxDN[2][1] ;
  wire \mul_y0y1/FFxDN[2][2] ;
  wire \mul_y0y1/FFxDN[2][3] ;
  wire \mul_y0y1/FFxDN[3][1] ;
  wire \mul_y0y1/FFxDN[3][2] ;
  wire \mul_y0y1/FFxDN[3][3] ;
  wire \mul_y0y1/FFxDP[0][0] ;
  wire \mul_y0y1/FFxDP[0][1] ;
  wire \mul_y0y1/FFxDP[0][2] ;
  wire \mul_y0y1/FFxDP[0][3] ;
  wire \mul_y0y1/FFxDP[1][0] ;
  wire \mul_y0y1/FFxDP[1][1] ;
  wire \mul_y0y1/FFxDP[1][2] ;
  wire \mul_y0y1/FFxDP[1][3] ;
  wire \mul_y0y1/FFxDP[2][0] ;
  wire \mul_y0y1/FFxDP[2][1] ;
  wire \mul_y0y1/FFxDP[2][2] ;
  wire \mul_y0y1/FFxDP[2][3] ;
  wire \mul_y0y1/FFxDP[3][0] ;
  wire \mul_y0y1/FFxDP[3][1] ;
  wire \mul_y0y1/FFxDP[3][2] ;
  wire \mul_y0y1/FFxDP[3][3] ;
  wire \mult_lsb/FFxDN[0][1] ;
  wire \mult_lsb/FFxDN[0][2] ;
  wire \mult_lsb/FFxDN[0][3] ;
  wire \mult_lsb/FFxDN[1][0] ;
  wire \mult_lsb/FFxDN[1][1] ;
  wire \mult_lsb/FFxDN[1][2] ;
  wire \mult_lsb/FFxDN[1][3] ;
  wire \mult_lsb/FFxDN[2][0] ;
  wire \mult_lsb/FFxDN[2][1] ;
  wire \mult_lsb/FFxDN[2][2] ;
  wire \mult_lsb/FFxDN[2][3] ;
  wire \mult_lsb/FFxDN[3][1] ;
  wire \mult_lsb/FFxDN[3][2] ;
  wire \mult_lsb/FFxDN[3][3] ;
  wire \mult_lsb/FFxDP[0][0] ;
  wire \mult_lsb/FFxDP[0][1] ;
  wire \mult_lsb/FFxDP[0][2] ;
  wire \mult_lsb/FFxDP[0][3] ;
  wire \mult_lsb/FFxDP[1][0] ;
  wire \mult_lsb/FFxDP[1][1] ;
  wire \mult_lsb/FFxDP[1][2] ;
  wire \mult_lsb/FFxDP[1][3] ;
  wire \mult_lsb/FFxDP[2][0] ;
  wire \mult_lsb/FFxDP[2][1] ;
  wire \mult_lsb/FFxDP[2][2] ;
  wire \mult_lsb/FFxDP[2][3] ;
  wire \mult_lsb/FFxDP[3][0] ;
  wire \mult_lsb/FFxDP[3][1] ;
  wire \mult_lsb/FFxDP[3][2] ;
  wire \mult_lsb/FFxDP[3][3] ;
  wire \mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_12_in ;
  wire \mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_13_in ;
  wire \mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_12_in ;
  wire \mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_13_in ;
  wire \mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_12_in ;
  wire \mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_13_in ;
  wire \mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_12_in ;
  wire \mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_13_in ;
  wire \mult_msb/FFxDN[0][1] ;
  wire \mult_msb/FFxDN[0][2] ;
  wire \mult_msb/FFxDN[0][3] ;
  wire \mult_msb/FFxDN[1][0] ;
  wire \mult_msb/FFxDN[1][1] ;
  wire \mult_msb/FFxDN[1][2] ;
  wire \mult_msb/FFxDN[1][3] ;
  wire \mult_msb/FFxDN[2][0] ;
  wire \mult_msb/FFxDN[2][1] ;
  wire \mult_msb/FFxDN[2][2] ;
  wire \mult_msb/FFxDN[2][3] ;
  wire \mult_msb/FFxDN[3][1] ;
  wire \mult_msb/FFxDN[3][2] ;
  wire \mult_msb/FFxDN[3][3] ;
  wire \mult_msb/FFxDP[0][0] ;
  wire \mult_msb/FFxDP[0][1] ;
  wire \mult_msb/FFxDP[0][2] ;
  wire \mult_msb/FFxDP[0][3] ;
  wire \mult_msb/FFxDP[1][0] ;
  wire \mult_msb/FFxDP[1][1] ;
  wire \mult_msb/FFxDP[1][2] ;
  wire \mult_msb/FFxDP[1][3] ;
  wire \mult_msb/FFxDP[2][0] ;
  wire \mult_msb/FFxDP[2][1] ;
  wire \mult_msb/FFxDP[2][2] ;
  wire \mult_msb/FFxDP[2][3] ;
  wire \mult_msb/FFxDP[3][0] ;
  wire \mult_msb/FFxDP[3][1] ;
  wire \mult_msb/FFxDP[3][2] ;
  wire \mult_msb/FFxDP[3][3] ;
  wire \mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA ;
  wire \mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA_23 ;
  wire \mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_12_in ;
  wire \mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_13_in ;
  wire \mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_12_in ;
  wire \mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_13_in ;
  wire \mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA ;
  wire \mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA_23 ;
  wire \mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_12_in ;
  wire \mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_13_in ;
  wire \mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_12_in ;
  wire \mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_13_in ;
  wire n_1;
  wire [0:0]p_0_out;
  wire qi_i_1__0_n_33;
  wire qi_i_1__17_n_33;
  wire qi_i_1__3_n_33;
  wire qi_i_1__66_n_33;
  wire qi_i_1__68_n_33;
  wire qi_i_1__74_n_33;
  wire qi_i_1__79_n_33;
  wire qi_i_2__0_n_33;
  wire qi_i_2__16_n_33;
  wire qi_i_2__1_n_33;
  wire qi_i_2__2_n_33;
  wire qi_i_2__3_n_33;
  wire qi_i_2__4_n_33;
  wire qi_i_2__5_n_33;
  wire qi_i_2_n_33;
  wire qi_i_3__0_n_33;
  wire qi_i_3__10_n_33;
  wire qi_i_3__1_n_33;
  wire qi_i_3__2_n_33;
  wire qi_i_3__3_n_33;
  wire qi_i_3_n_33;
  wire qi_i_4__0_n_33;
  wire qi_i_4__1_n_33;
  wire qi_i_4__2_n_33;
  wire qi_i_4_n_33;
  wire qi_reg_i_1__0_n_33;
  wire qi_reg_i_1_n_33;
  wire qi_reg_i_2__0_n_33;
  wire qi_reg_i_2__10_n_33;
  wire qi_reg_i_2__11_n_33;
  wire qi_reg_i_2__12_n_33;
  wire qi_reg_i_2__13_n_33;
  wire qi_reg_i_2__14_n_33;
  wire qi_reg_i_2__15_n_33;
  wire qi_reg_i_2__16_n_33;
  wire qi_reg_i_2__17_n_33;
  wire qi_reg_i_2__18_n_33;
  wire qi_reg_i_2__19_n_33;
  wire qi_reg_i_2__1_n_33;
  wire qi_reg_i_2__20_n_33;
  wire qi_reg_i_2__2_n_33;
  wire qi_reg_i_2__3_n_33;
  wire qi_reg_i_2__4_n_33;
  wire qi_reg_i_2__5_n_33;
  wire qi_reg_i_2__6_n_33;
  wire qi_reg_i_2__7_n_33;
  wire qi_reg_i_2__8_n_33;
  wire qi_reg_i_2__9_n_33;
  wire qi_reg_i_2_n_33;
  wire qi_reg_i_3__0_n_33;
  wire qi_reg_i_3__1_n_33;
  wire qi_reg_i_3__2_n_33;
  wire qi_reg_i_3__3_n_33;
  wire qi_reg_i_3__4_n_33;
  wire qi_reg_i_3_n_33;
  wire qi_reg_i_4__0_n_33;
  wire qi_reg_i_4_n_33;
  wire qi_reg_i_5__0_n_33;
  wire qi_reg_i_5_n_33;

  BUFG ClkxCI_IBUF_BUFG_inst
       (.I(ClkxCI_IBUF),
        .O(ClkxCI_IBUF_BUFG));
  IBUF ClkxCI_IBUF_inst
       (.I(ClkxCI),
        .O(ClkxCI_IBUF));
  GND GND
       (.G(\<const0> ));
  FDCE #(
    .INIT(1'b0)) 
    \InverterInxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxD[0][0] ),
        .Q(\InverterInxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \InverterInxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxD[0][1] ),
        .Q(\InverterInxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \InverterInxDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxD[0][2] ),
        .Q(\InverterInxDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \InverterInxDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxD[0][3] ),
        .Q(\InverterInxDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \InverterInxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxD[1][0] ),
        .Q(\InverterInxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \InverterInxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxD[1][1] ),
        .Q(\InverterInxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \InverterInxDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxD[1][2] ),
        .Q(\InverterInxDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \InverterInxDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxD[1][3] ),
        .Q(\InverterInxDP[1][3] ));
  OBUF \QxDO[0][0]_INST_0 
       (.I(\QxDO[0]_OBUF [0]),
        .O(\QxDO[0] [0]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \QxDO[0][0]_INST_0_i_1 
       (.I0(\mult_msb/FFxDP[1][0] ),
        .I1(\mult_msb/FFxDP[0][0] ),
        .I2(\mult_lsb/FFxDP[1][1] ),
        .I3(\mult_lsb/FFxDP[0][1] ),
        .I4(\mult_msb/FFxDP[0][2] ),
        .I5(\mult_msb/FFxDP[1][2] ),
        .O(\QxDO[0]_OBUF [0]));
  OBUF \QxDO[0][1]_INST_0 
       (.I(\QxDO[0]_OBUF [1]),
        .O(\QxDO[0] [1]));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \QxDO[0][1]_INST_0_i_1 
       (.I0(\mult_msb/FFxDP[1][0] ),
        .I1(\mult_msb/FFxDP[0][0] ),
        .I2(\mult_lsb/FFxDP[1][1] ),
        .I3(\mult_lsb/FFxDP[0][1] ),
        .I4(\mult_msb/FFxDP[0][1] ),
        .I5(\mult_msb/FFxDP[1][1] ),
        .O(\QxDO[0]_OBUF [1]));
  OBUF \QxDO[0][2]_INST_0 
       (.I(\QxDO[0]_OBUF [2]),
        .O(\QxDO[0] [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \QxDO[0][2]_INST_0_i_1 
       (.I0(\mult_lsb/FFxDP[1][0] ),
        .I1(\mult_lsb/FFxDP[0][0] ),
        .I2(\mult_lsb/FFxDP[1][2] ),
        .I3(\mult_lsb/FFxDP[0][2] ),
        .I4(\QxDO[0][3]_INST_0_i_2_n_33 ),
        .O(\QxDO[0]_OBUF [2]));
  OBUF \QxDO[0][3]_INST_0 
       (.I(\QxDO[0]_OBUF [3]),
        .O(\QxDO[0] [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \QxDO[0][3]_INST_0_i_1 
       (.I0(\mult_msb/FFxDP[1][0] ),
        .I1(\mult_msb/FFxDP[0][0] ),
        .I2(\mult_msb/FFxDP[1][3] ),
        .I3(\mult_msb/FFxDP[0][3] ),
        .I4(\QxDO[0][3]_INST_0_i_2_n_33 ),
        .O(\QxDO[0]_OBUF [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \QxDO[0][3]_INST_0_i_2 
       (.I0(\mult_msb/FFxDP[1][1] ),
        .I1(\mult_msb/FFxDP[0][1] ),
        .I2(\mult_lsb/FFxDP[1][3] ),
        .I3(\mult_lsb/FFxDP[0][3] ),
        .I4(\mult_msb/FFxDP[0][2] ),
        .I5(\mult_msb/FFxDP[1][2] ),
        .O(\QxDO[0][3]_INST_0_i_2_n_33 ));
  OBUF \QxDO[0][4]_INST_0 
       (.I(\QxDO[0]_OBUF [4]),
        .O(\QxDO[0] [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \QxDO[0][4]_INST_0_i_1 
       (.I0(\mult_msb/FFxDP[0][3] ),
        .I1(\mult_msb/FFxDP[1][3] ),
        .I2(\mult_msb/FFxDP[1][1] ),
        .I3(\mult_msb/FFxDP[0][1] ),
        .I4(\mult_lsb/FFxDP[1][3] ),
        .I5(\mult_lsb/FFxDP[0][3] ),
        .O(\QxDO[0]_OBUF [4]));
  OBUF \QxDO[0][5]_INST_0 
       (.I(\QxDO[0]_OBUF [5]),
        .O(\QxDO[0] [5]));
  LUT4 #(
    .INIT(16'h9669)) 
    \QxDO[0][5]_INST_0_i_1 
       (.I0(\mult_lsb/FFxDP[0][0] ),
        .I1(\mult_lsb/FFxDP[1][0] ),
        .I2(\mult_msb/FFxDP[0][2] ),
        .I3(\mult_msb/FFxDP[1][2] ),
        .O(\QxDO[0]_OBUF [5]));
  OBUF \QxDO[0][6]_INST_0 
       (.I(\QxDO[0]_OBUF [6]),
        .O(\QxDO[0] [6]));
  LUT4 #(
    .INIT(16'h9669)) 
    \QxDO[0][6]_INST_0_i_1 
       (.I0(\mult_msb/FFxDP[0][3] ),
        .I1(\mult_msb/FFxDP[1][3] ),
        .I2(\mult_lsb/FFxDP[0][3] ),
        .I3(\mult_lsb/FFxDP[1][3] ),
        .O(\QxDO[0]_OBUF [6]));
  OBUF \QxDO[0][7]_INST_0 
       (.I(\QxDO[0]_OBUF [7]),
        .O(\QxDO[0] [7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \QxDO[0][7]_INST_0_i_1 
       (.I0(\mult_lsb/FFxDP[0][3] ),
        .I1(\mult_lsb/FFxDP[1][3] ),
        .I2(\mult_msb/FFxDP[0][1] ),
        .I3(\mult_msb/FFxDP[1][1] ),
        .O(\QxDO[0]_OBUF [7]));
  OBUF \QxDO[1][0]_INST_0 
       (.I(\QxDO[1]_OBUF [0]),
        .O(\QxDO[1] [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \QxDO[1][0]_INST_0_i_1 
       (.I0(\mult_msb/FFxDP[3][0] ),
        .I1(\mult_msb/FFxDP[2][0] ),
        .I2(\mult_lsb/FFxDP[3][1] ),
        .I3(\mult_lsb/FFxDP[2][1] ),
        .I4(\mult_msb/FFxDP[2][2] ),
        .I5(\mult_msb/FFxDP[3][2] ),
        .O(\QxDO[1]_OBUF [0]));
  OBUF \QxDO[1][1]_INST_0 
       (.I(\QxDO[1]_OBUF [1]),
        .O(\QxDO[1] [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \QxDO[1][1]_INST_0_i_1 
       (.I0(\mult_msb/FFxDP[3][0] ),
        .I1(\mult_msb/FFxDP[2][0] ),
        .I2(\mult_lsb/FFxDP[3][1] ),
        .I3(\mult_lsb/FFxDP[2][1] ),
        .I4(\mult_msb/FFxDP[2][1] ),
        .I5(\mult_msb/FFxDP[3][1] ),
        .O(\QxDO[1]_OBUF [1]));
  OBUF \QxDO[1][2]_INST_0 
       (.I(\QxDO[1]_OBUF [2]),
        .O(\QxDO[1] [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \QxDO[1][2]_INST_0_i_1 
       (.I0(\mult_lsb/FFxDP[3][0] ),
        .I1(\mult_lsb/FFxDP[2][0] ),
        .I2(\mult_lsb/FFxDP[3][2] ),
        .I3(\mult_lsb/FFxDP[2][2] ),
        .I4(\QxDO[1][3]_INST_0_i_2_n_33 ),
        .O(\QxDO[1]_OBUF [2]));
  OBUF \QxDO[1][3]_INST_0 
       (.I(\QxDO[1]_OBUF [3]),
        .O(\QxDO[1] [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \QxDO[1][3]_INST_0_i_1 
       (.I0(\mult_msb/FFxDP[3][0] ),
        .I1(\mult_msb/FFxDP[2][0] ),
        .I2(\mult_msb/FFxDP[3][3] ),
        .I3(\mult_msb/FFxDP[2][3] ),
        .I4(\QxDO[1][3]_INST_0_i_2_n_33 ),
        .O(\QxDO[1]_OBUF [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \QxDO[1][3]_INST_0_i_2 
       (.I0(\mult_msb/FFxDP[3][1] ),
        .I1(\mult_msb/FFxDP[2][1] ),
        .I2(\mult_lsb/FFxDP[3][3] ),
        .I3(\mult_lsb/FFxDP[2][3] ),
        .I4(\mult_msb/FFxDP[2][2] ),
        .I5(\mult_msb/FFxDP[3][2] ),
        .O(\QxDO[1][3]_INST_0_i_2_n_33 ));
  OBUF \QxDO[1][4]_INST_0 
       (.I(\QxDO[1]_OBUF [4]),
        .O(\QxDO[1] [4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \QxDO[1][4]_INST_0_i_1 
       (.I0(\mult_msb/FFxDP[2][3] ),
        .I1(\mult_msb/FFxDP[3][3] ),
        .I2(\mult_msb/FFxDP[3][1] ),
        .I3(\mult_msb/FFxDP[2][1] ),
        .I4(\mult_lsb/FFxDP[3][3] ),
        .I5(\mult_lsb/FFxDP[2][3] ),
        .O(\QxDO[1]_OBUF [4]));
  OBUF \QxDO[1][5]_INST_0 
       (.I(\QxDO[1]_OBUF [5]),
        .O(\QxDO[1] [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \QxDO[1][5]_INST_0_i_1 
       (.I0(\mult_lsb/FFxDP[2][0] ),
        .I1(\mult_lsb/FFxDP[3][0] ),
        .I2(\mult_msb/FFxDP[2][2] ),
        .I3(\mult_msb/FFxDP[3][2] ),
        .O(\QxDO[1]_OBUF [5]));
  OBUF \QxDO[1][6]_INST_0 
       (.I(\QxDO[1]_OBUF [6]),
        .O(\QxDO[1] [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \QxDO[1][6]_INST_0_i_1 
       (.I0(\mult_msb/FFxDP[2][3] ),
        .I1(\mult_msb/FFxDP[3][3] ),
        .I2(\mult_lsb/FFxDP[2][3] ),
        .I3(\mult_lsb/FFxDP[3][3] ),
        .O(\QxDO[1]_OBUF [6]));
  OBUF \QxDO[1][7]_INST_0 
       (.I(\QxDO[1]_OBUF [7]),
        .O(\QxDO[1] [7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \QxDO[1][7]_INST_0_i_1 
       (.I0(\mult_lsb/FFxDP[2][3] ),
        .I1(\mult_lsb/FFxDP[3][3] ),
        .I2(\mult_msb/FFxDP[2][1] ),
        .I3(\mult_msb/FFxDP[3][1] ),
        .O(\QxDO[1]_OBUF [7]));
  IBUF RstxBI_IBUF_inst
       (.I(RstxBI),
        .O(RstxBI_IBUF));
  VCC VCC
       (.P(\<const1> ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_0xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0xD[0][0] ),
        .Q(\Y0_0xDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_0xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0xD[0][1] ),
        .Q(\Y0_0xDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_0xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0xD[0][2] ),
        .Q(\Y0_0xDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_0xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0xD[0][3] ),
        .Q(\Y0_0xDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_0xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0xD[1][0] ),
        .Q(\Y0_0xDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_0xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0xD[1][1] ),
        .Q(\Y0_0xDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_0xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0xD[1][2] ),
        .Q(\Y0_0xDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_0xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0xD[1][3] ),
        .Q(\Y0_0xDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_1xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_0xDP[0][0] ),
        .Q(\Y0_1xDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_1xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_0xDP[0][1] ),
        .Q(\Y0_1xDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_1xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_0xDP[0][2] ),
        .Q(\Y0_1xDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_1xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_0xDP[0][3] ),
        .Q(\Y0_1xDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_1xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_0xDP[1][0] ),
        .Q(\Y0_1xDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_1xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_0xDP[1][1] ),
        .Q(\Y0_1xDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_1xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_0xDP[1][2] ),
        .Q(\Y0_1xDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_1xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_0xDP[1][3] ),
        .Q(\Y0_1xDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_2xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_1xDP[0][0] ),
        .Q(\Y0_2xDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_2xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_1xDP[0][1] ),
        .Q(\Y0_2xDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_2xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_1xDP[0][2] ),
        .Q(\Y0_2xDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_2xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_1xDP[0][3] ),
        .Q(\Y0_2xDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_2xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_1xDP[1][0] ),
        .Q(\Y0_2xDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_2xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_1xDP[1][1] ),
        .Q(\Y0_2xDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_2xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_1xDP[1][2] ),
        .Q(\Y0_2xDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_2xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_1xDP[1][3] ),
        .Q(\Y0_2xDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_3xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_2xDP[0][0] ),
        .Q(\Y0_3xDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_3xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_2xDP[0][1] ),
        .Q(\Y0_3xDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_3xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_2xDP[0][2] ),
        .Q(\Y0_3xDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_3xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_2xDP[0][3] ),
        .Q(\Y0_3xDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_3xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_2xDP[1][0] ),
        .Q(\Y0_3xDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_3xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_2xDP[1][1] ),
        .Q(\Y0_3xDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_3xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_2xDP[1][2] ),
        .Q(\Y0_3xDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_3xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_2xDP[1][3] ),
        .Q(\Y0_3xDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_4xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_3xDP[0][0] ),
        .Q(\Y0_4xDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_4xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_3xDP[0][1] ),
        .Q(\Y0_4xDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_4xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_3xDP[0][2] ),
        .Q(\Y0_4xDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_4xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_3xDP[0][3] ),
        .Q(\Y0_4xDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_4xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_3xDP[1][0] ),
        .Q(\Y0_4xDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_4xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_3xDP[1][1] ),
        .Q(\Y0_4xDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_4xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_3xDP[1][2] ),
        .Q(\Y0_4xDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y0_4xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y0_3xDP[1][3] ),
        .Q(\Y0_4xDP[1][3] ));
  FDRE #(
    .INIT(1'b0)) 
    \Y0xorY12xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .D(p_0_out),
        .Q(\Y0xorY12xDP[0][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \Y0xorY12xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\Y0xorY12xD[0][1] ),
        .Q(\Y0xorY12xDP[0][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \Y0xorY12xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\Y0xorY12xD[0][2] ),
        .Q(\Y0xorY12xDP[0][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \Y0xorY12xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\Y0xorY12xD[0][3] ),
        .Q(\Y0xorY12xDP[0][3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \Y0xorY12xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .D(qi_i_1__17_n_33),
        .Q(\Y0xorY12xDP[1][0] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \Y0xorY12xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\Y0xorY12xD[1][1] ),
        .Q(\Y0xorY12xDP[1][1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \Y0xorY12xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\Y0xorY12xD[1][2] ),
        .Q(\Y0xorY12xDP[1][2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \Y0xorY12xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\Y0xorY12xD[1][3] ),
        .Q(\Y0xorY12xDP[1][3] ),
        .R(\<const0> ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_0xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1xD[0][4] ),
        .Q(\Y1_0xDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_0xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1xD[0][5] ),
        .Q(\Y1_0xDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_0xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1xD[0][6] ),
        .Q(\Y1_0xDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_0xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1xD[0][7] ),
        .Q(\Y1_0xDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_0xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1xD[1][4] ),
        .Q(\Y1_0xDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_0xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1xD[1][5] ),
        .Q(\Y1_0xDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_0xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1xD[1][6] ),
        .Q(\Y1_0xDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_0xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1xD[1][7] ),
        .Q(\Y1_0xDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_1xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_0xDP[0][0] ),
        .Q(\Y1_1xDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_1xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_0xDP[0][1] ),
        .Q(\Y1_1xDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_1xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_0xDP[0][2] ),
        .Q(\Y1_1xDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_1xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_0xDP[0][3] ),
        .Q(\Y1_1xDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_1xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_0xDP[1][0] ),
        .Q(\Y1_1xDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_1xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_0xDP[1][1] ),
        .Q(\Y1_1xDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_1xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_0xDP[1][2] ),
        .Q(\Y1_1xDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_1xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_0xDP[1][3] ),
        .Q(\Y1_1xDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_2xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_1xDP[0][0] ),
        .Q(\Y1_2xDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_2xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_1xDP[0][1] ),
        .Q(\Y1_2xDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_2xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_1xDP[0][2] ),
        .Q(\Y1_2xDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_2xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_1xDP[0][3] ),
        .Q(\Y1_2xDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_2xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_1xDP[1][0] ),
        .Q(\Y1_2xDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_2xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_1xDP[1][1] ),
        .Q(\Y1_2xDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_2xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_1xDP[1][2] ),
        .Q(\Y1_2xDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_2xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_1xDP[1][3] ),
        .Q(\Y1_2xDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_3xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_2xDP[0][0] ),
        .Q(\Y1_3xDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_3xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_2xDP[0][1] ),
        .Q(\Y1_3xDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_3xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_2xDP[0][2] ),
        .Q(\Y1_3xDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_3xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_2xDP[0][3] ),
        .Q(\Y1_3xDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_3xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_2xDP[1][0] ),
        .Q(\Y1_3xDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_3xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_2xDP[1][1] ),
        .Q(\Y1_3xDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_3xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_2xDP[1][2] ),
        .Q(\Y1_3xDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_3xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_2xDP[1][3] ),
        .Q(\Y1_3xDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_4xDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_3xDP[0][0] ),
        .Q(\Y1_4xDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_4xDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_3xDP[0][1] ),
        .Q(\Y1_4xDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_4xDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_3xDP[0][2] ),
        .Q(\Y1_4xDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_4xDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_3xDP[0][3] ),
        .Q(\Y1_4xDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_4xDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_3xDP[1][0] ),
        .Q(\Y1_4xDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_4xDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_3xDP[1][1] ),
        .Q(\Y1_4xDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_4xDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_3xDP[1][2] ),
        .Q(\Y1_4xDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \Y1_4xDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\Y1_3xDP[1][3] ),
        .Q(\Y1_4xDP[1][3] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \generate_instances_g[0].input_mapping/qi_i_1 
       (.I0(qi_reg_i_2__1_n_33),
        .I1(qi_reg_i_2__0_n_33),
        .I2(qi_reg_i_3_n_33),
        .I3(qi_reg_i_1_n_33),
        .O(\mappedxD[0][6] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \generate_instances_g[0].input_mapping/qi_i_1__0 
       (.I0(qi_reg_i_2__1_n_33),
        .I1(qi_reg_i_2__0_n_33),
        .I2(qi_reg_i_1_n_33),
        .O(\mappedxD[0][1] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \generate_instances_g[0].input_mapping/qi_i_1__1 
       (.I0(qi_reg_i_2__1_n_33),
        .I1(qi_reg_i_2__0_n_33),
        .I2(qi_reg_i_1_n_33),
        .I3(qi_reg_i_5_n_33),
        .O(\mappedxD[0][5] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \generate_instances_g[0].input_mapping/qi_i_1__2 
       (.I0(qi_reg_i_2__0_n_33),
        .I1(qi_reg_i_2__1_n_33),
        .I2(qi_reg_i_2_n_33),
        .I3(qi_reg_i_4_n_33),
        .I4(qi_reg_i_5_n_33),
        .I5(qi_reg_i_1_n_33),
        .O(\mappedxD[0][7] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \generate_instances_g[0].input_mapping/qi_i_1__3 
       (.I0(qi_reg_i_2__0_n_33),
        .I1(qi_reg_i_2__1_n_33),
        .I2(qi_reg_i_2_n_33),
        .I3(qi_reg_i_1_n_33),
        .O(\mappedxD[0][4] ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \generate_instances_g[0].input_mapping/qi_i_1__4 
       (.I0(qi_reg_i_2_n_33),
        .I1(qi_reg_i_3__0_n_33),
        .I2(qi_reg_i_5_n_33),
        .I3(qi_reg_i_1_n_33),
        .I4(qi_reg_i_3_n_33),
        .O(\mappedxD[0][3] ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \generate_instances_g[0].input_mapping/qi_i_1__5 
       (.I0(qi_reg_i_2__0_n_33),
        .I1(qi_reg_i_3__0_n_33),
        .I2(qi_reg_i_4_n_33),
        .I3(qi_reg_i_5_n_33),
        .I4(qi_reg_i_1_n_33),
        .O(\generate_instances_g[0].input_mapping/qi_i_1__5_n_33 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \generate_instances_g[1].input_mapping/qi_i_1 
       (.I0(qi_reg_i_2__4_n_33),
        .I1(qi_reg_i_2__3_n_33),
        .I2(qi_reg_i_3__1_n_33),
        .I3(qi_reg_i_1__0_n_33),
        .O(\mappedxD[1][6] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \generate_instances_g[1].input_mapping/qi_i_1__0 
       (.I0(qi_reg_i_2__4_n_33),
        .I1(qi_reg_i_2__3_n_33),
        .I2(qi_reg_i_1__0_n_33),
        .O(\mappedxD[1][1] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \generate_instances_g[1].input_mapping/qi_i_1__1 
       (.I0(qi_reg_i_2__4_n_33),
        .I1(qi_reg_i_2__3_n_33),
        .I2(qi_reg_i_1__0_n_33),
        .I3(qi_reg_i_5__0_n_33),
        .O(\mappedxD[1][5] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \generate_instances_g[1].input_mapping/qi_i_1__2 
       (.I0(qi_reg_i_2__3_n_33),
        .I1(qi_reg_i_2__4_n_33),
        .I2(qi_reg_i_2__2_n_33),
        .I3(qi_reg_i_4__0_n_33),
        .I4(qi_reg_i_5__0_n_33),
        .I5(qi_reg_i_1__0_n_33),
        .O(\mappedxD[1][7] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \generate_instances_g[1].input_mapping/qi_i_1__3 
       (.I0(qi_reg_i_2__3_n_33),
        .I1(qi_reg_i_2__4_n_33),
        .I2(qi_reg_i_2__2_n_33),
        .I3(qi_reg_i_1__0_n_33),
        .O(\mappedxD[1][4] ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \generate_instances_g[1].input_mapping/qi_i_1__4 
       (.I0(qi_reg_i_2__2_n_33),
        .I1(qi_reg_i_3__2_n_33),
        .I2(qi_reg_i_5__0_n_33),
        .I3(qi_reg_i_1__0_n_33),
        .I4(qi_reg_i_3__1_n_33),
        .O(\mappedxD[1][3] ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \generate_instances_g[1].input_mapping/qi_i_1__5 
       (.I0(qi_reg_i_2__3_n_33),
        .I1(qi_reg_i_3__2_n_33),
        .I2(qi_reg_i_4__0_n_33),
        .I3(qi_reg_i_5__0_n_33),
        .I4(qi_reg_i_1__0_n_33),
        .O(\generate_instances_g[1].input_mapping/qi_i_1__5_n_33 ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/AxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxDP[0][2] ),
        .Q(\inverter_gf24/AxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/AxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxDP[0][3] ),
        .Q(\inverter_gf24/AxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/AxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxDP[1][2] ),
        .Q(\inverter_gf24/AxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/AxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxDP[1][3] ),
        .Q(\inverter_gf24/AxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/BxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxDP[0][0] ),
        .Q(\inverter_gf24/BxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/BxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxDP[0][1] ),
        .Q(\inverter_gf24/BxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/BxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxDP[1][0] ),
        .Q(\inverter_gf24/BxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/BxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\InverterInxDP[1][1] ),
        .Q(\inverter_gf24/BxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/CxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/CxD[0][0] ),
        .Q(\inverter_gf24/CxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/CxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/p_5_in ),
        .Q(\inverter_gf24/CxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/CxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/CxD[1][0] ),
        .Q(\inverter_gf24/CxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/CxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/p_0_in1_in ),
        .Q(\inverter_gf24/CxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/ExDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/ExD[0][0] ),
        .Q(\inverter_gf24/ExDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/ExDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/ExD[0][1] ),
        .Q(\inverter_gf24/ExDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/ExDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/ExD[1][0] ),
        .Q(\inverter_gf24/ExDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/ExDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/ExD[1][1] ),
        .Q(\inverter_gf24/ExDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_b/FFxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_b/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0_n_33 ),
        .Q(\inverter_gf24/a_mul_b/FFxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_b/FFxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_b/FFxDN[0][1] ),
        .Q(\inverter_gf24/a_mul_b/FFxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_b/FFxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_b/FFxDN[1][0] ),
        .Q(\inverter_gf24/a_mul_b/FFxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_b/FFxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_b/FFxDN[1][1] ),
        .Q(\inverter_gf24/a_mul_b/FFxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_b/FFxDP_reg[2][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_b/FFxDN[2][0] ),
        .Q(\inverter_gf24/a_mul_b/FFxDP[2][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_b/FFxDP_reg[2][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_b/FFxDN[2][1] ),
        .Q(\inverter_gf24/a_mul_b/FFxDP[2][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_b/FFxDP_reg[3][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_b/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0_n_33 ),
        .Q(\inverter_gf24/a_mul_b/FFxDP[3][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_b/FFxDP_reg[3][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_b/FFxDN[3][1] ),
        .Q(\inverter_gf24/a_mul_b/FFxDP[3][1] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hCA60)) 
    \inverter_gf24/a_mul_b/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1 
       (.I0(\InverterInxDP[0][0] ),
        .I1(\InverterInxDP[0][1] ),
        .I2(\InverterInxDP[0][2] ),
        .I3(\InverterInxDP[0][3] ),
        .O(\inverter_gf24/a_mul_b/FFxDN[0][1] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hA6C0)) 
    \inverter_gf24/a_mul_b/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0 
       (.I0(\InverterInxDP[0][0] ),
        .I1(\InverterInxDP[0][1] ),
        .I2(\InverterInxDP[0][2] ),
        .I3(\InverterInxDP[0][3] ),
        .O(\inverter_gf24/a_mul_b/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0_n_33 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hCA60)) 
    \inverter_gf24/a_mul_b/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1 
       (.I0(\InverterInxDP[1][0] ),
        .I1(\InverterInxDP[1][1] ),
        .I2(\InverterInxDP[1][2] ),
        .I3(\InverterInxDP[1][3] ),
        .O(\inverter_gf24/a_mul_b/FFxDN[3][1] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA6C0)) 
    \inverter_gf24/a_mul_b/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0 
       (.I0(\InverterInxDP[1][0] ),
        .I1(\InverterInxDP[1][1] ),
        .I2(\InverterInxDP[1][2] ),
        .I3(\InverterInxDP[1][3] ),
        .O(\inverter_gf24/a_mul_b/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0_n_33 ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_e/FFxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_e/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0_n_33 ),
        .Q(\inverter_gf24/a_mul_e/FFxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_e/FFxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_e/FFxDN[0][1] ),
        .Q(\inverter_gf24/a_mul_e/FFxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_e/FFxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_e/FFxDN[1][0] ),
        .Q(\inverter_gf24/a_mul_e/FFxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_e/FFxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_e/FFxDN[1][1] ),
        .Q(\inverter_gf24/a_mul_e/FFxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_e/FFxDP_reg[2][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_e/FFxDN[2][0] ),
        .Q(\inverter_gf24/a_mul_e/FFxDP[2][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_e/FFxDP_reg[2][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_e/FFxDN[2][1] ),
        .Q(\inverter_gf24/a_mul_e/FFxDP[2][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_e/FFxDP_reg[3][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_e/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0_n_33 ),
        .Q(\inverter_gf24/a_mul_e/FFxDP[3][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/a_mul_e/FFxDP_reg[3][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/a_mul_e/FFxDN[3][1] ),
        .Q(\inverter_gf24/a_mul_e/FFxDP[3][1] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hCA60)) 
    \inverter_gf24/a_mul_e/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1 
       (.I0(\inverter_gf24/ExDP[0][0] ),
        .I1(\inverter_gf24/ExDP[0][1] ),
        .I2(\inverter_gf24/pipelinedAxDP[0][0] ),
        .I3(\inverter_gf24/pipelinedAxDP[0][1] ),
        .O(\inverter_gf24/a_mul_e/FFxDN[0][1] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA6C0)) 
    \inverter_gf24/a_mul_e/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0 
       (.I0(\inverter_gf24/ExDP[0][0] ),
        .I1(\inverter_gf24/ExDP[0][1] ),
        .I2(\inverter_gf24/pipelinedAxDP[0][0] ),
        .I3(\inverter_gf24/pipelinedAxDP[0][1] ),
        .O(\inverter_gf24/a_mul_e/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0_n_33 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hCA60)) 
    \inverter_gf24/a_mul_e/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1 
       (.I0(\inverter_gf24/ExDP[1][0] ),
        .I1(\inverter_gf24/ExDP[1][1] ),
        .I2(\inverter_gf24/pipelinedAxDP[1][0] ),
        .I3(\inverter_gf24/pipelinedAxDP[1][1] ),
        .O(\inverter_gf24/a_mul_e/FFxDN[3][1] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA6C0)) 
    \inverter_gf24/a_mul_e/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0 
       (.I0(\inverter_gf24/ExDP[1][0] ),
        .I1(\inverter_gf24/ExDP[1][1] ),
        .I2(\inverter_gf24/pipelinedAxDP[1][0] ),
        .I3(\inverter_gf24/pipelinedAxDP[1][1] ),
        .O(\inverter_gf24/a_mul_e/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0_n_33 ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/b_mul_e/FFxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/b_mul_e/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0_n_33 ),
        .Q(\inverter_gf24/b_mul_e/FFxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/b_mul_e/FFxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/b_mul_e/FFxDN[0][1] ),
        .Q(\inverter_gf24/b_mul_e/FFxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/b_mul_e/FFxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/b_mul_e/FFxDN[1][0] ),
        .Q(\inverter_gf24/b_mul_e/FFxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/b_mul_e/FFxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/b_mul_e/FFxDN[1][1] ),
        .Q(\inverter_gf24/b_mul_e/FFxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/b_mul_e/FFxDP_reg[2][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/b_mul_e/FFxDN[2][0] ),
        .Q(\inverter_gf24/b_mul_e/FFxDP[2][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/b_mul_e/FFxDP_reg[2][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/b_mul_e/FFxDN[2][1] ),
        .Q(\inverter_gf24/b_mul_e/FFxDP[2][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/b_mul_e/FFxDP_reg[3][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/b_mul_e/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0_n_33 ),
        .Q(\inverter_gf24/b_mul_e/FFxDP[3][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/b_mul_e/FFxDP_reg[3][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/b_mul_e/FFxDN[3][1] ),
        .Q(\inverter_gf24/b_mul_e/FFxDP[3][1] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hCA60)) 
    \inverter_gf24/b_mul_e/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1 
       (.I0(\inverter_gf24/ExDP[0][0] ),
        .I1(\inverter_gf24/ExDP[0][1] ),
        .I2(\inverter_gf24/pipelinedBxDP[0][0] ),
        .I3(\inverter_gf24/pipelinedBxDP[0][1] ),
        .O(\inverter_gf24/b_mul_e/FFxDN[0][1] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hA6C0)) 
    \inverter_gf24/b_mul_e/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0 
       (.I0(\inverter_gf24/ExDP[0][0] ),
        .I1(\inverter_gf24/ExDP[0][1] ),
        .I2(\inverter_gf24/pipelinedBxDP[0][0] ),
        .I3(\inverter_gf24/pipelinedBxDP[0][1] ),
        .O(\inverter_gf24/b_mul_e/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf2_mul/qi_i_1__0_n_33 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hCA60)) 
    \inverter_gf24/b_mul_e/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1 
       (.I0(\inverter_gf24/ExDP[1][0] ),
        .I1(\inverter_gf24/ExDP[1][1] ),
        .I2(\inverter_gf24/pipelinedBxDP[1][0] ),
        .I3(\inverter_gf24/pipelinedBxDP[1][1] ),
        .O(\inverter_gf24/b_mul_e/FFxDN[3][1] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA6C0)) 
    \inverter_gf24/b_mul_e/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0 
       (.I0(\inverter_gf24/ExDP[1][0] ),
        .I1(\inverter_gf24/ExDP[1][1] ),
        .I2(\inverter_gf24/pipelinedBxDP[1][0] ),
        .I3(\inverter_gf24/pipelinedBxDP[1][1] ),
        .O(\inverter_gf24/b_mul_e/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf2_mul/qi_i_1__0_n_33 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \inverter_gf24/g15 
       (.I0(\InverterInxDP[0][0] ),
        .I1(\InverterInxDP[0][2] ),
        .I2(\InverterInxDP[0][1] ),
        .I3(\InverterInxDP[0][3] ),
        .O(\inverter_gf24/CxD[0][0] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \inverter_gf24/g20 
       (.I0(\InverterInxDP[1][0] ),
        .I1(\InverterInxDP[1][2] ),
        .I2(\InverterInxDP[1][1] ),
        .I3(\InverterInxDP[1][3] ),
        .O(\inverter_gf24/CxD[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/pipelinedAxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/AxDP[0][0] ),
        .Q(\inverter_gf24/pipelinedAxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/pipelinedAxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/AxDP[0][1] ),
        .Q(\inverter_gf24/pipelinedAxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/pipelinedAxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/AxDP[1][0] ),
        .Q(\inverter_gf24/pipelinedAxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/pipelinedAxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/AxDP[1][1] ),
        .Q(\inverter_gf24/pipelinedAxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/pipelinedBxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/BxDP[0][0] ),
        .Q(\inverter_gf24/pipelinedBxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/pipelinedBxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/BxDP[0][1] ),
        .Q(\inverter_gf24/pipelinedBxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/pipelinedBxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/BxDP[1][0] ),
        .Q(\inverter_gf24/pipelinedBxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \inverter_gf24/pipelinedBxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\inverter_gf24/BxDP[1][1] ),
        .Q(\inverter_gf24/pipelinedBxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\generate_instances_g[0].input_mapping/qi_i_1__5_n_33 ),
        .Q(\Y0xD[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[0][1] ),
        .Q(\Y0xD[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(qi_reg_i_1_n_33),
        .Q(\Y0xD[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[0][3] ),
        .Q(\Y0xD[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[0][4]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[0][4] ),
        .Q(\Y1xD[0][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[0][5]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[0][5] ),
        .Q(\Y1xD[0][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[0][6]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[0][6] ),
        .Q(\Y1xD[0][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[0][7]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[0][7] ),
        .Q(\Y1xD[0][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\generate_instances_g[1].input_mapping/qi_i_1__5_n_33 ),
        .Q(\Y0xD[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[1][1] ),
        .Q(\Y0xD[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(qi_reg_i_1__0_n_33),
        .Q(\Y0xD[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[1][3] ),
        .Q(\Y0xD[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[1][4]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[1][4] ),
        .Q(\Y1xD[1][4] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[1][5]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[1][5] ),
        .Q(\Y1xD[1][5] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[1][6]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[1][6] ),
        .Q(\Y1xD[1][6] ));
  FDCE #(
    .INIT(1'b0)) 
    \mappedxDP_reg[1][7]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mappedxD[1][7] ),
        .Q(\Y1xD[1][7] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(qi_i_1__0_n_33),
        .Q(\mul_y0y1/FFxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[0][1] ),
        .Q(\mul_y0y1/FFxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[0][2] ),
        .Q(\mul_y0y1/FFxDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[0][3] ),
        .Q(\mul_y0y1/FFxDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[1][0] ),
        .Q(\mul_y0y1/FFxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[1][1] ),
        .Q(\mul_y0y1/FFxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[1][2] ),
        .Q(\mul_y0y1/FFxDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[1][3] ),
        .Q(\mul_y0y1/FFxDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[2][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[2][0] ),
        .Q(\mul_y0y1/FFxDP[2][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[2][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[2][1] ),
        .Q(\mul_y0y1/FFxDP[2][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[2][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[2][2] ),
        .Q(\mul_y0y1/FFxDP[2][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[2][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[2][3] ),
        .Q(\mul_y0y1/FFxDP[2][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[3][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(qi_i_1__3_n_33),
        .Q(\mul_y0y1/FFxDP[3][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[3][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[3][1] ),
        .Q(\mul_y0y1/FFxDP[3][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[3][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[3][2] ),
        .Q(\mul_y0y1/FFxDP[3][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mul_y0y1/FFxDP_reg[3][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mul_y0y1/FFxDN[3][3] ),
        .Q(\mul_y0y1/FFxDP[3][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(qi_i_1__68_n_33),
        .Q(\mult_lsb/FFxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[0][1] ),
        .Q(\mult_lsb/FFxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[0][2] ),
        .Q(\mult_lsb/FFxDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[0][3] ),
        .Q(\mult_lsb/FFxDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[1][0] ),
        .Q(\mult_lsb/FFxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[1][1] ),
        .Q(\mult_lsb/FFxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[1][2] ),
        .Q(\mult_lsb/FFxDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[1][3] ),
        .Q(\mult_lsb/FFxDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[2][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[2][0] ),
        .Q(\mult_lsb/FFxDP[2][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[2][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[2][1] ),
        .Q(\mult_lsb/FFxDP[2][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[2][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[2][2] ),
        .Q(\mult_lsb/FFxDP[2][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[2][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[2][3] ),
        .Q(\mult_lsb/FFxDP[2][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[3][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(qi_i_1__79_n_33),
        .Q(\mult_lsb/FFxDP[3][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[3][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[3][1] ),
        .Q(\mult_lsb/FFxDP[3][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[3][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[3][2] ),
        .Q(\mult_lsb/FFxDP[3][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_lsb/FFxDP_reg[3][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_lsb/FFxDN[3][3] ),
        .Q(\mult_lsb/FFxDP[3][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[0][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(qi_i_1__66_n_33),
        .Q(\mult_msb/FFxDP[0][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[0][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[0][1] ),
        .Q(\mult_msb/FFxDP[0][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[0][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[0][2] ),
        .Q(\mult_msb/FFxDP[0][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[0][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[0][3] ),
        .Q(\mult_msb/FFxDP[0][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[1][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[1][0] ),
        .Q(\mult_msb/FFxDP[1][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[1][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[1][1] ),
        .Q(\mult_msb/FFxDP[1][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[1][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[1][2] ),
        .Q(\mult_msb/FFxDP[1][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[1][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[1][3] ),
        .Q(\mult_msb/FFxDP[1][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[2][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[2][0] ),
        .Q(\mult_msb/FFxDP[2][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[2][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[2][1] ),
        .Q(\mult_msb/FFxDP[2][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[2][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[2][2] ),
        .Q(\mult_msb/FFxDP[2][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[2][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[2][3] ),
        .Q(\mult_msb/FFxDP[2][3] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[3][0]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(qi_i_1__74_n_33),
        .Q(\mult_msb/FFxDP[3][0] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[3][1]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[3][1] ),
        .Q(\mult_msb/FFxDP[3][1] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[3][2]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[3][2] ),
        .Q(\mult_msb/FFxDP[3][2] ));
  FDCE #(
    .INIT(1'b0)) 
    \mult_msb/FFxDP_reg[3][3]/qi_reg 
       (.C(ClkxCI_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(n_1),
        .D(\mult_msb/FFxDN[3][3] ),
        .Q(\mult_msb/FFxDP[3][3] ));
  LUT6 #(
    .INIT(64'h6996696966999999)) 
    qi_i_1
       (.I0(qi_i_2__1_n_33),
        .I1(qi_reg_i_3__4_n_33),
        .I2(\Y0xD[1][0] ),
        .I3(\Y1xD[0][4] ),
        .I4(\Y0xD[1][1] ),
        .I5(\Y1xD[0][5] ),
        .O(\mul_y0y1/FFxDN[1][0] ));
  LUT5 #(
    .INIT(32'h9969A555)) 
    qi_i_1__0
       (.I0(qi_i_3_n_33),
        .I1(\Y1xD[0][4] ),
        .I2(\Y1xD[0][5] ),
        .I3(\Y0xD[0][0] ),
        .I4(\Y0xD[0][1] ),
        .O(qi_i_1__0_n_33));
  LUT5 #(
    .INIT(32'hA5996955)) 
    qi_i_1__1
       (.I0(qi_i_2_n_33),
        .I1(\Y1xD[0][4] ),
        .I2(\Y1xD[0][5] ),
        .I3(\Y0xD[0][0] ),
        .I4(\Y0xD[0][1] ),
        .O(\mul_y0y1/FFxDN[0][1] ));
  LUT5 #(
    .INIT(32'h5A6696AA)) 
    qi_i_1__10
       (.I0(qi_i_2__3_n_33),
        .I1(\Y0xD[1][2] ),
        .I2(\Y0xD[1][3] ),
        .I3(\Y1xD[1][6] ),
        .I4(\Y1xD[1][7] ),
        .O(\mul_y0y1/FFxDN[3][3] ));
  LUT6 #(
    .INIT(64'h6996669969699999)) 
    qi_i_1__11
       (.I0(qi_i_2__5_n_33),
        .I1(qi_reg_i_3__4_n_33),
        .I2(\Y1xD[1][4] ),
        .I3(\Y0xD[0][0] ),
        .I4(\Y0xD[0][1] ),
        .I5(\Y1xD[1][5] ),
        .O(\mul_y0y1/FFxDN[2][0] ));
  LUT6 #(
    .INIT(64'h9696699699666666)) 
    qi_i_1__12
       (.I0(qi_i_2__4_n_33),
        .I1(qi_reg_i_3__3_n_33),
        .I2(\Y1xD[1][5] ),
        .I3(\Y1xD[1][4] ),
        .I4(\Y0xD[0][1] ),
        .I5(\Y0xD[0][0] ),
        .O(\mul_y0y1/FFxDN[2][1] ));
  LUT6 #(
    .INIT(64'h9669996696966666)) 
    qi_i_1__13
       (.I0(qi_i_2__4_n_33),
        .I1(qi_reg_i_2__5_n_33),
        .I2(\Y1xD[1][7] ),
        .I3(\Y0xD[0][3] ),
        .I4(\Y0xD[0][2] ),
        .I5(\Y1xD[1][6] ),
        .O(\mul_y0y1/FFxDN[2][3] ));
  LUT6 #(
    .INIT(64'h6996669969699999)) 
    qi_i_1__14
       (.I0(qi_i_2__5_n_33),
        .I1(qi_reg_i_2__6_n_33),
        .I2(\Y1xD[1][6] ),
        .I3(\Y0xD[0][2] ),
        .I4(\Y0xD[0][3] ),
        .I5(\Y1xD[1][7] ),
        .O(\mul_y0y1/FFxDN[2][2] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    qi_i_1__15
       (.I0(\Y1xD[1][4] ),
        .I1(\Y0xD[1][0] ),
        .I2(\Y1xD[1][6] ),
        .I3(\Y0xD[1][2] ),
        .O(\Y0xorY12xD[1][3] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    qi_i_1__16
       (.I0(\Y1xD[1][4] ),
        .I1(\Y0xD[1][0] ),
        .I2(\Y1xD[1][5] ),
        .I3(\Y0xD[1][1] ),
        .O(\Y0xorY12xD[1][1] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_1__17
       (.I0(\Y0xD[1][0] ),
        .I1(\Y1xD[1][4] ),
        .O(qi_i_1__17_n_33));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    qi_i_1__18
       (.I0(\Y1xD[1][5] ),
        .I1(\Y0xD[1][1] ),
        .I2(\Y1xD[1][7] ),
        .I3(\Y0xD[1][3] ),
        .O(\Y0xorY12xD[1][2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    qi_i_1__19
       (.I0(\Y1xD[0][6] ),
        .I1(\Y0xD[0][2] ),
        .I2(\Y1xD[0][4] ),
        .I3(\Y0xD[0][0] ),
        .O(\Y0xorY12xD[0][3] ));
  LUT6 #(
    .INIT(64'h9696699699666666)) 
    qi_i_1__2
       (.I0(qi_i_2__0_n_33),
        .I1(qi_reg_i_3__3_n_33),
        .I2(\Y1xD[0][5] ),
        .I3(\Y1xD[0][4] ),
        .I4(\Y0xD[1][1] ),
        .I5(\Y0xD[1][0] ),
        .O(\mul_y0y1/FFxDN[1][1] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    qi_i_1__20
       (.I0(\Y1xD[0][4] ),
        .I1(\Y0xD[0][0] ),
        .I2(\Y1xD[0][5] ),
        .I3(\Y0xD[0][1] ),
        .O(\Y0xorY12xD[0][1] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_1__21
       (.I0(\Y0xD[0][0] ),
        .I1(\Y1xD[0][4] ),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    qi_i_1__22
       (.I0(\Y1xD[0][7] ),
        .I1(\Y0xD[0][3] ),
        .I2(\Y1xD[0][5] ),
        .I3(\Y0xD[0][1] ),
        .O(\Y0xorY12xD[0][2] ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__23
       (.I0(\Y0xorY12xDP[0][0] ),
        .I1(\mul_y0y1/FFxDP[0][0] ),
        .I2(\mul_y0y1/FFxDP[1][0] ),
        .O(\InverterInxD[0][0] ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__24
       (.I0(\Y0xorY12xDP[0][1] ),
        .I1(\mul_y0y1/FFxDP[0][1] ),
        .I2(\mul_y0y1/FFxDP[1][1] ),
        .O(\InverterInxD[0][1] ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__25
       (.I0(\Y0xorY12xDP[0][2] ),
        .I1(\mul_y0y1/FFxDP[0][2] ),
        .I2(\mul_y0y1/FFxDP[1][2] ),
        .O(\InverterInxD[0][2] ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__26
       (.I0(\Y0xorY12xDP[0][3] ),
        .I1(\mul_y0y1/FFxDP[0][3] ),
        .I2(\mul_y0y1/FFxDP[1][3] ),
        .O(\InverterInxD[0][3] ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__27
       (.I0(\Y0xorY12xDP[1][0] ),
        .I1(\mul_y0y1/FFxDP[2][0] ),
        .I2(\mul_y0y1/FFxDP[3][0] ),
        .O(\InverterInxD[1][0] ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__28
       (.I0(\Y0xorY12xDP[1][1] ),
        .I1(\mul_y0y1/FFxDP[2][1] ),
        .I2(\mul_y0y1/FFxDP[3][1] ),
        .O(\InverterInxD[1][1] ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__29
       (.I0(\Y0xorY12xDP[1][2] ),
        .I1(\mul_y0y1/FFxDP[2][2] ),
        .I2(\mul_y0y1/FFxDP[3][2] ),
        .O(\InverterInxD[1][2] ));
  LUT5 #(
    .INIT(32'h66965AAA)) 
    qi_i_1__3
       (.I0(qi_i_2__2_n_33),
        .I1(\Y0xD[1][0] ),
        .I2(\Y0xD[1][1] ),
        .I3(\Y1xD[1][4] ),
        .I4(\Y1xD[1][5] ),
        .O(qi_i_1__3_n_33));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__30
       (.I0(\Y0xorY12xDP[1][3] ),
        .I1(\mul_y0y1/FFxDP[2][3] ),
        .I2(\mul_y0y1/FFxDP[3][3] ),
        .O(\InverterInxD[1][3] ));
  LUT5 #(
    .INIT(32'h5A6696AA)) 
    qi_i_1__31
       (.I0(qi_reg_i_2__16_n_33),
        .I1(\InverterInxDP[0][3] ),
        .I2(\InverterInxDP[0][2] ),
        .I3(\InverterInxDP[1][1] ),
        .I4(\InverterInxDP[1][0] ),
        .O(\inverter_gf24/a_mul_b/FFxDN[1][0] ));
  LUT5 #(
    .INIT(32'h66965AAA)) 
    qi_i_1__32
       (.I0(qi_reg_i_2__15_n_33),
        .I1(\InverterInxDP[0][3] ),
        .I2(\InverterInxDP[0][2] ),
        .I3(\InverterInxDP[1][1] ),
        .I4(\InverterInxDP[1][0] ),
        .O(\inverter_gf24/a_mul_b/FFxDN[1][1] ));
  LUT5 #(
    .INIT(32'h5A6696AA)) 
    qi_i_1__33
       (.I0(qi_reg_i_2__16_n_33),
        .I1(\InverterInxDP[1][3] ),
        .I2(\InverterInxDP[1][2] ),
        .I3(\InverterInxDP[0][1] ),
        .I4(\InverterInxDP[0][0] ),
        .O(\inverter_gf24/a_mul_b/FFxDN[2][0] ));
  LUT5 #(
    .INIT(32'h66965AAA)) 
    qi_i_1__34
       (.I0(qi_reg_i_2__15_n_33),
        .I1(\InverterInxDP[1][3] ),
        .I2(\InverterInxDP[1][2] ),
        .I3(\InverterInxDP[0][1] ),
        .I4(\InverterInxDP[0][0] ),
        .O(\inverter_gf24/a_mul_b/FFxDN[2][1] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_1__35
       (.I0(\InverterInxDP[0][1] ),
        .I1(\InverterInxDP[0][3] ),
        .O(\inverter_gf24/p_5_in ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_1__36
       (.I0(\InverterInxDP[1][1] ),
        .I1(\InverterInxDP[1][3] ),
        .O(\inverter_gf24/p_0_in1_in ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__37
       (.I0(\inverter_gf24/a_mul_b/FFxDP[0][1] ),
        .I1(\inverter_gf24/a_mul_b/FFxDP[1][1] ),
        .I2(\inverter_gf24/CxDP[0][1] ),
        .O(\inverter_gf24/ExD[0][0] ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__38
       (.I0(\inverter_gf24/a_mul_b/FFxDP[0][0] ),
        .I1(\inverter_gf24/a_mul_b/FFxDP[1][0] ),
        .I2(\inverter_gf24/CxDP[0][0] ),
        .O(\inverter_gf24/ExD[0][1] ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__39
       (.I0(\inverter_gf24/a_mul_b/FFxDP[2][1] ),
        .I1(\inverter_gf24/a_mul_b/FFxDP[3][1] ),
        .I2(\inverter_gf24/CxDP[1][1] ),
        .O(\inverter_gf24/ExD[1][0] ));
  LUT5 #(
    .INIT(32'h5A6696AA)) 
    qi_i_1__4
       (.I0(qi_i_2__3_n_33),
        .I1(\Y0xD[1][0] ),
        .I2(\Y0xD[1][1] ),
        .I3(\Y1xD[1][4] ),
        .I4(\Y1xD[1][5] ),
        .O(\mul_y0y1/FFxDN[3][1] ));
  LUT3 #(
    .INIT(8'h96)) 
    qi_i_1__40
       (.I0(\inverter_gf24/a_mul_b/FFxDP[2][0] ),
        .I1(\inverter_gf24/a_mul_b/FFxDP[3][0] ),
        .I2(\inverter_gf24/CxDP[1][0] ),
        .O(\inverter_gf24/ExD[1][1] ));
  LUT5 #(
    .INIT(32'h5A6696AA)) 
    qi_i_1__41
       (.I0(qi_reg_i_2__18_n_33),
        .I1(\inverter_gf24/pipelinedAxDP[0][1] ),
        .I2(\inverter_gf24/pipelinedAxDP[0][0] ),
        .I3(\inverter_gf24/ExDP[1][1] ),
        .I4(\inverter_gf24/ExDP[1][0] ),
        .O(\inverter_gf24/a_mul_e/FFxDN[1][0] ));
  LUT5 #(
    .INIT(32'h66965AAA)) 
    qi_i_1__42
       (.I0(qi_reg_i_2__17_n_33),
        .I1(\inverter_gf24/pipelinedAxDP[0][1] ),
        .I2(\inverter_gf24/pipelinedAxDP[0][0] ),
        .I3(\inverter_gf24/ExDP[1][1] ),
        .I4(\inverter_gf24/ExDP[1][0] ),
        .O(\inverter_gf24/a_mul_e/FFxDN[1][1] ));
  LUT5 #(
    .INIT(32'h5A6696AA)) 
    qi_i_1__43
       (.I0(qi_reg_i_2__18_n_33),
        .I1(\inverter_gf24/pipelinedAxDP[1][1] ),
        .I2(\inverter_gf24/pipelinedAxDP[1][0] ),
        .I3(\inverter_gf24/ExDP[0][1] ),
        .I4(\inverter_gf24/ExDP[0][0] ),
        .O(\inverter_gf24/a_mul_e/FFxDN[2][0] ));
  LUT5 #(
    .INIT(32'h66965AAA)) 
    qi_i_1__44
       (.I0(qi_reg_i_2__17_n_33),
        .I1(\inverter_gf24/pipelinedAxDP[1][1] ),
        .I2(\inverter_gf24/pipelinedAxDP[1][0] ),
        .I3(\inverter_gf24/ExDP[0][1] ),
        .I4(\inverter_gf24/ExDP[0][0] ),
        .O(\inverter_gf24/a_mul_e/FFxDN[2][1] ));
  LUT5 #(
    .INIT(32'h5A6696AA)) 
    qi_i_1__45
       (.I0(qi_reg_i_2__20_n_33),
        .I1(\inverter_gf24/pipelinedBxDP[0][1] ),
        .I2(\inverter_gf24/pipelinedBxDP[0][0] ),
        .I3(\inverter_gf24/ExDP[1][1] ),
        .I4(\inverter_gf24/ExDP[1][0] ),
        .O(\inverter_gf24/b_mul_e/FFxDN[1][0] ));
  LUT5 #(
    .INIT(32'h66965AAA)) 
    qi_i_1__46
       (.I0(qi_reg_i_2__19_n_33),
        .I1(\inverter_gf24/pipelinedBxDP[0][1] ),
        .I2(\inverter_gf24/pipelinedBxDP[0][0] ),
        .I3(\inverter_gf24/ExDP[1][1] ),
        .I4(\inverter_gf24/ExDP[1][0] ),
        .O(\inverter_gf24/b_mul_e/FFxDN[1][1] ));
  LUT5 #(
    .INIT(32'h5A6696AA)) 
    qi_i_1__47
       (.I0(qi_reg_i_2__20_n_33),
        .I1(\inverter_gf24/pipelinedBxDP[1][1] ),
        .I2(\inverter_gf24/pipelinedBxDP[1][0] ),
        .I3(\inverter_gf24/ExDP[0][1] ),
        .I4(\inverter_gf24/ExDP[0][0] ),
        .O(\inverter_gf24/b_mul_e/FFxDN[2][0] ));
  LUT5 #(
    .INIT(32'h66965AAA)) 
    qi_i_1__48
       (.I0(qi_reg_i_2__19_n_33),
        .I1(\inverter_gf24/pipelinedBxDP[1][1] ),
        .I2(\inverter_gf24/pipelinedBxDP[1][0] ),
        .I3(\inverter_gf24/ExDP[0][1] ),
        .I4(\inverter_gf24/ExDP[0][0] ),
        .O(\inverter_gf24/b_mul_e/FFxDN[2][1] ));
  LUT6 #(
    .INIT(64'h9696699699666666)) 
    qi_i_1__49
       (.I0(qi_reg_i_2__10_n_33),
        .I1(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_12_in ),
        .I2(\Y0_4xDP[1][0] ),
        .I3(\Y0_4xDP[1][1] ),
        .I4(qi_i_2__16_n_33),
        .I5(\InverterOutxD[0][1] ),
        .O(\mult_msb/FFxDN[1][0] ));
  LUT5 #(
    .INIT(32'h9969A555)) 
    qi_i_1__5
       (.I0(qi_i_3_n_33),
        .I1(\Y1xD[0][6] ),
        .I2(\Y1xD[0][7] ),
        .I3(\Y0xD[0][2] ),
        .I4(\Y0xD[0][3] ),
        .O(\mul_y0y1/FFxDN[0][2] ));
  LUT6 #(
    .INIT(64'h9966969669966666)) 
    qi_i_1__50
       (.I0(qi_reg_i_2__9_n_33),
        .I1(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_13_in ),
        .I2(\Y0_4xDP[1][0] ),
        .I3(\Y0_4xDP[1][1] ),
        .I4(qi_i_2__16_n_33),
        .I5(\InverterOutxD[0][1] ),
        .O(\mult_msb/FFxDN[1][1] ));
  LUT6 #(
    .INIT(64'h9696699699666666)) 
    qi_i_1__51
       (.I0(qi_reg_i_2__8_n_33),
        .I1(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_12_in ),
        .I2(\Y0_4xDP[1][2] ),
        .I3(\Y0_4xDP[1][3] ),
        .I4(\InverterOutxD[0][2] ),
        .I5(\InverterOutxD[0][3] ),
        .O(\mult_msb/FFxDN[1][2] ));
  LUT6 #(
    .INIT(64'h9966969669966666)) 
    qi_i_1__52
       (.I0(qi_reg_i_2__7_n_33),
        .I1(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_13_in ),
        .I2(\Y0_4xDP[1][2] ),
        .I3(\Y0_4xDP[1][3] ),
        .I4(\InverterOutxD[0][2] ),
        .I5(\InverterOutxD[0][3] ),
        .O(\mult_msb/FFxDN[1][3] ));
  LUT6 #(
    .INIT(64'h9696699699666666)) 
    qi_i_1__53
       (.I0(qi_reg_i_2__10_n_33),
        .I1(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_12_in ),
        .I2(\Y0_4xDP[0][0] ),
        .I3(\Y0_4xDP[0][1] ),
        .I4(qi_i_3__10_n_33),
        .I5(\InverterOutxD[1][1] ),
        .O(\mult_msb/FFxDN[2][0] ));
  LUT6 #(
    .INIT(64'h9966969669966666)) 
    qi_i_1__54
       (.I0(qi_reg_i_2__9_n_33),
        .I1(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_13_in ),
        .I2(\Y0_4xDP[0][0] ),
        .I3(\Y0_4xDP[0][1] ),
        .I4(qi_i_3__10_n_33),
        .I5(\InverterOutxD[1][1] ),
        .O(\mult_msb/FFxDN[2][1] ));
  LUT6 #(
    .INIT(64'h9696699699666666)) 
    qi_i_1__55
       (.I0(qi_reg_i_2__8_n_33),
        .I1(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_12_in ),
        .I2(\Y0_4xDP[0][2] ),
        .I3(\Y0_4xDP[0][3] ),
        .I4(\InverterOutxD[1][2] ),
        .I5(\InverterOutxD[1][3] ),
        .O(\mult_msb/FFxDN[2][2] ));
  LUT6 #(
    .INIT(64'h9966969669966666)) 
    qi_i_1__56
       (.I0(qi_reg_i_2__7_n_33),
        .I1(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_13_in ),
        .I2(\Y0_4xDP[0][2] ),
        .I3(\Y0_4xDP[0][3] ),
        .I4(\InverterOutxD[1][2] ),
        .I5(\InverterOutxD[1][3] ),
        .O(\mult_msb/FFxDN[2][3] ));
  LUT6 #(
    .INIT(64'h9696699699666666)) 
    qi_i_1__57
       (.I0(qi_reg_i_2__14_n_33),
        .I1(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_12_in ),
        .I2(\Y1_4xDP[1][0] ),
        .I3(\Y1_4xDP[1][1] ),
        .I4(qi_i_2__16_n_33),
        .I5(\InverterOutxD[0][1] ),
        .O(\mult_lsb/FFxDN[1][0] ));
  LUT6 #(
    .INIT(64'h9966969669966666)) 
    qi_i_1__58
       (.I0(qi_reg_i_2__13_n_33),
        .I1(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_13_in ),
        .I2(\Y1_4xDP[1][0] ),
        .I3(\Y1_4xDP[1][1] ),
        .I4(qi_i_2__16_n_33),
        .I5(\InverterOutxD[0][1] ),
        .O(\mult_lsb/FFxDN[1][1] ));
  LUT6 #(
    .INIT(64'h9696699699666666)) 
    qi_i_1__59
       (.I0(qi_reg_i_2__12_n_33),
        .I1(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_12_in ),
        .I2(\Y1_4xDP[1][2] ),
        .I3(\Y1_4xDP[1][3] ),
        .I4(\InverterOutxD[0][2] ),
        .I5(\InverterOutxD[0][3] ),
        .O(\mult_lsb/FFxDN[1][2] ));
  LUT5 #(
    .INIT(32'hA5996955)) 
    qi_i_1__6
       (.I0(qi_i_2_n_33),
        .I1(\Y1xD[0][6] ),
        .I2(\Y1xD[0][7] ),
        .I3(\Y0xD[0][2] ),
        .I4(\Y0xD[0][3] ),
        .O(\mul_y0y1/FFxDN[0][3] ));
  LUT6 #(
    .INIT(64'h9966969669966666)) 
    qi_i_1__60
       (.I0(qi_reg_i_2__11_n_33),
        .I1(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_13_in ),
        .I2(\Y1_4xDP[1][2] ),
        .I3(\Y1_4xDP[1][3] ),
        .I4(\InverterOutxD[0][2] ),
        .I5(\InverterOutxD[0][3] ),
        .O(\mult_lsb/FFxDN[1][3] ));
  LUT6 #(
    .INIT(64'h9696699699666666)) 
    qi_i_1__61
       (.I0(qi_reg_i_2__14_n_33),
        .I1(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_12_in ),
        .I2(\Y1_4xDP[0][0] ),
        .I3(\Y1_4xDP[0][1] ),
        .I4(qi_i_3__10_n_33),
        .I5(\InverterOutxD[1][1] ),
        .O(\mult_lsb/FFxDN[2][0] ));
  LUT6 #(
    .INIT(64'h9966969669966666)) 
    qi_i_1__62
       (.I0(qi_reg_i_2__13_n_33),
        .I1(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_13_in ),
        .I2(\Y1_4xDP[0][0] ),
        .I3(\Y1_4xDP[0][1] ),
        .I4(qi_i_3__10_n_33),
        .I5(\InverterOutxD[1][1] ),
        .O(\mult_lsb/FFxDN[2][1] ));
  LUT6 #(
    .INIT(64'h9696699699666666)) 
    qi_i_1__63
       (.I0(qi_reg_i_2__12_n_33),
        .I1(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_12_in ),
        .I2(\Y1_4xDP[0][2] ),
        .I3(\Y1_4xDP[0][3] ),
        .I4(\InverterOutxD[1][2] ),
        .I5(\InverterOutxD[1][3] ),
        .O(\mult_lsb/FFxDN[2][2] ));
  LUT6 #(
    .INIT(64'h9966969669966666)) 
    qi_i_1__64
       (.I0(qi_reg_i_2__11_n_33),
        .I1(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_13_in ),
        .I2(\Y1_4xDP[0][2] ),
        .I3(\Y1_4xDP[0][3] ),
        .I4(\InverterOutxD[1][2] ),
        .I5(\InverterOutxD[1][3] ),
        .O(\mult_lsb/FFxDN[2][3] ));
  LUT6 #(
    .INIT(64'h5569C3FFAA963C00)) 
    qi_i_1__65
       (.I0(\InverterOutxD[0][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[1][0] ),
        .I2(\inverter_gf24/a_mul_e/FFxDP[0][0] ),
        .I3(\Y0_4xDP[0][1] ),
        .I4(\Y0_4xDP[0][0] ),
        .I5(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_13_in ),
        .O(\mult_msb/FFxDN[0][1] ));
  LUT6 #(
    .INIT(64'h0F9969FFF0669600)) 
    qi_i_1__66
       (.I0(\inverter_gf24/a_mul_e/FFxDP[1][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[0][1] ),
        .I2(qi_i_2__16_n_33),
        .I3(\Y0_4xDP[0][1] ),
        .I4(\Y0_4xDP[0][0] ),
        .I5(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_12_in ),
        .O(qi_i_1__66_n_33));
  LUT6 #(
    .INIT(64'h5569C3FFAA963C00)) 
    qi_i_1__67
       (.I0(\InverterOutxD[0][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[1][0] ),
        .I2(\inverter_gf24/a_mul_e/FFxDP[0][0] ),
        .I3(\Y1_4xDP[0][1] ),
        .I4(\Y1_4xDP[0][0] ),
        .I5(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_13_in ),
        .O(\mult_lsb/FFxDN[0][1] ));
  LUT6 #(
    .INIT(64'h0F9969FFF0669600)) 
    qi_i_1__68
       (.I0(\inverter_gf24/a_mul_e/FFxDP[1][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[0][1] ),
        .I2(qi_i_2__16_n_33),
        .I3(\Y1_4xDP[0][1] ),
        .I4(\Y1_4xDP[0][0] ),
        .I5(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_12_in ),
        .O(qi_i_1__68_n_33));
  LUT6 #(
    .INIT(64'h0F9969FFF0669600)) 
    qi_i_1__69
       (.I0(\inverter_gf24/b_mul_e/FFxDP[1][1] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[0][1] ),
        .I2(\InverterOutxD[0][2] ),
        .I3(\Y0_4xDP[0][3] ),
        .I4(\Y0_4xDP[0][2] ),
        .I5(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_12_in ),
        .O(\mult_msb/FFxDN[0][2] ));
  LUT6 #(
    .INIT(64'h9669969699666666)) 
    qi_i_1__7
       (.I0(qi_i_2__0_n_33),
        .I1(qi_reg_i_2__5_n_33),
        .I2(\Y0xD[1][3] ),
        .I3(\Y1xD[0][7] ),
        .I4(\Y0xD[1][2] ),
        .I5(\Y1xD[0][6] ),
        .O(\mul_y0y1/FFxDN[1][3] ));
  LUT6 #(
    .INIT(64'h5569C3FFAA963C00)) 
    qi_i_1__70
       (.I0(\InverterOutxD[0][3] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[1][0] ),
        .I2(\inverter_gf24/b_mul_e/FFxDP[0][0] ),
        .I3(\Y0_4xDP[0][3] ),
        .I4(\Y0_4xDP[0][2] ),
        .I5(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_13_in ),
        .O(\mult_msb/FFxDN[0][3] ));
  LUT6 #(
    .INIT(64'h0F9969FFF0669600)) 
    qi_i_1__71
       (.I0(\inverter_gf24/b_mul_e/FFxDP[1][1] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[0][1] ),
        .I2(\InverterOutxD[0][2] ),
        .I3(\Y1_4xDP[0][3] ),
        .I4(\Y1_4xDP[0][2] ),
        .I5(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_12_in ),
        .O(\mult_lsb/FFxDN[0][2] ));
  LUT6 #(
    .INIT(64'h5569C3FFAA963C00)) 
    qi_i_1__72
       (.I0(\InverterOutxD[0][3] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[1][0] ),
        .I2(\inverter_gf24/b_mul_e/FFxDP[0][0] ),
        .I3(\Y1_4xDP[0][3] ),
        .I4(\Y1_4xDP[0][2] ),
        .I5(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_13_in ),
        .O(\mult_lsb/FFxDN[0][3] ));
  LUT6 #(
    .INIT(64'h5569C3FFAA963C00)) 
    qi_i_1__73
       (.I0(\InverterOutxD[1][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[3][0] ),
        .I2(\inverter_gf24/a_mul_e/FFxDP[2][0] ),
        .I3(\Y0_4xDP[1][1] ),
        .I4(\Y0_4xDP[1][0] ),
        .I5(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_13_in ),
        .O(\mult_msb/FFxDN[3][1] ));
  LUT6 #(
    .INIT(64'h0F9969FFF0669600)) 
    qi_i_1__74
       (.I0(\inverter_gf24/a_mul_e/FFxDP[3][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[2][1] ),
        .I2(qi_i_3__10_n_33),
        .I3(\Y0_4xDP[1][1] ),
        .I4(\Y0_4xDP[1][0] ),
        .I5(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_12_in ),
        .O(qi_i_1__74_n_33));
  LUT6 #(
    .INIT(64'h0F9969FFF0669600)) 
    qi_i_1__75
       (.I0(\inverter_gf24/b_mul_e/FFxDP[3][1] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[2][1] ),
        .I2(\InverterOutxD[1][2] ),
        .I3(\Y0_4xDP[1][3] ),
        .I4(\Y0_4xDP[1][2] ),
        .I5(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_12_in ),
        .O(\mult_msb/FFxDN[3][2] ));
  LUT6 #(
    .INIT(64'h5569C3FFAA963C00)) 
    qi_i_1__76
       (.I0(\InverterOutxD[1][3] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[3][0] ),
        .I2(\inverter_gf24/b_mul_e/FFxDP[2][0] ),
        .I3(\Y0_4xDP[1][3] ),
        .I4(\Y0_4xDP[1][2] ),
        .I5(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_13_in ),
        .O(\mult_msb/FFxDN[3][3] ));
  LUT6 #(
    .INIT(64'h5569C3FFAA963C00)) 
    qi_i_1__77
       (.I0(\InverterOutxD[1][3] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[3][0] ),
        .I2(\inverter_gf24/b_mul_e/FFxDP[2][0] ),
        .I3(\Y1_4xDP[1][3] ),
        .I4(\Y1_4xDP[1][2] ),
        .I5(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_13_in ),
        .O(\mult_lsb/FFxDN[3][3] ));
  LUT6 #(
    .INIT(64'h0F9969FFF0669600)) 
    qi_i_1__78
       (.I0(\inverter_gf24/b_mul_e/FFxDP[3][1] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[2][1] ),
        .I2(\InverterOutxD[1][2] ),
        .I3(\Y1_4xDP[1][3] ),
        .I4(\Y1_4xDP[1][2] ),
        .I5(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_12_in ),
        .O(\mult_lsb/FFxDN[3][2] ));
  LUT6 #(
    .INIT(64'h0F9969FFF0669600)) 
    qi_i_1__79
       (.I0(\inverter_gf24/a_mul_e/FFxDP[3][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[2][1] ),
        .I2(qi_i_3__10_n_33),
        .I3(\Y1_4xDP[1][1] ),
        .I4(\Y1_4xDP[1][0] ),
        .I5(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_12_in ),
        .O(qi_i_1__79_n_33));
  LUT6 #(
    .INIT(64'h6996696966999999)) 
    qi_i_1__8
       (.I0(qi_i_2__1_n_33),
        .I1(qi_reg_i_2__6_n_33),
        .I2(\Y0xD[1][2] ),
        .I3(\Y1xD[0][6] ),
        .I4(\Y0xD[1][3] ),
        .I5(\Y1xD[0][7] ),
        .O(\mul_y0y1/FFxDN[1][2] ));
  LUT6 #(
    .INIT(64'h5569C3FFAA963C00)) 
    qi_i_1__80
       (.I0(\InverterOutxD[1][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[3][0] ),
        .I2(\inverter_gf24/a_mul_e/FFxDP[2][0] ),
        .I3(\Y1_4xDP[1][1] ),
        .I4(\Y1_4xDP[1][0] ),
        .I5(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_13_in ),
        .O(\mult_lsb/FFxDN[3][1] ));
  LUT5 #(
    .INIT(32'h66965AAA)) 
    qi_i_1__9
       (.I0(qi_i_2__2_n_33),
        .I1(\Y0xD[1][2] ),
        .I2(\Y0xD[1][3] ),
        .I3(\Y1xD[1][6] ),
        .I4(\Y1xD[1][7] ),
        .O(\mul_y0y1/FFxDN[3][2] ));
  LUT6 #(
    .INIT(64'h90099FF9F66FF99F)) 
    qi_i_2
       (.I0(\Y0xD[0][1] ),
        .I1(\Y0xD[0][3] ),
        .I2(\Y1xD[0][5] ),
        .I3(\Y1xD[0][7] ),
        .I4(qi_i_3__3_n_33),
        .I5(qi_i_4__1_n_33),
        .O(qi_i_2_n_33));
  LUT6 #(
    .INIT(64'h3C00AA96AA963C00)) 
    qi_i_2__0
       (.I0(qi_i_4__1_n_33),
        .I1(\Y1xD[0][5] ),
        .I2(\Y1xD[0][7] ),
        .I3(qi_i_4__2_n_33),
        .I4(\Y0xD[1][1] ),
        .I5(\Y0xD[1][3] ),
        .O(qi_i_2__0_n_33));
  LUT5 #(
    .INIT(32'h55696955)) 
    qi_i_2__1
       (.I0(qi_i_4__0_n_33),
        .I1(\Y1xD[0][7] ),
        .I2(\Y1xD[0][5] ),
        .I3(\Y0xD[1][3] ),
        .I4(\Y0xD[1][1] ),
        .O(qi_i_2__1_n_33));
  LUT6 #(
    .INIT(64'h0AA0C66CC66C0AA0)) 
    qi_i_2__10
       (.I0(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .I1(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I2(\Y0_4xDP[1][1] ),
        .I3(\Y0_4xDP[1][3] ),
        .I4(\Y0_4xDP[1][0] ),
        .I5(\Y0_4xDP[1][2] ),
        .O(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_12_in ));
  LUT6 #(
    .INIT(64'h666669960FF00000)) 
    qi_i_2__11
       (.I0(\Y0_4xDP[1][2] ),
        .I1(\Y0_4xDP[1][0] ),
        .I2(\Y0_4xDP[1][3] ),
        .I3(\Y0_4xDP[1][1] ),
        .I4(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I5(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .O(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_13_in ));
  LUT6 #(
    .INIT(64'h0AA0C66CC66C0AA0)) 
    qi_i_2__12
       (.I0(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .I1(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I2(\Y1_4xDP[0][1] ),
        .I3(\Y1_4xDP[0][3] ),
        .I4(\Y1_4xDP[0][0] ),
        .I5(\Y1_4xDP[0][2] ),
        .O(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_12_in ));
  LUT6 #(
    .INIT(64'h666669960FF00000)) 
    qi_i_2__13
       (.I0(\Y1_4xDP[0][2] ),
        .I1(\Y1_4xDP[0][0] ),
        .I2(\Y1_4xDP[0][3] ),
        .I3(\Y1_4xDP[0][1] ),
        .I4(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I5(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .O(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_13_in ));
  LUT6 #(
    .INIT(64'h0AA0C66CC66C0AA0)) 
    qi_i_2__14
       (.I0(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .I1(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I2(\Y1_4xDP[1][1] ),
        .I3(\Y1_4xDP[1][3] ),
        .I4(\Y1_4xDP[1][0] ),
        .I5(\Y1_4xDP[1][2] ),
        .O(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_12_in ));
  LUT6 #(
    .INIT(64'h666669960FF00000)) 
    qi_i_2__15
       (.I0(\Y1_4xDP[1][2] ),
        .I1(\Y1_4xDP[1][0] ),
        .I2(\Y1_4xDP[1][3] ),
        .I3(\Y1_4xDP[1][1] ),
        .I4(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I5(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .O(\mult_lsb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[1].gf4_mul/p_13_in ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_2__16
       (.I0(\inverter_gf24/a_mul_e/FFxDP[1][0] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[0][0] ),
        .O(qi_i_2__16_n_33));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_2__17
       (.I0(\inverter_gf24/a_mul_e/FFxDP[1][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[0][1] ),
        .O(\InverterOutxD[0][1] ));
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_2__18
       (.I0(\inverter_gf24/b_mul_e/FFxDP[1][0] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[0][0] ),
        .O(\InverterOutxD[0][2] ));
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_2__19
       (.I0(\inverter_gf24/b_mul_e/FFxDP[1][1] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[0][1] ),
        .O(\InverterOutxD[0][3] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAA9696AA)) 
    qi_i_2__2
       (.I0(qi_i_3__0_n_33),
        .I1(\Y1xD[1][5] ),
        .I2(\Y1xD[1][7] ),
        .I3(\Y0xD[1][3] ),
        .I4(\Y0xD[1][1] ),
        .O(qi_i_2__2_n_33));
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_2__20
       (.I0(\inverter_gf24/b_mul_e/FFxDP[3][0] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[2][0] ),
        .O(\InverterOutxD[1][2] ));
  LUT1 #(
    .INIT(2'h1)) 
    qi_i_2__21
       (.I0(RstxBI_IBUF),
        .O(n_1));
  LUT6 #(
    .INIT(64'h6FF6600609900660)) 
    qi_i_2__3
       (.I0(\Y1xD[1][7] ),
        .I1(\Y1xD[1][5] ),
        .I2(\Y0xD[1][1] ),
        .I3(\Y0xD[1][3] ),
        .I4(qi_i_3__2_n_33),
        .I5(qi_i_4__2_n_33),
        .O(qi_i_2__3_n_33));
  LUT6 #(
    .INIT(64'h3C00AA96AA963C00)) 
    qi_i_2__4
       (.I0(qi_i_3__2_n_33),
        .I1(\Y1xD[1][7] ),
        .I2(\Y1xD[1][5] ),
        .I3(qi_i_3__3_n_33),
        .I4(\Y0xD[0][1] ),
        .I5(\Y0xD[0][3] ),
        .O(qi_i_2__4_n_33));
  LUT5 #(
    .INIT(32'h55696955)) 
    qi_i_2__5
       (.I0(qi_i_3__1_n_33),
        .I1(\Y1xD[1][5] ),
        .I2(\Y1xD[1][7] ),
        .I3(\Y0xD[0][3] ),
        .I4(\Y0xD[0][1] ),
        .O(qi_i_2__5_n_33));
  LUT6 #(
    .INIT(64'h0AA0C66CC66C0AA0)) 
    qi_i_2__6
       (.I0(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .I1(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I2(\Y0_4xDP[0][1] ),
        .I3(\Y0_4xDP[0][3] ),
        .I4(\Y0_4xDP[0][0] ),
        .I5(\Y0_4xDP[0][2] ),
        .O(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_12_in ));
  LUT6 #(
    .INIT(64'h666669960FF00000)) 
    qi_i_2__7
       (.I0(\Y0_4xDP[0][2] ),
        .I1(\Y0_4xDP[0][0] ),
        .I2(\Y0_4xDP[0][3] ),
        .I3(\Y0_4xDP[0][1] ),
        .I4(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I5(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .O(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/p_13_in ));
  LUT6 #(
    .INIT(64'h0AA0C66CC66C0AA0)) 
    qi_i_2__8
       (.I0(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .I1(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I2(\Y1_4xDP[0][1] ),
        .I3(\Y1_4xDP[0][3] ),
        .I4(\Y1_4xDP[0][0] ),
        .I5(\Y1_4xDP[0][2] ),
        .O(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_12_in ));
  LUT6 #(
    .INIT(64'h666669960FF00000)) 
    qi_i_2__9
       (.I0(\Y1_4xDP[0][2] ),
        .I1(\Y1_4xDP[0][0] ),
        .I2(\Y1_4xDP[0][3] ),
        .I3(\Y1_4xDP[0][1] ),
        .I4(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I5(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .O(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_13_in ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA9696AA)) 
    qi_i_3
       (.I0(qi_i_4_n_33),
        .I1(\Y0xD[0][3] ),
        .I2(\Y0xD[0][1] ),
        .I3(\Y1xD[0][7] ),
        .I4(\Y1xD[0][5] ),
        .O(qi_i_3_n_33));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    qi_i_3__0
       (.I0(\Y0xD[1][0] ),
        .I1(\Y0xD[1][2] ),
        .I2(\Y1xD[1][6] ),
        .I3(\Y1xD[1][4] ),
        .O(qi_i_3__0_n_33));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    qi_i_3__1
       (.I0(\Y0xD[0][0] ),
        .I1(\Y0xD[0][2] ),
        .I2(\Y1xD[1][6] ),
        .I3(\Y1xD[1][4] ),
        .O(qi_i_3__1_n_33));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_3__10
       (.I0(\inverter_gf24/a_mul_e/FFxDP[3][0] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[2][0] ),
        .O(qi_i_3__10_n_33));
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_3__11
       (.I0(\inverter_gf24/b_mul_e/FFxDP[3][1] ),
        .I1(\inverter_gf24/b_mul_e/FFxDP[2][1] ),
        .O(\InverterOutxD[1][3] ));
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_3__2
       (.I0(\Y1xD[1][4] ),
        .I1(\Y1xD[1][6] ),
        .O(qi_i_3__2_n_33));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_3__3
       (.I0(\Y0xD[0][2] ),
        .I1(\Y0xD[0][0] ),
        .O(qi_i_3__3_n_33));
  LUT6 #(
    .INIT(64'h0AA0C66CC66C0AA0)) 
    qi_i_3__4
       (.I0(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .I1(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I2(\Y0_4xDP[0][1] ),
        .I3(\Y0_4xDP[0][3] ),
        .I4(\Y0_4xDP[0][0] ),
        .I5(\Y0_4xDP[0][2] ),
        .O(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_12_in ));
  LUT6 #(
    .INIT(64'h666669960FF00000)) 
    qi_i_3__5
       (.I0(\Y0_4xDP[0][2] ),
        .I1(\Y0_4xDP[0][0] ),
        .I2(\Y0_4xDP[0][3] ),
        .I3(\Y0_4xDP[0][1] ),
        .I4(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I5(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .O(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/p_13_in ));
  LUT6 #(
    .INIT(64'h0AA0C66CC66C0AA0)) 
    qi_i_3__6
       (.I0(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .I1(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I2(\Y0_4xDP[1][1] ),
        .I3(\Y0_4xDP[1][3] ),
        .I4(\Y0_4xDP[1][0] ),
        .I5(\Y0_4xDP[1][2] ),
        .O(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_12_in ));
  LUT6 #(
    .INIT(64'h0AA0C66CC66C0AA0)) 
    qi_i_3__7
       (.I0(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .I1(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I2(\Y1_4xDP[1][1] ),
        .I3(\Y1_4xDP[1][3] ),
        .I4(\Y1_4xDP[1][0] ),
        .I5(\Y1_4xDP[1][2] ),
        .O(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_12_in ));
  LUT6 #(
    .INIT(64'h666669960FF00000)) 
    qi_i_3__8
       (.I0(\Y1_4xDP[1][2] ),
        .I1(\Y1_4xDP[1][0] ),
        .I2(\Y1_4xDP[1][3] ),
        .I3(\Y1_4xDP[1][1] ),
        .I4(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I5(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .O(\mult_lsb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_13_in ));
  LUT6 #(
    .INIT(64'h666669960FF00000)) 
    qi_i_3__9
       (.I0(\Y0_4xDP[1][2] ),
        .I1(\Y0_4xDP[1][0] ),
        .I2(\Y0_4xDP[1][3] ),
        .I3(\Y0_4xDP[1][1] ),
        .I4(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA_23 ),
        .I5(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA ),
        .O(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[1].gf4_mul/p_13_in ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF99F)) 
    qi_i_4
       (.I0(\Y1xD[0][4] ),
        .I1(\Y1xD[0][6] ),
        .I2(\Y0xD[0][0] ),
        .I3(\Y0xD[0][2] ),
        .O(qi_i_4_n_33));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0660)) 
    qi_i_4__0
       (.I0(\Y0xD[1][0] ),
        .I1(\Y0xD[1][2] ),
        .I2(\Y1xD[0][4] ),
        .I3(\Y1xD[0][6] ),
        .O(qi_i_4__0_n_33));
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_4__1
       (.I0(\Y1xD[0][6] ),
        .I1(\Y1xD[0][4] ),
        .O(qi_i_4__1_n_33));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_4__2
       (.I0(\Y0xD[1][2] ),
        .I1(\Y0xD[1][0] ),
        .O(qi_i_4__2_n_33));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    qi_i_4__3
       (.I0(\inverter_gf24/a_mul_e/FFxDP[0][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[1][1] ),
        .I2(\inverter_gf24/b_mul_e/FFxDP[0][1] ),
        .I3(\inverter_gf24/b_mul_e/FFxDP[1][1] ),
        .O(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    qi_i_4__4
       (.I0(\inverter_gf24/a_mul_e/FFxDP[3][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[2][1] ),
        .O(\InverterOutxD[1][1] ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    qi_i_5
       (.I0(\inverter_gf24/a_mul_e/FFxDP[0][0] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[1][0] ),
        .I2(\inverter_gf24/b_mul_e/FFxDP[0][0] ),
        .I3(\inverter_gf24/b_mul_e/FFxDP[1][0] ),
        .O(\mult_msb/gen_inner_multipliers_g[0].gen_outer_multipliers_g[0].gf4_mul/AA_23 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    qi_i_5__0
       (.I0(\inverter_gf24/a_mul_e/FFxDP[2][1] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[3][1] ),
        .I2(\inverter_gf24/b_mul_e/FFxDP[2][1] ),
        .I3(\inverter_gf24/b_mul_e/FFxDP[3][1] ),
        .O(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    qi_i_6
       (.I0(\inverter_gf24/a_mul_e/FFxDP[2][0] ),
        .I1(\inverter_gf24/a_mul_e/FFxDP[3][0] ),
        .I2(\inverter_gf24/b_mul_e/FFxDP[2][0] ),
        .I3(\inverter_gf24/b_mul_e/FFxDP[3][0] ),
        .O(\mult_msb/gen_inner_multipliers_g[1].gen_outer_multipliers_g[0].gf4_mul/AA_23 ));
  IBUF qi_reg_i_1
       (.I(\XxDI[0] [0]),
        .O(qi_reg_i_1_n_33));
  IBUF qi_reg_i_1__0
       (.I(\XxDI[1] [0]),
        .O(qi_reg_i_1__0_n_33));
  IBUF qi_reg_i_2
       (.I(\XxDI[0] [7]),
        .O(qi_reg_i_2_n_33));
  IBUF qi_reg_i_2__0
       (.I(\XxDI[0] [6]),
        .O(qi_reg_i_2__0_n_33));
  IBUF qi_reg_i_2__1
       (.I(\XxDI[0] [5]),
        .O(qi_reg_i_2__1_n_33));
  IBUF qi_reg_i_2__10
       (.I(\Zmul2xDI[0] [0]),
        .O(qi_reg_i_2__10_n_33));
  IBUF qi_reg_i_2__11
       (.I(\Zmul3xDI[0] [3]),
        .O(qi_reg_i_2__11_n_33));
  IBUF qi_reg_i_2__12
       (.I(\Zmul3xDI[0] [2]),
        .O(qi_reg_i_2__12_n_33));
  IBUF qi_reg_i_2__13
       (.I(\Zmul3xDI[0] [1]),
        .O(qi_reg_i_2__13_n_33));
  IBUF qi_reg_i_2__14
       (.I(\Zmul3xDI[0] [0]),
        .O(qi_reg_i_2__14_n_33));
  IBUF qi_reg_i_2__15
       (.I(\Zinv1xDI[0] [1]),
        .O(qi_reg_i_2__15_n_33));
  IBUF qi_reg_i_2__16
       (.I(\Zinv1xDI[0] [0]),
        .O(qi_reg_i_2__16_n_33));
  IBUF qi_reg_i_2__17
       (.I(\Zinv2xDI[0] [1]),
        .O(qi_reg_i_2__17_n_33));
  IBUF qi_reg_i_2__18
       (.I(\Zinv2xDI[0] [0]),
        .O(qi_reg_i_2__18_n_33));
  IBUF qi_reg_i_2__19
       (.I(\Zinv3xDI[0] [1]),
        .O(qi_reg_i_2__19_n_33));
  IBUF qi_reg_i_2__2
       (.I(\XxDI[1] [7]),
        .O(qi_reg_i_2__2_n_33));
  IBUF qi_reg_i_2__20
       (.I(\Zinv3xDI[0] [0]),
        .O(qi_reg_i_2__20_n_33));
  IBUF qi_reg_i_2__3
       (.I(\XxDI[1] [6]),
        .O(qi_reg_i_2__3_n_33));
  IBUF qi_reg_i_2__4
       (.I(\XxDI[1] [5]),
        .O(qi_reg_i_2__4_n_33));
  IBUF qi_reg_i_2__5
       (.I(\Zmul1xDI[0] [3]),
        .O(qi_reg_i_2__5_n_33));
  IBUF qi_reg_i_2__6
       (.I(\Zmul1xDI[0] [2]),
        .O(qi_reg_i_2__6_n_33));
  IBUF qi_reg_i_2__7
       (.I(\Zmul2xDI[0] [3]),
        .O(qi_reg_i_2__7_n_33));
  IBUF qi_reg_i_2__8
       (.I(\Zmul2xDI[0] [2]),
        .O(qi_reg_i_2__8_n_33));
  IBUF qi_reg_i_2__9
       (.I(\Zmul2xDI[0] [1]),
        .O(qi_reg_i_2__9_n_33));
  IBUF qi_reg_i_3
       (.I(\XxDI[0] [4]),
        .O(qi_reg_i_3_n_33));
  IBUF qi_reg_i_3__0
       (.I(\XxDI[0] [3]),
        .O(qi_reg_i_3__0_n_33));
  IBUF qi_reg_i_3__1
       (.I(\XxDI[1] [4]),
        .O(qi_reg_i_3__1_n_33));
  IBUF qi_reg_i_3__2
       (.I(\XxDI[1] [3]),
        .O(qi_reg_i_3__2_n_33));
  IBUF qi_reg_i_3__3
       (.I(\Zmul1xDI[0] [1]),
        .O(qi_reg_i_3__3_n_33));
  IBUF qi_reg_i_3__4
       (.I(\Zmul1xDI[0] [0]),
        .O(qi_reg_i_3__4_n_33));
  IBUF qi_reg_i_4
       (.I(\XxDI[0] [2]),
        .O(qi_reg_i_4_n_33));
  IBUF qi_reg_i_4__0
       (.I(\XxDI[1] [2]),
        .O(qi_reg_i_4__0_n_33));
  IBUF qi_reg_i_5
       (.I(\XxDI[0] [1]),
        .O(qi_reg_i_5_n_33));
  IBUF qi_reg_i_5__0
       (.I(\XxDI[1] [1]),
        .O(qi_reg_i_5__0_n_33));
endmodule
