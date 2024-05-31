//Keccak First Order Masked 5-Bit S-BOX instantiation 
//According to "Higher-Order Side-Channel Protected Implementations of KECCAK" by Gross et. al
//WITHOUT Optimizations - basically following Fig. 2 of the paper
//
// SBOX(x) = y , respectively: MASKED_SBOX(ax, bx) = ay, by

`include "dom_and_onebit.v"


module dom_keccak_sbox
  (
      input clk, input rst,
      input[4:0] ax, bx, //5-Bit SBOX - thus 5 masked bits
      input[4:0] z, //Random z for each AND (???)
      output[4:0] ay, by //Masked 5-Bit output
  );

  wire[4:0] tmpa, tmpb;

 /*
 dom_and_onebit dm0(clk, rst, 1'b1^ax[(0+1)%5], ax[(0+2) % 5], bx[(0+1)%5], bx[(0+2) % 5], z[0], tmpa[0], tmpb[0]);
        assign ay[0] = ax[0] ^ tmpa[0];
        assign by[0] = bx[0] ^ tmpb[0];
 */
 
  generate;
      genvar i;
      for (i = 0; i < 5; i = i + 1) begin
        dom_and_onebit dm0(clk, rst, 1'b1^ax[(i+1)%5], ax[(i+2) % 5], bx[(i+1)%5], bx[(i+2) % 5], z[i], tmpa[i], tmpb[i]);
        assign ay[i] = ax[i] ^ tmpa[i];
        assign by[i] = bx[i] ^ tmpb[i];
      end

  endgenerate


endmodule