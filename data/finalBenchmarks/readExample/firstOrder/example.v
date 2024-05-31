module Test(
    input clk_i,
    input rst_i,
    input read_address, // 0 = read X, 1 = read Y
    input X_i,
    input Y_i,
    output read_data);

  (* extract_reset = "yes" *)reg X;
  (* extract_reset = "yes" *)reg Y;
  (* extract_reset = "yes" *)reg [1:0] OH_read_address;
  
  always @(posedge clk_i) begin
        if(rst_i) begin
            X <= X_i;
            Y <= Y_i;
            OH_read_address <= 2'b0;
        end else begin
            OH_read_address <= read_address ? 2'b10 : 2'b01;
        end
  end
  
  assign read_data = (X & OH_read_address[1]) | (Y & OH_read_address[0]);
            
endmodule
