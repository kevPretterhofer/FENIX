//mux2_sel_e
localparam Mux2SelWidth = 3;
localparam MUX2_SEL_0 = 3'b011;
localparam MUX2_SEL_1 = 3'b100;

//mux3_sel_e
localparam Mux3SelWidth = 5;
localparam MUX3_SEL_0 = 5'b01110;
localparam MUX3_SEL_1 = 5'b11000;
localparam MUX3_SEL_2 = 5'b00001;

//mux4_sel_e
localparam Mux4SelWidth = 5;
localparam MUX4_SEL_0 = 5'b01110;
localparam MUX4_SEL_1 = 5'b11000;
localparam MUX4_SEL_2 = 5'b00001;
localparam MUX4_SEL_3 = 5'b10111;


//sbox_impl_e
localparam SBoxImplLut =1;
localparam SBoxImplCanright  =2;
localparam SBoxImplCanrightMasked  =3;
localparam SBoxImplCanrightMaskedNoreuse  =4;
localparam SBoxImplDom  =5;


//ciph_op_e
localparam CIPH_FWD = 2'b01;
localparam CIPH_INV = 2'b10;

//key_len_e
localparam AES_128 = 3'b001;
localparam AES_192 = 3'b010;
localparam AES_256 = 3'b100;

//state_sel_e
localparam StateSelNum = 3;
localparam StateSelWidth = Mux3SelWidth;
localparam STATE_INIT = MUX3_SEL_0;
localparam STATE_ROUND = MUX3_SEL_1;
localparam STATE_CLEAR = MUX3_SEL_2;

//add_rk_sel_e
localparam AddRKSelNum = 3;
localparam AddRKSelWidth = Mux3SelWidth;
localparam ADD_RK_INIT = MUX3_SEL_0;
localparam ADD_RK_ROUND = MUX3_SEL_1;
localparam ADD_RK_FINAL = MUX3_SEL_2;

//key_full_sel_e
localparam KeyFullSelNum = 4;
localparam KeyFullSelWidth = Mux4SelWidth;
localparam KEY_FULL_ENC_INIT = MUX4_SEL_0;
localparam KEY_FULL_DEC_INIT = MUX4_SEL_1;
localparam KEY_FULL_ROUND    = MUX4_SEL_2;
localparam KEY_FULL_CLEAR    = MUX4_SEL_3;

//key_dec_sel_e
localparam KeyDecSelNum = 2;
localparam KeyDecSelWidth = Mux2SelWidth;
localparam KEY_DEC_EXPAND = MUX2_SEL_0;
localparam KEY_DEC_CLEAR = MUX2_SEL_1;

//key_words_sel_e
localparam KeyWordsSelNum = 4;
localparam KeyWordsSelWidth = Mux4SelWidth;
localparam KEY_WORDS_0123 = MUX4_SEL_0;
localparam KEY_WORDS_2345 = MUX4_SEL_1;
localparam KEY_WORDS_4567    = MUX4_SEL_2;
localparam KEY_WORDS_ZERO    = MUX4_SEL_3;

//round_key_sel_e
localparam  RoundKeySelNum = 2;
localparam  RoundKeySelWidth = Mux2SelWidth;
localparam ROUND_KEY_DIRECT = MUX2_SEL_0;
localparam ROUND_KEY_MIXED = MUX2_SEL_1;

// Parameters used for controlgroups in the coverage
parameter int AES_OP_WIDTH             = 2;
parameter int AES_MODE_WIDTH           = 6;
parameter int AES_KEYLEN_WIDTH         = 3;

parameter int unsigned WidthPRDSBox     = 8;  // Number PRD bits per S-Box. This includes the
                                              // 8 bits for the output mask when using any of the
                                              // masked Canright S-Box implementations.
parameter int unsigned WidthPRDData     = 16*WidthPRDSBox; // 16 S-Boxes for the data path
parameter int unsigned WidthPRDKey      = 4*WidthPRDSBox;  // 4 S-Boxes for the key expand
parameter int unsigned WidthPRDMasking  = WidthPRDData + WidthPRDKey;

