// DOM-indep GF(2^N) multiplier, first-order masked.
// Computes (a_q ^ b_q) = (a_x ^ b_x) * (a_y ^ b_y), i.e. q = x * y using first-order
// domain-oriented masking. The sharings of x and y are required to be uniformly random and
// independent from each other.
// See Fig. 2 in [1].
module aes_dom_indep_mul_gf2pn #(
  parameter int unsigned NPower   = 2
) (
  input  logic              clk_i,
  input  logic              rst_ni,
  input  logic              we_i,
  input  logic [NPower-1:0] a_x,    // Share a of x
  input  logic [NPower-1:0] a_y,    // Share a of y
  input  logic [NPower-1:0] b_x,    // Share b of x
  input  logic [NPower-1:0] b_y,    // Share b of y
  input  logic [NPower-1:0] z_0,    // Randomness for resharing
  output logic [NPower-1:0] a_q,    // Share a of q
  output logic [NPower-1:0] b_q     // Share b of q

);

   
  /////////////////
  // Calculation //
  /////////////////
  // Inner-domain terms
  logic [NPower-1:0] mul_ax_ay_d, mul_bx_by_d;
  if (NPower == 4) begin : gen_inner_mul_gf2p4
    assign mul_ax_ay_d = aes_mul_gf2p4(a_x, a_y);
    assign mul_bx_by_d = aes_mul_gf2p4(b_x, b_y);

  end else begin : gen_inner_mul_gf2p2
    assign mul_ax_ay_d = aes_mul_gf2p2(a_x, a_y);
    assign mul_bx_by_d = aes_mul_gf2p2(b_x, b_y);
  end

  // Cross-domain terms
  logic [NPower-1:0] mul_ax_by, mul_ay_bx;
  if (NPower == 4) begin : gen_cross_mul_gf2p4
    assign mul_ax_by = aes_mul_gf2p4(a_x, b_y);
    assign mul_ay_bx = aes_mul_gf2p4(a_y, b_x);

  end else begin : gen_cross_mul_gf2p2
    assign mul_ax_by = aes_mul_gf2p2(a_x, b_y);
    assign mul_ay_bx = aes_mul_gf2p2(a_y, b_x);
  end

  ///////////////
  // Resharing //
  ///////////////
  // Resharing of cross-domain terms
  logic [NPower-1:0] aq_z0_d, bq_z0_d;
  logic [NPower-1:0] aq_z0_q, bq_z0_q;
  assign aq_z0_d = z_0 ^ mul_ax_by;
  assign bq_z0_d = z_0 ^ mul_ay_bx;

  // Registers
  /*prim_xilinx_flop_en #(
    .Width      ( 2*NPower ),
    .ResetValue ( '0       )
  ) u_prim_flop_abq_z0 (
    .clk_i  ( clk_i              ),
    .rst_ni ( rst_ni             ),
    .en_i   ( we_i               ),
    .d_i    ( {aq_z0_d, bq_z0_d} ),
    .q_o    ( {aq_z0_q, bq_z0_q} )
  );*/
  always_ff @(posedge clk_i or negedge rst_ni) begin
    if (!rst_ni) begin
      aq_z0_q <= 0;
      bq_z0_q <= 0;
    end else if (we_i) begin
      aq_z0_q <= aq_z0_d;
      bq_z0_q <= bq_z0_d;
    end
  end

  /////////////////////////
  // Optional Pipelining //
  /////////////////////////
  logic [NPower-1:0] mul_ax_ay, mul_bx_by;

    // Add pipeline registers on inner-domain terms prior to integration. This allows accepting new
    // input data every clock cycle and prevents SCA leakage occurring due to the integration of
    // reshared cross-domain terms with inner-domain terms derived from different input data.

    logic [NPower-1:0] mul_ax_ay_q, mul_bx_by_q;
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

    assign mul_ax_ay = mul_ax_ay_q;
    assign mul_bx_by = mul_bx_by_q;

  //else begin : gen_no_pipeline
    // Do not add the optional pipeline registers on the inner-domain terms. This allows to save
    // some area in case the multiplier does not need to accept new data in every cycle. However,
    // this can cause SCA leakage as during the clock cycle in which new data arrives, the new
    // inner-domain terms are integrated with the previous, reshared cross-domain terms.
  //end

  /////////////////
  // Integration //
  /////////////////
  assign a_q = mul_ax_ay ^ aq_z0_q;
  assign b_q = mul_bx_by ^ bq_z0_q;

  // Only GF(2^4) and GF(2^2) is supported.
  //`ASSERT_INIT(AesDomIndepMulPower, NPower == 4 || NPower == 2)

endmodule