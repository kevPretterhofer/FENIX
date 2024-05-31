//`include "aes_pkg_verilog.sv" 
module aes_sbox_dom
#() (
  input  logic              clk_i,
  input  logic              rst_ni,
  input  logic              en_i,
  //output logic              out_req_o,
  input  logic              out_ack_i,
  input  [AES_OP_WIDTH-1:0]  op_i,
  input  logic        [7:0] data_i, // masked, the actual input data is data_i ^ mask_i
  input  logic        [7:0] mask0_i, // masked, the actual input data is data_i ^ mask_i
  input  logic       [27:0] prd_i,  // pseudo-random data for remasking, in total we need 28 bits
                                    // of PRD per evaluation, but at most 8 bits per cycle
  output logic        [7:0] data_o, // masked, the actual output data is data_o ^ mask_o
  output logic        [7:0] mask0_o // output mask

);


  logic [7:0] in_data_basis_x, out_data_basis_x;
  logic [7:0] in_mask0_basis_x, out_mask0_basis_x;
  //logic [3:0] we;
  //prd_out_t   out_prd;


  // Convert data to normal basis X.
  always_comb begin
  in_data_basis_x = '0;
  for (int i = 0; i < 8; i++) begin
    for (int j = 0; j < 8; j++) begin
      in_data_basis_x[i] = in_data_basis_x[i] ^ (A2X[((7 - j) * 8) + i] & data_i[7 - j]);
    end
  end
  end
  
  // Convert mask to normal basis X.
  // The addition of constant 8'h63 prior to the affine transformation is skipped.
    always_comb begin
  in_mask0_basis_x = '0;
  for (int i = 0; i < 8; i++) begin
    for (int j = 0; j < 8; j++) begin
      in_mask0_basis_x[i] = in_mask0_basis_x[i] ^ (A2X[((7 - j) * 8) + i] & mask0_i[7 - j]);
    end
  end
  end






        aes_dom_inverse_gf2p8 #(
    ) u_aes_dom_inverse_gf2p8 (
      .clk_i   ( clk_i            ),
      .rst_ni  ( rst_ni           ),
      .we_i    ( 4'b1111               ),
      .a_y     ( in_data_basis_x  ), // input
      .b_y     ( in_mask0_basis_x  ), // input    
      .prd_i   ( prd_i           ), // input
      .a_y_inv ( out_data_basis_x ), // output -> not labeled
      .b_y_inv ( out_mask0_basis_x ) // output
    );


  // Convert data to basis S or A.
  always_comb begin
  data_o = '0;
  for (int i = 0; i < 8; i++) begin
    for (int j = 0; j < 8; j++) begin
      data_o[i] = data_o[i] ^ (X2S[((7 - j) * 8) + i] & out_data_basis_x[7 - j]);
    end
  end
  data_o = data_o ^ 8'h63;
  end

  // Convert mask to basis S or A.
  // The addition of constant 8'h63 following the affine transformation is skipped.
  always_comb begin
  mask0_o = '0;
  for (int i = 0; i < 8; i++) begin
    for (int j = 0; j < 8; j++) begin
      mask0_o[i] = mask0_o[i] ^ (X2S[((7 - j) * 8) + i] & out_mask0_basis_x[7 - j]);
    end
  end
  end



  // Counter register
 /*
  logic [2:0] count_d, count_q;
  assign count_d = (out_req_o && out_ack_i) ? 3'b0             :
                   out_req_o                ? count_q        :
                   en_i                     ? count_q + 3'd1 : count_q;
  always_ff @(posedge clk_i or negedge rst_ni) begin : reg_count
    if (!rst_ni) begin
      count_q <= 3'b000;
    end else begin
      count_q <= count_d;
    end
  end
  assign out_req_o = en_i & count_q == 3'd4;


  assign we[0] = en_i & count_q == 3'd0;
  assign we[1] = en_i & count_q == 3'd1;
  assign we[2] = en_i & count_q == 3'd2;
  assign we[3] = en_i & count_q == 3'd3;
*/



endmodule
