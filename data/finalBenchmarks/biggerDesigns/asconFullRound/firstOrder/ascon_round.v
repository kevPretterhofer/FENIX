module DOM_and (clk_i, rst_i, A_X_i, B_X_i, A_Y_i, B_Y_i, Z_i, A_Q_o, B_Q_o);
    input clk_i; 
    input rst_i;
    input [31:0] A_X_i;
    input [31:0] B_X_i;
    input [31:0] A_Y_i; 
    input [31:0] B_Y_i; 
    input [31:0] Z_i;
    output [31:0] A_Q_o; 
    output [31:0] B_Q_o; 

    //Same domain
    wire [31:0] AX_AY;
    wire [31:0] BX_BY;

    assign AX_AY = A_X_i & A_Y_i;
    assign BX_BY = B_X_i & B_Y_i;

    //Cross domain + resharing
    wire [31:0] AX_BY;
    wire [31:0] BX_AY;

    assign AX_BY = A_X_i & B_Y_i;
    assign BX_AY = B_X_i & A_Y_i;

    reg [31:0] AX_BY_Z0;
    reg [31:0] BX_AY_Z0;    

    always @(posedge clk_i) begin
        if(rst_i) begin
            AX_BY_Z0 <= 32'b0;
            BX_AY_Z0 <= 32'b0;
        end else begin
            AX_BY_Z0 <= AX_BY ^ Z_i;
            BX_AY_Z0 <= BX_AY ^ Z_i;
        end
    end

    assign A_Q_o = AX_BY_Z0 ^ AX_AY;
    assign B_Q_o = BX_AY_Z0 ^ BX_BY;

endmodule


