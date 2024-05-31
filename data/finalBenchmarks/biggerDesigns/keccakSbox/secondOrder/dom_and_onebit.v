module dom_and_onebit
  ( 
    input clk, input rst,
    input  ax, input ay,  
    input  bx, input by,
    input  cx, input cy,
    input  z0, input z1, input z2,
    output ao, output bo, output co
  );

  reg axbyz0;
  reg axcyz1;
  reg bxayz0;
  reg bxcyz2;
  reg cxayz1;
  reg cxbyz2;

  wire axay;
  wire bxby;
  wire cxcy;
  
  assign axay = ax & ay;
  assign bxby = bx & by;
  assign cxcy = cx & cy;
  
  wire axby;
  wire axcy;
  wire bxay;
  wire bxcy;
  wire cxay;
  wire cxby;
  
  assign axby = ax & by;
  assign axcy = ax & cy;
  assign bxay = bx & ay;
  assign bcxy = bx & cy;
  assign cxay = cx & ay;
  assign cxby = cx & by;

  always @(posedge clk)
  begin
    if(rst) begin
      axbyz0 <= 1'b0;
      axcyz1 <= 1'b0;
      bxayz0 <= 1'b0;
      bxcyz2 <= 1'b0;
      cxayz1 <= 1'b0;
      cxbyz2 <= 1'b0;
    end else begin
      //Resharing (basically adding random Z to crossomain results)
      axbyz0 <= axby ^ z0;
      axcyz1 <= axcy ^ z1;
      bxayz0 <= bxay ^ z0;
      bxcyz2 <= bxcy ^ z2;
      cxayz1 <= cxay ^ z1;
      cxbyz2 <= cxby ^ z2;
    end
  end

  //Integration (adding crossdomain to inner domain)
  assign ao = axbyz0 ^ axcyz1 ^ axay;
  assign bo = bxayz0 ^ bxcyz2 ^ bxby;
  assign co = cxayz1 ^ cxbyz2 ^ cxcy;

endmodule