// Transpose state matrix
function automatic logic [127:0] aes_transpose;
  input logic [127:0] in;
  logic [127:0] transpose;
  transpose = 0;
  transpose[((0 *4) + 0) * 8+:8] = in[((0 * 4) + 0) * 8+:8];
  transpose[((0* 4) + 1) * 8+:8] = in[((1 * 4) + 0) * 8+:8];
  transpose[((0* 4) + 2) * 8+:8] = in[((2 * 4) + 0) * 8+:8];
  transpose[((0* 4) + 3) * 8+:8] = in[((3 * 4) + 0) * 8+:8];

  transpose[((1* 4) + 0) * 8+:8] = in[((0 * 4) + 1) * 8+:8];
  transpose[((1* 4) + 1) * 8+:8] = in[((1 * 4) + 1) * 8+:8];
  transpose[((1* 4) + 2) * 8+:8] = in[((2 * 4) + 1) * 8+:8];
  transpose[((1* 4) + 3) * 8+:8] = in[((3 * 4) + 1) * 8+:8];

  transpose[((2* 4) + 0) * 8+:8] = in[((0 * 4) + 2) * 8+:8];
  transpose[((2* 4) + 1) * 8+:8] = in[((1 * 4) + 2) * 8+:8];
  transpose[((2* 4) + 2) * 8+:8] = in[((2 * 4) + 2) * 8+:8];
  transpose[((2* 4) + 3) * 8+:8] = in[((3 * 4) + 2) * 8+:8];

  transpose[((3* 4) + 0) * 8+:8] = in[((0 * 4) + 3) * 8+:8];
  transpose[((3* 4) + 1) * 8+:8] = in[((1 * 4) + 3) * 8+:8];
  transpose[((3* 4) + 2) * 8+:8] = in[((2 * 4) + 3) * 8+:8];
  transpose[((3* 4) + 3) * 8+:8] = in[((3 * 4) + 3) * 8+:8];

  
  aes_transpose = transpose;
endfunction

/*function automatic [31:0] aes_circ_byte_shift;
		input reg [31:0] in;
		input reg [1:0] shift;
		reg [31:0] out;
		reg [31:0] s;
		begin
			s = {30'b000000000000000000000000000000, shift};
			out = {in[8 * ((7 - s) % 4)+:8], in[8 * ((6 - s) % 4)+:8], in[8 * ((5 - s) % 4)+:8], in[8 * ((4 - s) % 4)+:8]};
			aes_circ_byte_shift = out;
		end
	endfunction*/

