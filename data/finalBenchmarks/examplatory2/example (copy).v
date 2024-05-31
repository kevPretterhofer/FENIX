module example(clk_i, rst_i, 
    s1, s2, r, o
     );
    input clk_i; 
    input rst_i;
    input s1, s2, r;
    output o;
    
    (* extract_reset = "yes" *) reg flip1;
    (* extract_reset = "yes" *) reg flip2;
    (* extract_reset = "yes" *) reg flip3;
    (* extract_reset = "yes" *) reg flip4;
    
    
        always @(posedge clk_i) begin
            if (rst_i) begin
                flip1 <= 1'b0;
                flip2 <= 1'b0;
                flip3 <= 1'b0;
                flip4 <= 1'b0;
            end else begin
                flip1 <= s1;
                flip2 <= s2;
                flip3 <= r;
                flip4 <= flip1;
            end      
        end
        
        assign o = flip4 ^ flip2 ^ flip3;
endmodule