module sbox (clk_i, rst_i, 
    lane0_A_i, lane0_B_i, 
    lane1_A_i, lane1_B_i, 
    lane2_A_i, lane2_B_i, 
    lane3_A_i, lane3_B_i, 
    lane4_A_i, lane4_B_i, 
    rand_i,
    lane0_A_o, lane0_B_o, 
    lane1_A_o, lane1_B_o, 
    lane2_A_o, lane2_B_o, 
    lane3_A_o, lane3_B_o, 
    lane4_A_o, lane4_B_o);

    input clk_i;
    input rst_i;

    input [159:0] rand_i;

    input [31:0] lane0_A_i, lane0_B_i;
    input [31:0] lane1_A_i, lane1_B_i;
    input [31:0] lane2_A_i, lane2_B_i;
    input [31:0] lane3_A_i, lane3_B_i;
    input [31:0] lane4_A_i, lane4_B_i;
    
    output [31:0] lane0_A_o, lane0_B_o;
    output [31:0] lane1_A_o, lane1_B_o;
    output [31:0] lane2_A_o, lane2_B_o;
    output [31:0] lane3_A_o, lane3_B_o;
    output [31:0] lane4_A_o, lane4_B_o;


    //Affine layer
    wire [31:0] lane0_A_d, lane0_B_d;
    wire [31:0] lane1_A_d, lane1_B_d;
    wire [31:0] lane2_A_d, lane2_B_d;
    wire [31:0] lane3_A_d, lane3_B_d;
    wire [31:0] lane4_A_d, lane4_B_d;

    assign lane0_A_d = lane0_A_i ^ lane4_A_i;
    assign lane0_B_d = lane0_B_i ^ lane4_B_i;

    assign lane1_A_d = lane1_A_i;
    assign lane1_B_d = lane1_B_i;

    assign lane4_A_d = lane4_A_i ^ lane3_A_i;
    assign lane4_B_d = lane4_B_i ^ lane3_B_i;

    assign lane3_A_d = lane3_A_i;
    assign lane3_B_d = lane3_B_i;

    assign lane2_A_d = lane2_A_i ^ lane1_A_i;
    assign lane2_B_d = lane2_B_i ^ lane1_B_i;

    reg [31:0] lane0_A_q, lane0_B_q;
    reg [31:0] lane1_A_q, lane1_B_q;
    reg [31:0] lane2_A_q, lane2_B_q;
    reg [31:0] lane3_A_q, lane3_B_q;
    reg [31:0] lane4_A_q, lane4_B_q;
    reg [159:0] rand_q;

    always @(posedge clk_i) begin
        if(rst_i) begin
            lane0_A_q <= 0;
            lane0_B_q <= 0;
            lane1_A_q <= 0;
            lane1_B_q <= 0;
            lane2_A_q <= 0;
            lane2_B_q <= 0;
            lane3_A_q <= 0;
            lane3_B_q <= 0;
            lane4_A_q <= 0;
            lane4_B_q <= 0;
            rand_q <= 0;
        end else begin
            lane0_A_q <= lane0_A_d;
            lane0_B_q <= lane0_B_d;
            lane1_A_q <= lane1_A_d;
            lane1_B_q <= lane1_B_d;
            lane2_A_q <= lane2_A_d;
            lane2_B_q <= lane2_B_d;
            lane3_A_q <= lane3_A_d;
            lane3_B_q <= lane3_B_d;
            lane4_A_q <= lane4_A_d;
            lane4_B_q <= lane4_B_d;
            rand_q <= rand_i;
        end
    end

    //----


    wire [31:0] n_lane0_A, n_lane0_B;
    wire [31:0] n_lane1_A, n_lane1_B;
    wire [31:0] n_lane2_A, n_lane2_B;
    wire [31:0] n_lane3_A, n_lane3_B;
    wire [31:0] n_lane4_A, n_lane4_B;

    assign n_lane0_A = ~lane0_A_q;
    assign n_lane1_A = ~lane1_A_q;
    assign n_lane2_A = ~lane2_A_q;
    assign n_lane3_A = ~lane3_A_q;
    assign n_lane4_A = ~lane4_A_q;

    assign n_lane0_B = lane0_B_q;
    assign n_lane1_B = lane1_B_q;
    assign n_lane2_B = lane2_B_q;
    assign n_lane3_B = lane3_B_q;
    assign n_lane4_B = lane4_B_q;
     
    wire [31:0] lanes_0_1_A, lanes_0_1_B;
    wire [31:0] lanes_1_2_A, lanes_1_2_B;
    wire [31:0] lanes_2_3_A, lanes_2_3_B;
    wire [31:0] lanes_3_4_A, lanes_3_4_B;
    wire [31:0] lanes_4_0_A, lanes_4_0_B;

    DOM_and dom_and0 (clk_i, rst_i, 
      n_lane0_A, n_lane0_B,
      lane1_A_q, lane1_B_q,
      rand_q[31:0], 
      lanes_0_1_A, lanes_0_1_B);

    DOM_and dom_and1 (clk_i, rst_i, 
      n_lane1_A, n_lane1_B,
      lane2_A_q, lane2_B_q,
      rand_q[63:32],
      lanes_1_2_A, lanes_1_2_B);

    DOM_and dom_and2 (clk_i, rst_i, 
      n_lane2_A, n_lane2_B,
      lane3_A_q, lane3_B_q,
      rand_q[95:64],
      lanes_2_3_A, lanes_2_3_B);

    DOM_and dom_and3 (clk_i, rst_i, 
      n_lane3_A, n_lane3_B,
      lane4_A_q, lane4_B_q,
      rand_q[127:96],
      lanes_3_4_A, lanes_3_4_B);

    DOM_and dom_and4 (clk_i, rst_i, 
      n_lane4_A, n_lane4_B,
      lane0_A_q, lane0_B_q,
      rand_q[159:128], 
      lanes_4_0_A, lanes_4_0_B);


    wire [31:0] lane0_A_tmp, lane0_B_tmp;
    wire [31:0] lane1_A_tmp, lane1_B_tmp;
    wire [31:0] lane2_A_tmp, lane2_B_tmp;
    wire [31:0] lane3_A_tmp, lane3_B_tmp;
    wire [31:0] lane4_A_tmp, lane4_B_tmp;

    assign lane0_A_tmp = lanes_1_2_A ^ lane0_A_q;
    assign lane0_B_tmp = lanes_1_2_B ^ lane0_B_q;

    assign lane1_A_tmp = lanes_2_3_A ^ lane1_A_q;
    assign lane1_B_tmp = lanes_2_3_B ^ lane1_B_q;

    assign lane2_A_tmp = lanes_3_4_A ^ lane2_A_q;
    assign lane2_B_tmp = lanes_3_4_B ^ lane2_B_q;

    assign lane3_A_tmp = lanes_4_0_A ^ lane3_A_q;
    assign lane3_B_tmp = lanes_4_0_B ^ lane3_B_q;

    assign lane4_A_tmp = lanes_0_1_A ^ lane4_A_q;
    assign lane4_B_tmp = lanes_0_1_B ^ lane4_B_q;  


    //Affine layer + output
    assign lane1_A_o = lane1_A_tmp ^ lane0_A_tmp;
    assign lane1_B_o = lane1_B_tmp ^ lane0_B_tmp;

    assign lane0_A_o = lane0_A_tmp ^ lane4_A_tmp;
    assign lane0_B_o = lane0_B_tmp ^ lane4_B_tmp;

    assign lane3_A_o = lane3_A_tmp ^ lane2_A_tmp;
    assign lane3_B_o = lane3_B_tmp ^ lane2_B_tmp;

    assign lane2_A_o = ~lane2_A_tmp;
    assign lane2_B_o = lane2_B_tmp;
    
    assign lane4_A_o = lane4_A_tmp;
    assign lane4_B_o = lane4_B_tmp;

