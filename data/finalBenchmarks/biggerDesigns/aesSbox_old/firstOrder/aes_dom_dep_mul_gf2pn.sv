
// DOM-dep GF(2^N) multiplier, first-order masked.
// Computes (a_q ^ b_q) = (a_x ^ b_x) * (a_y ^ b_y), i.e. q = x * y using first-order
// domain-oriented masking. The sharings of x and y are NOT required to be independent from each
// other. This is the optimized version consuming 2 instead of 3 times N bits of randomness for
// blinding and resharing.
// See Formula 12 in [1].
module aes_dom_dep_mul_gf2pn #(
  parameter int unsigned NPower      = 4,
  parameter bit          PreDomIndep = 1'b0 // 1'b0: Not followed by an un-pipelined DOM-indep
                                            //       multiplier, this enables additional area
                                            //       optimizations
                                            // 1'b1: Directly followed by an un-pipelined
                                            //       DOM-indep multiplier, this is the version
                                            //       discussed in [1].
) (
  input  logic                clk_i,
  input  logic                rst_ni,
  input  logic                we_i,
  input  logic   [NPower-1:0] a_x,    // Share a of x
  input  logic   [NPower-1:0] a_y,    // Share a of y
  input  logic   [NPower-1:0] b_x,    // Share b of x
  input  logic   [NPower-1:0] b_y,    // Share b of y
  input  logic   [NPower-1:0] a_x_q,  // Share a of x, pipelined (for Pipeline=1 or PreDomIndep=1)
  input  logic   [NPower-1:0] a_y_q,  // Share a of y, pipelined (for Pipeline=1)
  input  logic   [NPower-1:0] b_x_q,  // Share b of x, pipelined (for Pipeline=1 or PreDomIndep=1)
  input  logic   [NPower-1:0] b_y_q,  // Share b of y, pipelined (for Pipeline=1)
  input  logic   [NPower-1:0] z_0,    // Randomness for blinding
  input  logic   [NPower-1:0] z_1,    // Randomness for resharing
  output logic   [NPower-1:0] a_q,    // Share a of q
  output logic   [NPower-1:0] b_q    // Share b of q
  //output logic [2*NPower-1:0] prd_o   // Randomness for use in another S-Box instance
);


  //////////////
  // Blinding //
  //////////////
  // Blinding of y by z_0.
  logic [NPower-1:0] a_yz0_d, b_yz0_d;
  logic [NPower-1:0] a_yz0_q, b_yz0_q;
  assign a_yz0_d = a_y ^ z_0;
  assign b_yz0_d = b_y ^ z_0;

  // Registers
  /*prim_xilinx_flop_en #(
    .Width      ( 2*NPower ),
    .ResetValue ( '0       )
  ) u_prim_flop_ab_yz0 (
    .clk_i  ( clk_i              ),
    .rst_ni ( rst_ni             ),
    .en_i   ( we_i               ),
    .d_i    ( {a_yz0_d, b_yz0_d} ),
    .q_o    ( {a_yz0_q, b_yz0_q} )
  );*/
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      a_yz0_q <= 0;
      b_yz0_q <= 0;
    end else if (we_i) begin
      a_yz0_q <= a_yz0_d;
      b_yz0_q <= b_yz0_d;
    end
  end

  ////////////////
  // Correction //
  ////////////////
  // Basically, this a DOM-indep multiplier with:
  // - a_x = a_x, b_x = b_x, and
  // - a_y = z_0, b_y = 0 (constant),
  // which allows for further optimizations.

  // Calculation
  logic [NPower-1:0] mul_ax_z0, mul_bx_z0;
  if (NPower == 4) begin : gen_corr_mul_gf2p4
    assign mul_ax_z0 = aes_mul_gf2p4(a_x, z_0);
    assign mul_bx_z0 = aes_mul_gf2p4(b_x, z_0);

  end else begin : gen_corr_mul_gf2p2
    assign mul_ax_z0 = aes_mul_gf2p2(a_x, z_0);
    assign mul_bx_z0 = aes_mul_gf2p2(b_x, z_0);
  end

  // Resharing
  logic [NPower-1:0] axz0_z1_d, bxz0_z1_d;
  logic [NPower-1:0] axz0_z1_q, bxz0_z1_q;
  assign axz0_z1_d = mul_ax_z0 ^ z_1;
  assign bxz0_z1_d = mul_bx_z0 ^ z_1;

  // Registers
  /*prim_xilinx_flop_en #(
    .Width      ( 2*NPower ),
    .ResetValue ( '0       )
  ) u_prim_flop_abxz0_z1 (
    .clk_i  ( clk_i                  ),
    .rst_ni ( rst_ni                 ),
    .en_i   ( we_i                   ),
    .d_i    ( {axz0_z1_d, bxz0_z1_d} ),
    .q_o    ( {axz0_z1_q, bxz0_z1_q} )
  );*/
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      axz0_z1_q <= 0;
      bxz0_z1_q <= 0;
    end else if (we_i) begin
      axz0_z1_q <= axz0_z1_d;
      bxz0_z1_q <= bxz0_z1_d;
    end
  end

  // Use intermediate results for generating PRD for another S-Box instance.
  // Use one share only. Directly use output of flops updating with we_i.
  // These intermediate results are obtained by remasking b_y and mul_bx_z0 with z_0 and z_1,
  // respectively. Since z_0/1 are uniformly distributed and independent of b_y and mul_bx_z0,
  // the intermediate results are also uniformly distributed and independent of b_y and mul_bx_z0.
  // For details, see Lemma 1 in [2].
  //assign prd_o = {b_yz0_q, bxz0_z1_q};

  /////////////////////////
  // Optional Pipelining //
  /////////////////////////
  logic [NPower-1:0] a_x_calc, b_x_calc, a_y_calc, b_y_calc;

    // Use pipelined inputs x and y. This allows accepting new input data every clock cycle and
    // prevents SCA leakage occurring due to the multiplication of inputs x and y with d_b
    // belonging to different clock cycles.
    //
    // The PreDomIndep variant uses the pipelined inputs directly.

    assign a_x_calc = a_x_q;
    assign b_x_calc = b_x_q;
    assign a_y_calc = a_y_q;
    assign b_y_calc = b_y_q;



  ///////////////////////////////
  // Calculation & Integration //
  ///////////////////////////////
  // Compute b. Note that unlike for the unoptimized implementation, we don't combine the blinded
  // shares of y to obtain a single b value. Intstead, every domain d gets its own version of b:
  //
  //   d_b = d_y ^ _D_y_z0
  //
  // where _D_y_z0 corresponds to the sum of all domains of y except for domain d, each
  // individually blinded by z0 (needs to happen before the register bank). This optimization
  // is only suitable for first-order masking.
  // See Formula 12 in [1].

  if (PreDomIndep == 1'b1) begin : gen_pre_dom_indep
    // This DOM-dep multiplier is directly followed by an un-pipelined DOM-indep multiplier. To
    // prevent SCA leakage in the un-pipelined DOM-indep multiplier, the d_y and _D_y_z0 parts of
    // d_b need to be individually multiplied with input x and then the results need to be
    // integrated (summed up) on a per-domain basis.

    // d_y part: Inner-domain terms of x * y
    logic [NPower-1:0] mul_ax_ay_d, mul_bx_by_d;
    logic [NPower-1:0] mul_ax_ay_q, mul_bx_by_q;
    if (NPower == 4) begin : gen_inner_mul_gf2p4
      assign mul_ax_ay_d = aes_mul_gf2p4(a_x_calc, a_y_calc);
      assign mul_bx_by_d = aes_mul_gf2p4(b_x_calc, b_y_calc);

    end else begin : gen_inner_mul_gf2p2
      assign mul_ax_ay_d = aes_mul_gf2p2(a_x_calc, a_y_calc);
      assign mul_bx_by_d = aes_mul_gf2p2(b_x_calc, b_y_calc);
    end

    // Registers
    /*prim_xilinx_flop_en #(
      .Width      ( 2*NPower ),
      .ResetValue ( '0       )
    ) u_prim_flop_mul_abx_aby (
      .clk_i  ( clk_i                      ),
      .rst_ni ( rst_ni                     ),
      .en_i   ( we_i                       ),
      .d_i    ( {mul_ax_ay_d, mul_bx_by_d} ),
      .q_o    ( {mul_ax_ay_q, mul_bx_by_q} )
    );*/

  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      mul_ax_ay_q <= 0;
      mul_bx_by_q <= 0;
    end else if (we_i) begin
      mul_ax_ay_q <= mul_ax_ay_d;
      mul_bx_by_q <= mul_bx_by_d;
    end
  end

    // _D_y_z0 part: Cross-domain terms: d_x * _D_y_z0
    // Need to use registered version of input x.
    logic [NPower-1:0] mul_ax_byz0, mul_bx_ayz0;
    if (NPower == 4) begin : gen_cross_mul_gf2p4
      assign mul_ax_byz0 = aes_mul_gf2p4(a_x_q, b_yz0_q);
      assign mul_bx_ayz0 = aes_mul_gf2p4(b_x_q, a_yz0_q);

    end else begin : gen_cross_mul_gf2p2
      assign mul_ax_byz0 = aes_mul_gf2p2(a_x_q, b_yz0_q);
      assign mul_bx_ayz0 = aes_mul_gf2p2(b_x_q, a_yz0_q);
    end

    // Integration
    assign a_q = axz0_z1_q ^ mul_ax_ay_q ^ mul_ax_byz0;
    assign b_q = bxz0_z1_q ^ mul_bx_by_q ^ mul_bx_ayz0;

  end else begin : gen_not_pre_dom_indep
    // This DOM-dep multiplier is not directly followed by an un-pipelined DOM-indep multiplier. As
    // a result, the the d_y and _D_y_z0 parts of d_b can be summed up prior to the multiplication
    // with input x which allows saving 2 GF multipliers.

    // Sum up d_y and _D_y_z0.
    logic [NPower-1:0] a_b, b_b;
    assign a_b = a_y_calc ^ b_yz0_q;
    assign b_b = b_y_calc ^ a_yz0_q;

    // GF multiplications
    logic [NPower-1:0] a_mul_ax_b, b_mul_bx_b;
    if (NPower == 4) begin : gen_mul_gf2p4
      assign a_mul_ax_b = aes_mul_gf2p4(a_x_calc, a_b);
      assign b_mul_bx_b = aes_mul_gf2p4(b_x_calc, b_b);
    end else begin : gen_mul_gf2p2
      assign a_mul_ax_b = aes_mul_gf2p2(a_x_calc, a_b);
      assign b_mul_bx_b = aes_mul_gf2p2(b_x_calc, b_b);
    end

    // Integration
    assign a_q = axz0_z1_q ^ a_mul_ax_b;
    assign b_q = bxz0_z1_q ^ b_mul_bx_b;
  end

  // Only GF(2^4) and GF(2^2) is supported.
  //`ASSERT_INIT(AesDomDepMulPower, NPower == 4 || NPower == 2)

endmodule