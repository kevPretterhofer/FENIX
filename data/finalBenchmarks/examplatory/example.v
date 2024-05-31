module example(clk_i, rst_i, 
    s1, s2, r, o
     );
    input clk_i; 
    input rst_i;
    input s1, s2, r;
    output o;
    
    (* extract_reset = "yes" *) reg flip1;
    (* extract_reset = "yes" *) reg flip2;
    
    (* keep = "true" *)  wire xor1;
    (* keep = "true" *)  wire xor2;
    
        always @(posedge clk_i) begin
            if (rst_i) begin
                flip1 <= 1'b0;
                flip2 <= 1'b0;
            end else begin
                flip1 <= s1;
                flip2 <= xor1;
            end      
        end
        
        assign xor1 = flip1 ^ r;
        assign xor2 = flip2 ^ s2;
        assign o = xor2;
endmodule


