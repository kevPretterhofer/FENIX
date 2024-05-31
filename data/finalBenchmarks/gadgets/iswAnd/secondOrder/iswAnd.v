module isw_and (clk_i, rst_i, 
    X0_i, X1_i, X2_i,
    Y0_i, Y1_i,  Y2_i,
    R01_i, R02_i, R12_i,
    Q0_o, Q1_o, Q2_o,
     );
    input clk_i; 
    input rst_i;
    input [7:0] X0_i, X1_i, X2_i;
    input [7:0] Y0_i, Y1_i, Y2_i;
    input [7:0] R01_i, R02_i, R12_i;
    output [7:0] Q0_o, Q1_o, Q2_o; 

    reg [7:0] tmp0_q;
    reg [7:0] tmp1_q;
    reg [7:0] tmp2_q;
    reg [7:0] tmp3_q;
    reg [7:0] tmp4_q;
    reg [7:0] tmp5_q;
    
    reg [7:0] C0_q, C1_q, C2_q;
    reg [7:0] R10_q, R20_q, R21_q;


    always @(posedge clk_i) begin
        if(rst_i) begin
            tmp0_q <= 8'b0;
            tmp1_q <= 8'b0;
            tmp2_q <= 8'b0;
            tmp3_q <= 8'b0;
            tmp4_q <= 8'b0;
            tmp5_q <= 8'b0;

            C0_q <= 8'b0;
            C1_q <= 8'b0;
            C2_q <= 8'b0;

            R10_q <= 8'b0;
            R20_q <= 8'b0;
            R21_q <= 8'b0;
        end else begin
            tmp0_q <= (R01_i ^ (X0_i&Y1_i));
            tmp1_q <= (X1_i&Y0_i);
            tmp2_q <= (R02_i ^ (X0_i&Y2_i));
            tmp3_q <= (X2_i&Y0_i);
            tmp4_q <= (R12_i ^ (X1_i&Y2_i));
            tmp5_q <= (X2_i&Y1_i);
    
            C0_q <= X0_i & Y0_i;
            C1_q <= X1_i & Y1_i;
            C2_q <= X2_i & Y2_i;
            
            R10_q <= tmp0_q ^ tmp1_q;
            R20_q <= tmp2_q ^ tmp3_q;
            R21_q <= tmp4_q ^ tmp5_q;
        end
    end

    assign Q0_o = C0_q ^ R01_i ^ R02_i;
    assign Q1_o = C1_q ^ R10_q ^ R12_i;
    assign Q2_o = C2_q ^ R20_q ^ R21_q ;

endmodule

