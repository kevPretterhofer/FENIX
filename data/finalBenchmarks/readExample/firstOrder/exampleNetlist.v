// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Mon Dec 26 12:13:32 2022
// Host        : uni-machine running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog
//               /home/reppiz/Uni/Master/Repo/2022_master_pretterhofer/code/coco-shell/data/finalBenchmarks/readExample/exampleNetlist.v
// Design      : Test
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7s75fgga676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module Test
   (clk_i,
    rst_i,
    read_address,
    X_i,
    Y_i,
    read_data);
  input clk_i;
  input rst_i;
  input read_address;
  input X_i;
  input Y_i;
  output read_data;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]OH_read_address;
  wire \OH_read_address_reg_n_0_[0] ;
  wire \OH_read_address_reg_n_0_[1] ;
  wire X;
  wire X_i;
  wire X_i_IBUF;
  wire Y;
  wire Y_i;
  wire Y_i_IBUF;
  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire read_address;
  wire read_address_IBUF;
  wire read_data;
  wire read_data_OBUF;
  wire rst_i;
  wire rst_i_IBUF;

  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \OH_read_address[0]_i_1 
       (.I0(rst_i_IBUF),
        .I1(read_address_IBUF),
        .O(OH_read_address[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \OH_read_address[1]_i_1 
       (.I0(read_address_IBUF),
        .I1(rst_i_IBUF),
        .O(OH_read_address[1]));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \OH_read_address_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(OH_read_address[0]),
        .Q(\OH_read_address_reg_n_0_[0] ),
        .R(\<const0> ));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    \OH_read_address_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(\<const1> ),
        .D(OH_read_address[1]),
        .Q(\OH_read_address_reg_n_0_[1] ),
        .R(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  IBUF X_i_IBUF_inst
       (.I(X_i),
        .O(X_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    X_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(rst_i_IBUF),
        .D(X_i_IBUF),
        .Q(X),
        .R(\<const0> ));
  IBUF Y_i_IBUF_inst
       (.I(Y_i),
        .O(Y_i_IBUF));
  (* EXTRACT_RESET *) 
  FDRE #(
    .INIT(1'b0)) 
    Y_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(rst_i_IBUF),
        .D(Y_i_IBUF),
        .Q(Y),
        .R(\<const0> ));
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  IBUF read_address_IBUF_inst
       (.I(read_address),
        .O(read_address_IBUF));
  OBUF read_data_OBUF_inst
       (.I(read_data_OBUF),
        .O(read_data));
  LUT4 #(
    .INIT(16'hF888)) 
    read_data_OBUF_inst_i_1
       (.I0(\OH_read_address_reg_n_0_[1] ),
        .I1(X),
        .I2(\OH_read_address_reg_n_0_[0] ),
        .I3(Y),
        .O(read_data_OBUF));
  IBUF rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
endmodule
