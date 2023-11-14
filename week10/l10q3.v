module tff(q,t,clk,reset);
input t,reset,clk;
output reg q;
always@ (negedge reset or negedge clk)
if (!reset)
	q<=0;
else if (t)
	q<=~q;
endmodule

module l10q3(A,clk,reset);
input clk,reset;
output [2:0]A;
tff ff1(A[2],(~A[2]&A[1])|(A[2]&~A[1]),clk,reset);
tff ff2(A[1],(~A[1]&A[0])|(A[1]&~A[0]),clk,reset);
tff ff3(A[0],(~A[2]&~A[0])|(A[2]&A[0]),clk,reset);
endmodule