endmodule

module lindiff(S0_A_i, S0_B_i, 
    S1_A_i, S1_B_i, 
    S2_A_i, S2_B_i, 
    S3_A_i, S3_B_i, 
    S4_A_i, S4_B_i, 
    S0_A_o, S0_B_o, 
    S1_A_o, S1_B_o, 
    S2_A_o, S2_B_o, 
    S3_A_o, S3_B_o, 
    S4_A_o, S4_B_o);
  
  input [63:0] S0_A_i, S0_B_i;
  input [63:0] S1_A_i, S1_B_i;
  input [63:0] S2_A_i, S2_B_i;
  input [63:0] S3_A_i, S3_B_i;
  input [63:0] S4_A_i, S4_B_i;
  output [63:0] S0_A_o, S0_B_o;
  output [63:0] S1_A_o, S1_B_o;
  output [63:0] S2_A_o, S2_B_o;
  output [63:0] S3_A_o, S3_B_o;
  output [63:0] S4_A_o, S4_B_o;
  wire [63:0] U0_A, U0_B;
  wire [63:0] U1_A, U1_B;
  wire [63:0] U2_A, U2_B;
  wire [63:0] U3_A, U3_B;
  wire [63:0] U4_A, U4_B;
  wire [63:0] U5_A, U5_B;

  wire [63:0] V0_A, V0_B;
  wire [63:0] V1_A, V1_B;
  wire [63:0] V2_A, V2_B;
  wire [63:0] V3_A, V3_B;
  wire [63:0] V4_A, V4_B;
  wire [63:0] V5_A, V5_B;


  //S[0] = S[0] ^ rotr(S[0], 19) ^ rotr(S[0], 28)
  assign U0_A = {S0_A_i[18:0], S0_A_i[63:19]};
  assign V0_A = {S0_A_i[27:0], S0_A_i[63:28]};
  assign S0_A_o = S0_A_i ^ U0_A ^ V0_A;

  assign U0_B = {S0_B_i[18:0], S0_B_i[63:19]};
  assign V0_B = {S0_B_i[27:0], S0_B_i[63:28]};
  assign S0_B_o = S0_B_i ^ U0_B ^ V0_B;


  //S[1] = S[1] ^ rotr(S[1], 61) ^ rotr(S[1], 39)
  assign U1_A = {S1_A_i[60:0], S1_A_i[63:61]};
  assign V1_A = {S1_A_i[38:0], S1_A_i[63:39]};
  assign S1_A_o = S1_A_i ^ U1_A ^ V1_A;

  assign U1_B = {S1_B_i[60:0], S1_B_i[63:61]};
  assign V1_B = {S1_B_i[38:0], S1_B_i[63:39]};
  assign S1_B_o = S1_B_i ^ U1_B ^ V1_B;


  //S[2] = S[2] ^ rotr(S[2],  1) ^ rotr(S[2],  6)
  assign U2_A = {S2_A_i[0], S2_A_i[63:1]};
  assign V2_A = {S2_A_i[5:0], S2_A_i[63:6]};
  assign S2_A_o = S2_A_i ^ U2_A ^ V2_A;

  assign U2_B = {S2_B_i[0], S2_B_i[63:1]};
  assign V2_B = {S2_B_i[5:0], S2_B_i[63:6]};
  assign S2_B_o = S2_B_i ^ U2_B ^ V2_B;

  //S[3] = S[3] ^ rotr(S[3], 10) ^ rotr(S[3], 17)
  assign U3_A = {S3_A_i[9:0], S3_A_i[63:10]};
  assign V3_A = {S3_A_i[16:0], S3_A_i[63:17]};
  assign S3_A_o = S3_A_i ^ U3_A ^ V3_A;

  assign U3_B = {S3_B_i[9:0], S3_B_i[63:10]};
  assign V3_B = {S3_B_i[16:0], S3_B_i[63:17]};
  assign S3_B_o = S3_B_i ^ U3_B ^ V3_B;

  //S[4] = S[4] ^ rotr(S[4],  7) ^ rotr(S[4], 41)
  assign U4_A = {S4_A_i[6:0], S4_A_i[63:7]};
  assign V4_A = {S4_A_i[40:0], S4_A_i[63:41]};
  assign S4_A_o = S4_A_i ^ U4_A ^ V4_A;

  assign U4_B = {S4_B_i[6:0], S4_B_i[63:7]};
  assign V4_B = {S4_B_i[40:0], S4_B_i[63:41]};
  assign S4_B_o = S4_B_i ^ U4_B ^ V4_B;

