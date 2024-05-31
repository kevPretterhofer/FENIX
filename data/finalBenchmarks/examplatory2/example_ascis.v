module example(clk_i, rst_i, 
    s1, s2, r, o
     );
    input clk_i; 
    input rst_i;
    input s1, s2, r;
    output o;
    
    reg flip1;
    reg flip2;
    reg flip3;
    reg flip4;
    wire tmp;
    
    
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
        
        assign tmp = flip2 ^ flip3;
        assign o = flip4 ^ tmp;
endmodule


