module dom_and_1storder (clk_i, rst_i, 
    X0_i, X1_i, 
    Y0_i, Y1_i, 
    Z_i, 
    Q0_o, Q1_o
     );
    input clk_i; 
    input rst_i;
    input [7:0] X0_i, X1_i;
    input [7:0] Y0_i, Y1_i;
    input [7:0] Z_i;
    output [7:0] Q0_o, Q1_o; 

    //Same domain
    wire [7:0] X0_Y0,X1_Y1;

    assign X0_Y0 = X0_i & Y0_i;
    assign X1_Y1 = X1_i & Y1_i;

    //Cross domain + resharing
    wire [7:0] X0_Y1,X1_Y0;

    assign X0_Y1 = X0_i & Y1_i;
    assign X1_Y0 = X1_i & Y0_i;

    reg [7:0] X0_Y1_Z_q, X1_Y0_Z_q;

    always @(posedge clk_i) begin
        if(rst_i) begin
            X0_Y1_Z_q <= 8'b0;
            X1_Y0_Z_q <= 8'b0;
        end else begin
            X0_Y1_Z_q <= X0_Y1 ^ Z_i;
            X1_Y0_Z_q <= X1_Y0 ^ Z_i;
        end
    end

    assign Q0_o = X0_Y1_Z_q ^ X0_Y0;
    assign Q1_o = X1_Y0_Z_q ^ X1_Y1;

endmodule
