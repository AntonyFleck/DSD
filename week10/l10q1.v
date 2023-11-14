module jkff(q,j,k,clk,reset);
input j,k,reset,clk;
output reg q;
always@ (negedge reset or negedge clk)
if (!reset)
	q<=0;
else
	case ({j,k})
		2'b00: q<=q;
		2'b01: q<=0;
		2'b10: q<=1;
		2'b11: q<=~q;
	endcase
endmodule

module l10q1(A,clk,reset);
input clk,reset;
output [2:0]A;
jkff ff1(A[2],A[1],A[1]&A[0],clk,reset);
jkff ff2(A[1],A[0],~A[2]|A[0],clk,reset);
jkff ff3(A[0],A[2]|~A[1],1'b1,clk,reset);
endmodule