/*
  function automatic integer aes_rot_int;
		input integer in;
		input integer num;
		integer out;
		begin
			if (in == 0)
				out = num - 1;
			else
				out = in - 1;
			aes_rot_int = out;
		end
	endfunction*/

  function automatic logic [31:0] aes_circ_byte_shift;
  input logic [31:0] in;
  input logic [1:0] shift;
  logic [31:0] out;
  logic [31:0] s;
  s = {30'b0,shift};
  out = {in[8*((7-s)%4) +: 8], in[8*((6-s)%4) +: 8],
         in[8*((5-s)%4) +: 8], in[8*((4-s)%4) +: 8]};
  aes_circ_byte_shift = out;
endfunction

function automatic logic [7:0] aes_mul2;
input logic [7:0] in;
  logic [7:0] out;
  out[7] = in[6];
  out[6] = in[5];
  out[5] = in[4];
  out[4] = in[3] ^ in[7];
  out[3] = in[2] ^ in[7];
  out[2] = in[1];
  out[1] = in[0] ^ in[7];
  out[0] = in[7];
  aes_mul2 = out;
endfunction

function automatic logic [7:0] aes_div2;
input logic [7:0] in;
  logic [7:0] out;
  out[7] = in[0];
  out[6] = in[7];
  out[5] = in[6];
  out[4] = in[5];
  out[3] = in[4] ^ in[0];
  out[2] = in[3] ^ in[0];
  out[1] = in[2];
  out[0] = in[1] ^ in[0];
  aes_div2 = out;
endfunction

// Rotate integer indices
function automatic integer aes_rot_int;
input integer in;
input integer num;
  integer out;
  if (in == 0) begin
    out = num - 1;
  end else begin
    out = in - 1;
  end
  aes_rot_int = out;
endfunction


// Multiplication by {04} (i.e. x^2) on GF(2^8)
// with field generating polynomial {01}{1b} (9'h11b)
function automatic logic [7:0] aes_mul4;
  input logic [7:0] in;
  aes_mul4 = aes_mul2(aes_mul2(in));
endfunction

// Matrix-vector multiplication in GF(2^8): c = A * b
function automatic logic [7:0] aes_mvm;
input logic [7:0] vec_b;
	input logic [63:0] mat_a;
  logic [7:0] vec_c;
  vec_c = '0;
  for (int i = 0; i < 8; i++) begin
    for (int j = 0; j < 8; j++) begin
      vec_c[i] = vec_c[i] ^ (mat_a[((7 - j) * 8) + i] & vec_b[7 - j]);
    end
  end
  aes_mvm = vec_c;
endfunction

localparam [63:0] A2X = 64'h98f3f2480981a9ff;
localparam [63:0] S2X = 64'h8c7905eb12045153;
localparam [63:0] X2A = 64'h64786e8c6829de60;
localparam [63:0] X2S = 64'h582d9e0bdc040324;


  // Scale by Omega^2 = N in GF(2^2), using normal basis [Omega^2, Omega]
  // (see Figure 16 in the technical report)
  function automatic logic [1:0] aes_scale_omega2_gf2p2;
    input logic [1:0] g;
    logic [1:0] d;
    d[1] = g[0];
    d[0] = g[1] ^ g[0];
    aes_scale_omega2_gf2p2 = d;
  endfunction

  // Square in GF(2^2), using normal basis [Omega^2, Omega]
  // (see Figures 8 and 10 in the technical report)
  function automatic logic [1:0] aes_square_gf2p2;
    input logic [1:0] g;
    logic [1:0] d;
    d[1] = g[0];
    d[0] = g[1];
    aes_square_gf2p2 = d;
  endfunction

  // Scale by Omega = N^2 in GF(2^2), using normal basis [Omega^2, Omega]
  // (see Figure 15 in the technical report)
  function automatic logic [1:0] aes_scale_omega_gf2p2;
  input logic [1:0] g;
  logic [1:0] d;
    d[1] = g[1] ^ g[0];
    d[0] = g[1];
    aes_scale_omega_gf2p2 = d;
  endfunction

  function automatic logic [3:0] aes_square_scale_gf2p4_gf2p2;
  input logic [3:0] gamma;
  logic [3:0] delta;
  logic [1:0] a, b;
    a          = gamma[3:2] ^ gamma[1:0];
    b          = aes_square_gf2p2(gamma[1:0]);
    delta[3:2] = aes_square_gf2p2(a);
    delta[1:0] = aes_scale_omega_gf2p2(b);
    aes_square_scale_gf2p4_gf2p2 = delta;
  endfunction

  // Multiplication in GF(2^2), using normal basis [Omega^2, Omega]
  // (see Figure 14 in the technical report)
  function automatic logic [1:0] aes_mul_gf2p2;
  input logic [1:0] g;
  input logic [1:0] d;
  logic [1:0] f;
    logic       a, b, c;
    a    = g[1] & d[1];
    b    = (^g) & (^d);
    c    = g[0] & d[0];
    f[1] = a ^ b;
    f[0] = c ^ b;
    aes_mul_gf2p2 = f;
  endfunction

 // Multiplication in GF(2^4), using normal basis [alpha^8, alpha^2]
  // (see Figure 13 in the technical report)
  function automatic logic [3:0] aes_mul_gf2p4;
    input logic [3:0] gamma;
    input logic [3:0] delta;
    logic [3:0] theta;
    logic [1:0] a, b, c;
    a          = aes_mul_gf2p2(gamma[3:2], delta[3:2]);
    b          = aes_mul_gf2p2(gamma[3:2] ^ gamma[1:0], delta[3:2] ^ delta[1:0]);
    c          = aes_mul_gf2p2(gamma[1:0], delta[1:0]);
    theta[3:2] = a ^ aes_scale_omega2_gf2p2(b);
    theta[1:0] = c ^ aes_scale_omega2_gf2p2(b);
    aes_mul_gf2p4 = theta;
  endfunction

  localparam int StateWidth = 6;

parameter [StateWidth-1:0]IDLE = 6'b001001;
parameter [StateWidth-1:0] INIT        = 6'b100011;
parameter [StateWidth-1:0] ROUND       = 6'b111101;
parameter [StateWidth-1:0] FINISH      = 6'b010000;
parameter [StateWidth-1:0] PRNG_RESEED = 6'b100100;
parameter [StateWidth-1:0] CLEAR_S     = 6'b111010;
parameter [StateWidth-1:0] CLEAR_KD    = 6'b001110;
parameter [StateWidth-1:0] ERROR       = 6'b010111;
