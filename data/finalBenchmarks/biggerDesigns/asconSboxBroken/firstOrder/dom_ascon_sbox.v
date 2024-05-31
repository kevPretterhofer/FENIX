//Ascon First Order Masked 5-Bit S-BOX instantiation 
//WITHOUT Optimizations
//
// SBOX(x) = y , respectively: MASKED_SBOX(ax, bx) = ay, by

`include "dom_and_onebit.v"


module dom_ascon_sbox
  (
      input clk, input rst,
      input[4:0] ax, bx, //5-Bit SBOX - thus 5 masked bits
      input[4:0] z, //Random z for each AND (???)
      output[4:0] ay, by //Masked 5-Bit output
  );

  
  //I subdevided the "intermediate" computations into 5 'categories'
  //Namely v0* to v4*, where v0* represents the values on the x0 lane, 
  //v1* the values on the x1 lane, and so on, where a lane means the graphical
  //"lines" of x0 to x4 from the ascon sbox graphic in the specs.
  wire av00, av01, av02, av03;
  wire bv00, bv01, bv02, bv03;
  
  wire av10, av11, av12;
  wire bv10, bv11, bv12;
  
  wire av20, av21, av22, av23;
  wire bv20, bv21, bv22, bv23;
  
  wire av30, av31, av32;
  wire bv30, bv31, bv32;
  
  wire av40, av41, av42;
  wire bv40, bv41, bv42;

  //And now a bunch of lovely assign statements and dom_and gates
  //There is probably (more likely definitely?!) a more beautiful way
  //note that ax[0]^bx[0] corresponds to x4 in the graphic, 
  //where ax[4]^bx[4] corresponds to x0 (endianess)
  assign av00 = ax[4] ^ ax[0];
  assign bv00 = bx[4] ^ bx[0];
  dom_and_onebit dm0(clk, rst, 1'b1^av00, ax[3], bv00, bx[3], z[0], av01, bv01);
  assign av02 = av00 ^ av10;
  assign bv02 = bv00 ^ bv10;
  assign av03 = av02 ^ av42;
  assign bv03 = bv02 ^ bv42;

  dom_and_onebit dm1(clk, rst, 1'b1^ax[3], av20, bx[3], bv20, z[1], av10, bv10);
  assign av11 = ax[3] ^ av21;
  assign bv11 = bx[3] ^ bv21;
  assign av12 = av11 ^ av02;
  assign bv12 = bv11 ^ bv02;

  assign av20 = ax[2] ^ ax[3];
  assign bv20 = bx[2] ^ bx[3];
  dom_and_onebit dm2(clk, rst, 1'b1^av20, ax[1], bv20, bx[1], z[2], av21, bv21);
  assign av22 = av20 ^ av30;
  assign bv22 = bv20 ^ bv30;
  assign av23 = av22 ^ 1;
  assign bv23 = bv22;

  dom_and_onebit dm3(clk, rst, 1'b1^ax[1], av40, bx[1], bv40, z[3], av30, bv30);
  assign av31 = ax[1] ^ av41;
  assign bv31 = bx[1] ^ bv41;
  assign av32 = av22 ^ av31;
  assign bv32 = bv22 ^ bv31;

  assign av40 = ax[0] ^ ax[1];
  assign bv40 = bx[0] ^ bx[1];
  dom_and_onebit dm4(clk, rst, 1'b1^av40, av00, bv40, bv00, z[4], av41, bv41);
  assign av42 = av40 ^ av01;
  assign bv42 = bv40 ^ bv01;

  assign ay = {av03, av12, av23, av32, av42};
  assign by = {bv03, bv12, bv23, bv32, bv42};

endmodule