module dom_and_3rdorder (clk_i, rst_i, 
        X0_i, X1_i, X2_i, X3_i,
        Y0_i, Y1_i, Y2_i, Y3_i,
        Z0_i, Z1_i, Z2_i, Z3_i, Z4_i, Z5_i,
        Q0_o, Q1_o, Q2_o, Q3_o);

    input clk_i; 
    input rst_i;
    input  X0_i, X1_i, X2_i, X3_i;
    input Y0_i, Y1_i, Y2_i, Y3_i;
    input Z0_i, Z1_i, Z2_i, Z3_i, Z4_i, Z5_i;
    output  Q0_o, Q1_o, Q2_o, Q3_o; 

    //Same domain
    wire AX_AY;
    wire BX_BY;
    wire CX_CY;
    wire DX_DY;

    assign AX_AY = X0_i & Y0_i;
    assign BX_BY = X1_i & Y1_i;
    assign CX_CY = X2_i & Y2_i;
    assign DX_DY = X3_i & Y3_i;

    //Cross domain + resharing
    wire AX_BY;
    wire AX_CY;
    wire AX_DY;

    wire BX_AY;
    wire BX_CY;
    wire BX_DY;

    wire CX_AY;
    wire CX_BY;
    wire CX_DY;

    wire DX_AY;
    wire DX_BY;
    wire DX_CY;

    assign AX_BY = X0_i & Y1_i;
    assign AX_CY = X0_i & Y2_i;
    assign AX_DY = X0_i & Y3_i;
    
    assign BX_AY = X1_i & Y0_i;
    assign BX_CY = X1_i & Y2_i;
    assign BX_DY = X1_i & Y3_i;

    assign CX_AY = X2_i & Y0_i;
    assign CX_BY = X2_i & Y1_i;
    assign CX_DY = X2_i & Y3_i;

    assign DX_AY = X3_i & Y0_i;
    assign DX_BY = X3_i & Y1_i;
    assign DX_CY = X3_i & Y2_i;


    reg AX_BY_Z0_q;
    reg AX_CY_Z1_q;
    reg AX_DY_Z3_q;

    reg BX_AY_Z0_q;
    reg BX_CY_Z2_q;
    reg BX_DY_Z4_q;

    reg CX_AY_Z1_q;
    reg CX_BY_Z2_q;
    reg CX_DY_Z5_q;

    reg DX_AY_Z3_q;
    reg DX_BY_Z4_q;
    reg DX_CY_Z5_q;

    

    always @(posedge clk_i) begin
        if(rst_i) begin
            AX_BY_Z0_q <= 1'b0;
            AX_CY_Z1_q <= 1'b0;
            AX_DY_Z3_q <= 1'b0;

            BX_AY_Z0_q <= 1'b0;
            BX_CY_Z2_q <= 1'b0;
            BX_DY_Z4_q <= 1'b0;

            CX_AY_Z1_q <= 1'b0;
            CX_BY_Z2_q <= 1'b0;
            CX_DY_Z5_q <= 1'b0;

            DX_AY_Z3_q <= 1'b0;
            DX_BY_Z4_q <= 1'b0;
            DX_CY_Z5_q <= 1'b0;
        end else begin
            AX_BY_Z0_q <= AX_BY ^ Z0_i;
            AX_CY_Z1_q <= AX_CY ^ Z1_i;
            AX_DY_Z3_q <= AX_DY ^ Z3_i;

            BX_AY_Z0_q <= BX_AY ^ Z0_i;
            BX_CY_Z2_q <= BX_CY ^ Z2_i;
            BX_DY_Z4_q <= BX_DY ^ Z4_i;

            CX_AY_Z1_q <= CX_AY ^ Z1_i;
            CX_BY_Z2_q <= CX_BY ^ Z2_i;
            CX_DY_Z5_q <= CX_DY ^ Z5_i;

            DX_AY_Z3_q <= DX_AY ^ Z3_i;
            DX_BY_Z4_q <= DX_BY ^ Z4_i;
            DX_CY_Z5_q <= DX_CY ^ Z5_i;
        end
    end

    assign Q0_o = AX_BY_Z0_q ^ AX_CY_Z1_q ^ AX_DY_Z3_q ^ AX_AY;
    assign Q1_o = BX_AY_Z0_q ^ BX_CY_Z2_q ^ BX_DY_Z4_q ^ BX_BY;
    assign Q2_o = CX_AY_Z1_q ^ CX_BY_Z2_q ^ CX_DY_Z5_q ^ CX_CY;
    assign Q3_o = DX_AY_Z3_q ^ DX_BY_Z4_q ^ DX_CY_Z5_q ^ DX_DY;


endmodule
