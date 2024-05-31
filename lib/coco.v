module NOT(A, Y);
/* verilator tracing_off*/
input A;
output Y;
assign Y = ~A;
endmodule

module AND(A, B, Y);
/* verilator tracing_off*/
input A, B;
output Y;
assign Y = (A & B);
endmodule

module OR(A, B, Y);
/* verilator tracing_off*/
input A, B;
output Y;
assign Y = (A | B);
endmodule

module XOR(A, B, Y);
/* verilator tracing_off*/
input A, B;
output Y;
assign Y = (A ^ B);
endmodule

module MUX(A, B, S, Y);
/* verilator tracing_off*/
input A, B, S;
output Y;
assign Y = S ? A : B;
endmodule


module DFFR(C, D, Q, R);
/* verilator tracing_off*/
input C, D, R;
output reg Q;
always @(posedge C, posedge R)
	if (R)
		Q <= 1'b0;
	else
		Q <= D;
endmodule

