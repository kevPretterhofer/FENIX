// Inverse in GF(2^8) using first-order domain-oriented masking and normal basis [y^16, y].
// See Fig. 6 in [1] and Formulas 3, 12, 18 and 19 in [2].
module aes_dom_inverse_gf2p8 (
  input  logic        clk_i,
  input  logic        rst_ni,
  input  logic  [3:0] we_i,
  input  logic  [7:0] a_y,     // input data masked by b_y
  input  logic  [7:0] b_y,     // input mask
  input  logic  [27:0]     prd_i,   // pseudo-random data, e.g. for intermediate masks
  output logic  [7:0] a_y_inv, // output data masked by b_y_inv, ( not labeled )
  output logic  [7:0] b_y_inv // output mask
  //output prd_out_t    prd_o    // pseudo-random data, e.g. for use in another S-Box instance
);


  /////////////
  // Stage 1 //
  /////////////
  // Formula 12 in [2].

  logic [3:0] a_y1, a_y0, b_y1, b_y0, a_y1_y0, b_y1_y0;
  assign a_y1 = a_y[7:4];
  assign a_y0 = a_y[3:0];
  assign b_y1 = b_y[7:4];
  assign b_y0 = b_y[3:0];

  logic [3:0] a_y_ss_d, b_y_ss_d;
  logic [3:0] a_y_ss_q, b_y_ss_q;
  

  //assign a_y_ss_d = aes_square_scale_gf2p4_gf2p2(a_y1 ^ a_y0);
  logic [3:0] gamma_a_y_ss_d;
  logic [1:0] a_a_y_ss_d, b_a_y_ss_d;
  assign gamma_a_y_ss_d = a_y1 ^ a_y0;
  assign a_a_y_ss_d          = gamma_a_y_ss_d[3:2] ^ gamma_a_y_ss_d[1:0];
  //assign b_a_y_ss_d          = aes_square_gf2p2(gamma_a_y_ss_d[1:0]);
  assign b_a_y_ss_d[1] = gamma_a_y_ss_d[0];
  assign b_a_y_ss_d[0] = gamma_a_y_ss_d[1];
  //assign a_y_ss_d[3:2] = aes_square_gf2p2(a_a_y_ss_d);
  assign a_y_ss_d[3] = a_a_y_ss_d[0];
  assign a_y_ss_d[2] = a_a_y_ss_d[1];
  //assign a_y_ss_d[1:0] = aes_scale_omega_gf2p2(b_a_y_ss_d);
  assign a_y_ss_d[1] = b_a_y_ss_d[1] ^ b_a_y_ss_d[0];
  assign a_y_ss_d[0] = b_a_y_ss_d[1];
  //-----

  //assign b_y_ss_d = aes_square_scale_gf2p4_gf2p2(b_y1 ^ b_y0);
  logic [3:0] gamma_b_y_ss_d;
  logic [1:0] a_b_y_ss_d, b_b_y_ss_d;
  assign gamma_b_y_ss_d = b_y1 ^ b_y0;
  assign a_b_y_ss_d          = gamma_b_y_ss_d[3:2] ^ gamma_b_y_ss_d[1:0];
  //assign b_b_y_ss_d          = aes_square_gf2p2(gamma_b_y_ss_d[1:0]);
  assign b_b_y_ss_d[1] = gamma_b_y_ss_d[0];
  assign b_b_y_ss_d[0] = gamma_b_y_ss_d[1];
  //assign b_y_ss_d[3:2] = aes_square_gf2p2(a_b_y_ss_d);
  assign b_y_ss_d[3] = a_b_y_ss_d[0];
  assign b_y_ss_d[2] = a_b_y_ss_d[1];
  //assign b_y_ss_d[1:0] = aes_scale_omega_gf2p2(b_b_y_ss_d);
  assign b_y_ss_d[1] = b_b_y_ss_d[1] ^ b_b_y_ss_d[0];
  assign b_y_ss_d[0] = b_b_y_ss_d[1];
  //-----

  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      a_y_ss_q <= 0;
      b_y_ss_q <= 0;
    end else if (we_i[0]) begin
      a_y_ss_q <= a_y_ss_d;
      b_y_ss_q <= b_y_ss_d;
    end
  end

  logic [3:0] a_y1_q, a_y0_q, b_y1_q, b_y0_q;
  
    // We instantiate the input pipeline registers for the DOM-dep multiplier outside of the
    // multiplier to enable sharing of pipeline registers where applicable.

  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      a_y1_q <= 0;
      a_y0_q <= 0;
      b_y1_q <= 0;
      b_y0_q <= 0;
    end else if (we_i[0]) begin
      a_y1_q <= a_y1;
      a_y0_q <= a_y0;
      b_y1_q <= b_y1;
      b_y0_q <= b_y0;
    end
  end

  //logic [7:0] b_y10_prd1;
  aes_dom_dep_mul_gf2pn #(
    .NPower      ( 4           ),
    .PreDomIndep ( 1'b0        )
  ) dep_stage1 (
    .clk_i  ( clk_i            ),
    .rst_ni ( rst_ni           ),
    .we_i   ( we_i[0]          ),
    .a_x    ( a_y1             ), // Share a of x
    .a_y    ( a_y0             ), // Share a of y
    .b_x    ( b_y1             ), // Share b of x
    .b_y    ( b_y0             ), // Share b of y
    .a_x_q  ( a_y1_q           ), // Share a of x, pipelined (for Pipeline=1 or PreDomIndep=1)
    .a_y_q  ( a_y0_q           ), // Share a of y, pipelined (for Pipeline=1)
    .b_x_q  ( b_y1_q           ), // Share b of x, pipelined (for Pipeline=1 or PreDomIndep=1)
    .b_y_q  ( b_y0_q           ), // Share b of y, pipelined (for Pipeline=1)
    .z_0    ( prd_i[3:0] ), // Randomness for blinding
    .z_1    ( prd_i[7:4] ), // Randomness for resharing
    .a_q    ( a_y1_y0          ), // Share a of q
    .b_q    ( b_y1_y0          ) // Share b of q
  );

  logic [3:0] a_gamma, b_gamma;
  assign a_gamma = a_y_ss_q ^ a_y1_y0;
  assign b_gamma = b_y_ss_q ^ b_y1_y0;



  // Use intermediate results for generating PRD for Stage 2 of another S-Box instance.
  // Use one share only. Directly use output of flops updating with we_i[0].
  // b_y10_prd1 is based on b_y and XORed with prd_1. We just use the lower part involving a
  // non-linear element.


  ////////////////////
  // Stages 2 and 3 //
  ////////////////////

  logic [3:0] a_theta, b_theta;

  // a_gamma is masked by b_gamma, a_gamma_inv is masked by b_gamma_inv.
  aes_dom_inverse_gf2p4 #(
  ) u_aes_dom_inverse_gf2p4 (
    .clk_i       ( clk_i       ),
    .rst_ni      ( rst_ni      ),
    .we_i        ( we_i[2:1]   ),
    .a_gamma     ( a_gamma ),
    .b_gamma     ( b_gamma ),
    .prd_2_i     ( prd_i[11:8] ),
    .prd_3_i     ( prd_i[19:12] ),
    .a_gamma_inv ( a_theta     ),
    .b_gamma_inv ( b_theta     )
  );

  /////////////
  // Stage 4 //
  /////////////
  // Formulas 18 and 19 in [2].

  logic [3:0] a_y1_qqq, a_y0_qqq, b_y1_qqq, b_y0_qqq;
  
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      a_y1_qqq <= 0;
      a_y0_qqq <= 0;
      b_y1_qqq <= 0;
      b_y0_qqq <= 0;
    end else if (we_i[2]) begin
      a_y1_qqq <= a_y1;
      a_y0_qqq <= a_y0;
      b_y1_qqq <= b_y1;
      b_y0_qqq <= b_y0;
    end
  end

  aes_dom_indep_mul_gf2pn #(
    .NPower   ( 4           )
  ) indep_stage4A (
    .clk_i  ( clk_i            ),
    .rst_ni ( rst_ni           ),
    .we_i   ( we_i[3]          ),
    .a_x    ( a_y1_qqq         ), // Share a of x
    .a_y    ( a_theta          ), // Share a of y
    .b_x    ( b_y1_qqq         ), // Share b of x
    .b_y    ( b_theta          ), // Share b of y
    .z_0    ( prd_i[27:24] ), // Randomness for resharing
    .a_q    ( a_y_inv[3:0]     ), // Share a of q
    .b_q    ( b_y_inv[3:0]     )  // Share b of q
  );

  aes_dom_indep_mul_gf2pn #(
    .NPower   ( 4           )
  ) indep_stage4B (
    .clk_i  ( clk_i            ),
    .rst_ni ( rst_ni           ),
    .we_i   ( we_i[3]          ),
    .a_x    ( a_theta          ), // Share a of x
    .a_y    ( a_y0_qqq         ), // Share a of y
    .b_x    ( b_theta          ), // Share b of x
    .b_y    ( b_y0_qqq         ), // Share b of y
    .z_0    ( prd_i[23:20] ), // Randomness for resharing
    .a_q    ( a_y_inv[7:4]     ), // Share a of q
    .b_q    ( b_y_inv[7:4]     )  // Share b of q
  );

endmodule