module readShare (
    input clk_i, 
    input rst_i,
    input start_i, 
    input  [buswidth-1:0] X_i,
    input  [buswidth-1:0] Y_i,
    output [buswidth-1:0]share_o
     );
    
 (* extract_reset = "yes" *)reg [buswidth-1:0] X, Y;
 (* extract_reset = "yes" *)reg [1:0] readAddr_p, readAddr_n;
 (* extract_reset = "yes" *)reg [2:0] state_p, state_n;

localparam start = 3'b000, readData = 3'b001, clear1 = 3'b010, readX = 3'b011, clear2 = 3'b100, readY = 3'b101, clearReg = 3'b110;
localparam buswidth = 32;


always @(posedge clk_i) begin
    if(rst_i) begin
        X <= 32'b0;
        Y <= 32'b0;
        state_p <= start;
        readAddr_p <= 2'b0;
    end else begin
        state_p <= state_n;
        readAddr_p <= readAddr_n;
        if (state_p == readData)
        begin
            X <= X_i;
            Y <= Y_i;
        end else if (state_p == clearReg)
        begin
            X <= 32'b0;
            Y <= 32'b0;
        end else 
        begin
            X <= X;
            Y <= Y;  
        end
    end
end

always @(*) begin
    state_n <= state_p;
    readAddr_n <= readAddr_p;
    
    case(state_p)
        start:
        begin
          if (start_i)
            state_n <= readData;
        end
        readData:
        begin
           if (~start_i)
            state_n <= clear1;
        end
        clear1:
        begin
            state_n <= readX;
            readAddr_n <= 2'b0;
        end
        readX:
        begin
            state_n <= clear2;
            readAddr_n <= 2'b01;
        end
        clear2:
        begin
            state_n <= readY;
            readAddr_n <= 2'b0;
        end
        readY:
        begin        
            state_n <= clearReg;
            readAddr_n <= 2'b10;
        end
        clearReg:
        begin
            state_n <= start;
            readAddr_n <= 2'b00;
        end
    endcase
   
end

assign share_o = (X & {buswidth{readAddr_p[0]}}) | (Y & {buswidth{readAddr_p[1]}});


endmodule


