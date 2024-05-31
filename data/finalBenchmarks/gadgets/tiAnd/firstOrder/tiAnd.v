// TI AND

module ti_and (x2, x0, x1, y2, y0, y1, q0, q1, q2);

  input  [7:0]     x2;
  input  [7:0]     x0;
  input  [7:0]     x1;
  input  [7:0]     y2;
  input  [7:0]     y0;
  input  [7:0]     y1;
  output [7:0]     q0;
  output [7:0]     q1;
  output [7:0]     q2;
 
  wire [7:0]     x2;
  wire [7:0]     x0;
  wire [7:0]     x1;
  wire [7:0]     y2;
  wire [7:0]     y0;
  wire [7:0]     y1;
  wire [7:0]    q0;
  wire [7:0]   q1;
  wire [7:0]   q2;



  assign q0 = (x0 & y0) ^ (x0 & y1)  ^ (x1 & y0);
  assign q1 = (x1 & y1) ^ (x2 & y1)  ^ (x1 & y2);
  assign q2 = (x2 & y2)   ^ (x2 & y0)  ^ (x0 & y2);

 

endmodule

