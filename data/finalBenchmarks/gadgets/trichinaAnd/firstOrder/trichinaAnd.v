module trichina_and (
    x0, x1,
    y0, y1, 
    r0, 
    o0, o1
     );

    input [7:0] x0, x1;
    input [7:0] y0, y1;
    input [7:0] r0;
    output [7:0] o0, o1; 





    assign o0 = (((r0 ^ (x0 & y1)) ^ (x1 & y0)) ^ (x1 & y1)) ^ (x0 & y0);
    assign o1 = r0;

endmodule