endmodule

module ascon_round (clk_i, rst_i, 
    S0_A_i, S0_B_i, 
    S1_A_i, S1_B_i, 
    S2_A_i, S2_B_i, 
    S3_A_i, S3_B_i, 
    S4_A_i, S4_B_i, 
    rand_i,
    S0_A_o, S0_B_o, 
    S1_A_o, S1_B_o, 
    S2_A_o, S2_B_o, 
    S3_A_o, S3_B_o, 
    S4_A_o, S4_B_o);
input [63:0] S0_A_i, S0_B_i;
input [63:0] S1_A_i, S1_B_i;
input [63:0] S2_A_i, S2_B_i;
input [63:0] S3_A_i, S3_B_i;
input [63:0] S4_A_i, S4_B_i;

input [320:0] rand_i;
input clk_i;
input rst_i;

output [63:0] S0_A_o, S0_B_o;
output [63:0] S1_A_o, S1_B_o;
output [63:0] S2_A_o, S2_B_o;
output [63:0] S3_A_o, S3_B_o;
output [63:0] S4_A_o, S4_B_o;

wire [63:0] T0_A, T0_B;
wire [63:0] T1_A, T1_B ;
wire [63:0] T2_A, T2_B ;
wire [63:0] T3_A, T3_B ;
wire [63:0] T4_A, T4_B;


sbox sbox_LSB (clk_i, rst_i, 
    S0_A_i[31:0], S0_B_i[31:0], 
    S1_A_i[31:0], S1_B_i[31:0],
    S2_A_i[31:0]^32'h4b, S2_B_i[31:0],
    S3_A_i[31:0], S3_B_i[31:0], 
    S4_A_i[31:0], S4_B_i[31:0], 
    rand_i[159:0],
    T0_A[31:0], T0_B[31:0], 
    T1_A[31:0], T1_B[31:0], 
    T2_A[31:0], T2_B[31:0], 
    T3_A[31:0], T3_B[31:0], 
    T4_A[31:0], T4_B[31:0]);

sbox sbox_MSB (clk_i, rst_i, 
    S0_A_i[63:32], S0_B_i[63:32], 
    S1_A_i[63:32], S1_B_i[63:32],
    S2_A_i[63:32],      
    S2_B_i[63:32],    
    S3_A_i[63:32], S3_B_i[63:32], 
    S4_A_i[63:32], S4_B_i[63:32], 
    rand_i[319:160],
    T0_A[63:32], T0_B[63:32], 
    T1_A[63:32], T1_B[63:32], 
    T2_A[63:32], T2_B[63:32], 
    T3_A[63:32], T3_B[63:32], 
    T4_A[63:32], T4_B[63:32]);


lindiff lin_LSB_MSB(
  T0_A, T0_B,
  T1_A, T1_B,
  T2_A, T2_B,
  T3_A, T3_B,
  T4_A, T4_B,
  S0_A_o, S0_B_o, 
  S1_A_o, S1_B_o, 
  S2_A_o, S2_B_o, 
  S3_A_o, S3_B_o, 
  S4_A_o, S4_B_o
  );

endmodule
