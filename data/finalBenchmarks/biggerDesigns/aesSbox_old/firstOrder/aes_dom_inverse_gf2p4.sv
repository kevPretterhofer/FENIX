

// Inverse in GF(2^4) using first-order domain-oriented masking and normal basis [z^4, z].
// See Fig. 6 in [2] (grey block, Stages 2 and 3) and Formulas 6, 13, 14, 15, 16, 17 in [2].
module aes_dom_inverse_gf2p4 (
  input  logic        clk_i,
  input  logic        rst_ni,
  input  logic  [1:0] we_i,
  input  logic  [3:0] a_gamma,
  input  logic  [3:0] b_gamma,
  input  logic  [3:0] prd_2_i,
  input  logic  [7:0] prd_3_i,
  output logic  [3:0] a_gamma_inv,
  output logic  [3:0] b_gamma_inv
  //output logic  [7:0] prd_2_o,
  //output logic  [7:0] prd_3_o
);


  /////////////
  // Stage 2 //
  /////////////
  // Formula 13 in [2].

  logic [1:0] a_gamma1, a_gamma0, b_gamma1, b_gamma0, a_gamma1_gamma0, b_gamma1_gamma0;
  assign a_gamma1 = a_gamma[3:2];
  assign a_gamma0 = a_gamma[1:0];
  assign b_gamma1 = b_gamma[3:2];
  assign b_gamma0 = b_gamma[1:0];

  logic [1:0] a_gamma_ss_d, b_gamma_ss_d;
  logic [1:0] a_gamma_ss_q, b_gamma_ss_q;
  assign a_gamma_ss_d = aes_scale_omega2_gf2p2(aes_square_gf2p2(a_gamma1 ^ a_gamma0));
  assign b_gamma_ss_d = aes_scale_omega2_gf2p2(aes_square_gf2p2(b_gamma1 ^ b_gamma0));
  /*prim_xilinx_flop_en #(
    .Width      ( 4  ),
    .ResetValue ( '0 )
  ) u_prim_flop_ab_gamma_ss (
    .clk_i  ( clk_i                        ),
    .rst_ni ( rst_ni                       ),
    .en_i   ( we_i[0]                      ),
    .d_i    ( {a_gamma_ss_d, b_gamma_ss_d} ),
    .q_o    ( {a_gamma_ss_q, b_gamma_ss_q} )
  );*/
    always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      a_gamma_ss_q <= 0;
      b_gamma_ss_q <= 0;
    end else if (we_i[0]) begin
      a_gamma_ss_q <= a_gamma_ss_d;
      b_gamma_ss_q <= b_gamma_ss_d;
    end
  end

  logic [1:0] a_gamma1_q, a_gamma0_q, b_gamma1_q, b_gamma0_q;
  /*prim_xilinx_flop_en #(
    .Width      ( 8  ),
    .ResetValue ( '0 )
  ) u_prim_flop_ab_gamma10 (
    .clk_i  ( clk_i                                            ),
    .rst_ni ( rst_ni                                           ),
    .en_i   ( we_i[0]                                          ),
    .d_i    ( {a_gamma1,   a_gamma0,   b_gamma1,   b_gamma0}   ),
    .q_o    ( {a_gamma1_q, a_gamma0_q, b_gamma1_q, b_gamma0_q} )
  );*/
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      a_gamma1_q <= 0;
      a_gamma0_q <= 0;
      b_gamma1_q <= 0;
      b_gamma0_q <= 0;
    end else if (we_i[0]) begin
      a_gamma1_q <= a_gamma1;
      a_gamma0_q <= a_gamma0;
      b_gamma1_q <= b_gamma1;
      b_gamma0_q <= b_gamma0;
    end
  end

  //logic [3:0] b_gamma10_prd2;
  aes_dom_dep_mul_gf2pn #(
    .NPower      ( 2           ),
    .PreDomIndep ( 1'b0        )
  ) dep_stage2 (
    .clk_i  ( clk_i           ),
    .rst_ni ( rst_ni          ),
    .we_i   ( we_i[0]         ),
    .a_x    ( a_gamma1        ), // Share a of x
    .a_y    ( a_gamma0        ), // Share a of y
    .b_x    ( b_gamma1        ), // Share b of x
    .b_y    ( b_gamma0        ), // Share b of y
    .a_x_q  ( a_gamma1_q      ), // Share a of x, pipelined (for Pipeline=1 or PreDomIndep=1)
    .a_y_q  ( a_gamma0_q      ), // Share a of y, pipelined (for Pipeline=1)
    .b_x_q  ( b_gamma1_q      ), // Share b of x, pipelined (for Pipeline=1 or PreDomIndep=1)
    .b_y_q  ( b_gamma0_q      ), // Share b of y, pipelined (for Pipeline=1)
    .z_0    ( prd_2_i[1:0]    ), // Randomness for blinding
    .z_1    ( prd_2_i[3:2]    ), // Randomness for resharing
    .a_q    ( a_gamma1_gamma0 ), // Share a of q
    .b_q    ( b_gamma1_gamma0 ) // Share b of q
    //.prd_o  ( b_gamma10_prd2  )  // Randomness for use in another S-Box instance
  );

  // Use intermediate results for generating PRD for Stage 3 of another S-Box instance.
  // Use one share only. Directly use output of flops updating with we_i[0].
  // b_gamma10_prd2 is based on b_gamma1_q, b_gamma0_q but XORed with prd_2_i, thus uniformly
  // distributed and independent of b_gamma1/0_q (See Lemma 1 in [2]).
  //
  // In Stage 3 of another S-Box instance, the MSBs and LSBs of the term below are used:
  // 1. as randomness in the DOM-dep multipliers u_aes_dom_mul_omega_gamma1/0, and
  // 2. to generate randomness for the DOM-indep multipliers u_aes_dom_mul_theta_y1/0 in Stage 4 of
  //    yet another S-Box instance, respectively.
  // Without interleaving b_gamma1/0_q as well as the upper and lower halves of b_gamma10_prd2 here,
  // a glitch on the write-enable signal on the input pipeline register of these DOM-indep
  // multipliers may result in undesirable SCA leakage.
  //assign prd_2_o = {b_gamma1_q, b_gamma10_prd2[3:2], b_gamma0_q, b_gamma10_prd2[1:0]};

  /////////////
  // Stage 3 //
  /////////////

  // Formulas 14 and 15 in [2].
  logic [1:0] a_omega, b_omega;
  assign a_omega = aes_square_gf2p2(a_gamma1_gamma0 ^ a_gamma_ss_q);
  assign b_omega = aes_square_gf2p2(b_gamma1_gamma0 ^ b_gamma_ss_q);



  // Pipeline registers
  logic [1:0] a_gamma1_qq, a_gamma0_qq, b_gamma1_qq, b_gamma0_qq, a_omega_q, b_omega_q;

    // We instantiate the input pipeline registers for the DOM-dep multiplier outside of the
    // multiplier to enable sharing of pipeline registers where applicable.

    /*prim_xilinx_flop_en #(
      .Width      ( 8  ),
      .ResetValue ( '0 )
    ) u_prim_flop_ab_gamma10_q (
      .clk_i  ( clk_i                                                ),
      .rst_ni ( rst_ni                                               ),
      .en_i   ( we_i[1]                                              ),
      .d_i    ( {a_gamma1_q,  a_gamma0_q,  b_gamma1_q,  b_gamma0_q}  ),
      .q_o    ( {a_gamma1_qq, a_gamma0_qq, b_gamma1_qq, b_gamma0_qq} )
    );*/
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      a_gamma1_qq <= 2'b0;
      a_gamma0_qq <= 2'b0;
      b_gamma1_qq <= 2'b0;
      b_gamma0_qq <= 2'b0;
    end else if (we_i[1]) begin
      a_gamma1_qq <= a_gamma1_q;
      a_gamma0_qq <= a_gamma0_q;
      b_gamma1_qq <= b_gamma1_q;
      b_gamma0_qq <= b_gamma0_q;
    end
  end

    // These inputs are used by both DOM-dep multipliers below.
    /*prim_xilinx_flop_en #(
      .Width      ( 4  ),
      .ResetValue ( '0 )
    ) u_prim_flop_ab_omega (
      .clk_i  ( clk_i                          ),
      .rst_ni ( rst_ni                         ),
      .en_i   ( we_i[1]                        ),
      .d_i    ( {a_omega,   b_omega}   ),
      .q_o    ( {a_omega_q, b_omega_q} )
    );*/
    always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      a_omega_q <= 0;
      b_omega_q <= 0;
    end else if (we_i[1]) begin
      a_omega_q <= a_omega;
      b_omega_q <= b_omega;
    end
  end

  // Formulas 16 and 17 in [2].
  //logic [3:0] b_gamma1_omega_prd3;
  aes_dom_dep_mul_gf2pn #(
    .NPower      ( 2           ),
    .PreDomIndep ( 1'b0        )
  ) dep_stage3A (
    .clk_i  ( clk_i               ),
    .rst_ni ( rst_ni              ),
    .we_i   ( we_i[1]             ),
    .a_x    ( a_gamma1_q          ), // Share a of x
    .a_y    ( a_omega         ), // Share a of y
    .b_x    ( b_gamma1_q          ), // Share b of x
    .b_y    ( b_omega         ), // Share b of y
    .a_x_q  ( a_gamma1_qq         ), // Share a of x, pipelined (for Pipeline=1 or PreDomIndep=1)
    .a_y_q  ( a_omega_q       ), // Share a of y, pipelined (for Pipeline=1)
    .b_x_q  ( b_gamma1_qq         ), // Share b of x, pipelined (for Pipeline=1 or PreDomIndep=1)
    .b_y_q  ( b_omega_q       ), // Share b of y, pipelined (for Pipeline=1)
    .z_0    ( prd_3_i[5:4]        ), // Randomness for blinding
    .z_1    ( prd_3_i[7:6]        ), // Randomness for resharing
    .a_q    ( a_gamma_inv[1:0]    ), // Share a of q
    .b_q    ( b_gamma_inv[1:0]    ) // Share b of q
    //.prd_o  ( b_gamma1_omega_prd3 )  // Randomness for use in another S-Box instance
  );

  //logic [3:0] b_gamma0_omega_prd3;
  aes_dom_dep_mul_gf2pn #(
    .NPower      ( 2           ),
    .PreDomIndep ( 1'b0        )
  ) dep_stage3B (
    .clk_i  ( clk_i               ),
    .rst_ni ( rst_ni              ),
    .we_i   ( we_i[1]             ),
    .a_x    ( a_omega         ), // Share a of x
    .a_y    ( a_gamma0_q          ), // Share a of y
    .b_x    ( b_omega         ), // Share b of x
    .b_y    ( b_gamma0_q          ), // Share b of y
    .a_x_q  ( a_omega_q       ), // Share a of x, pipelined (for Pipeline=1 or PreDomIndep=1)
    .a_y_q  ( a_gamma0_qq         ), // Share a of y, pipelined (for Pipeline=1)
    .b_x_q  ( b_omega_q       ), // Share b of x, pipelined (for Pipeline=1 or PreDomIndep=1)
    .b_y_q  ( b_gamma0_qq         ), // Share b of y, pipelined (for Pipeline=1)
    .z_0    ( prd_3_i[1:0]        ), // Randomness for blinding
    .z_1    ( prd_3_i[3:2]        ), // Randomness for resharing
    .a_q    ( a_gamma_inv[3:2]    ), // Share a of q
    .b_q    ( b_gamma_inv[3:2]    ) // Share b of q
    //.prd_o  ( b_gamma0_omega_prd3 )  // Randomness for use in another S-Box instance
  );

  // Use intermediate results for generating PRD for Stage 4 of another S-Box instance.
  // Use one share only. Directly use output of flops updating with we_i[1].
  // b_gamma1/0_omega_prd3 are both based on b_omega but XORed with differend parts of prd_3_i,
  // thus uniformly distributed and independent of b_omega (see Lemma 1 in [2]).
  //assign prd_3_o = {b_gamma1_omega_prd3, b_gamma0_omega_prd3};

endmodule