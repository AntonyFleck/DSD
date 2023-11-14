module srff(q,s,r,clk,reset);
input s,r,reset,clk;
output reg q;
always@ (negedge reset or negedge clk)
if (!reset)
	q<=0;
else
	case ({s,r})
		2'b00: q<=q;
		2'b01: q<=0;
		2'b10: q<=1;
		2'b11: q<=1'bx;
	endcase
endmodule

module l10q2(A,clk,reset);
input clk,reset;
output [2:0]A;
srff ff1(A[2],~A[1]&~A[0],A[2]&~A[1],clk,reset);
srff ff2(A[1],~A[2]&~A[1],(A[2]&~A[0])|(~A[2]&A[1]&A[0]),clk,reset);
srff ff3(A[0],~A[0],(~A[2]&A[0])|(A[1]&A[0]),clk,reset);
endmodule
