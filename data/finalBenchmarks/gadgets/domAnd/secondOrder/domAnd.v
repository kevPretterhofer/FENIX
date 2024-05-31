module dom_and_2ndorder (clk_i, rst_i, 
        X0_i, X1_i, X2_i,
        Y0_i, Y1_i, Y2_i,
        Z0_i, Z1_i, Z2_i,
        Q0_o, Q1_o, Q2_o
     );
    input clk_i; 
    input rst_i;
    input [7:0] X0_i, X1_i, X2_i;
    input [7:0] Y0_i, Y1_i, Y2_i;
    input [7:0] Z0_i, Z1_i, Z2_i;
    output [7:0] Q0_o, Q1_o, Q2_o; 

    //Same domain
    wire [7:0] AX_AY, BX_BY, CX_CY;

    assign AX_AY = X0_i & Y0_i;
    assign BX_BY = X1_i & Y1_i;
    assign CX_CY = X2_i & Y2_i;

    //Cross domain + resharing
    wire [7:0] AX_BY, AX_CY;

    wire [7:0] BX_AY, BX_CY;

    wire [7:0] CX_AY, CX_BY;

    assign AX_BY = X0_i & Y1_i;
    assign AX_CY = X0_i & Y2_i;
    
    assign BX_AY = X1_i & Y0_i;
    assign BX_CY = X1_i & Y2_i;

    assign CX_AY = X2_i & Y0_i;
    assign CX_BY = X2_i & Y1_i;


    reg [7:0] AX_BY_Z0_q, AX_CY_Z1_q;

    reg [7:0] BX_AY_Z0_q, BX_CY_Z2_q;

    reg [7:0] CX_AY_Z1_q, CX_BY_Z2_q;

    always @(posedge clk_i) begin
        if(rst_i) begin
            AX_BY_Z0_q <= 8'b0;
            AX_CY_Z1_q <= 8'b0;
            BX_AY_Z0_q <= 8'b0;
            BX_CY_Z2_q <= 8'b0;
            CX_AY_Z1_q <= 8'b0;
            CX_BY_Z2_q <= 8'b0;
        end else begin
            AX_BY_Z0_q <= AX_BY ^ Z0_i;
            AX_CY_Z1_q <= AX_CY ^ Z1_i;

            BX_AY_Z0_q <= BX_AY ^ Z0_i;
            BX_CY_Z2_q <= BX_CY ^ Z2_i;

            CX_AY_Z1_q <= CX_AY ^ Z1_i;
            CX_BY_Z2_q <= CX_BY ^ Z2_i;
        end
    end

    assign Q0_o = AX_BY_Z0_q ^ AX_CY_Z1_q ^ AX_AY;
    assign Q1_o = BX_AY_Z0_q ^ BX_CY_Z2_q ^ BX_BY;
    assign Q2_o = CX_AY_Z1_q ^ CX_BY_Z2_q ^ CX_CY;


endmodule
