module dom_and_onebitAttr
  ( 
    input clk, input rst,
    input  ax, input ay,
    input  bx, input by,
    input  z0,
    output cx, output cy
  );

    reg tmpa;
    reg tmpb;

    wire axay;
    wire axby;
    wire aybx;
    wire bxby;

  //Calculation (inner and crossdomain)
  assign axay = ax & ay;
  assign axby = ax & by;
  assign aybx = ay & bx;
  assign bxby = bx & by;


  always @(posedge clk)
  begin
    if(rst) begin
      tmpa <= 1'b0;
      tmpb <= 1'b0;
    end else begin
      //Resharing (basically adding random Z to crossomain results)
      tmpa <= axby ^ z0;
      tmpb <= aybx ^ z0;
    end
  end

  //Integration (adding crossdomain to inner domain)
  assign cx = axay ^ tmpa;
  assign cy = bxby ^ tmpb;

endmodule

