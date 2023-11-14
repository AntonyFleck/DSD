module TFF(t,q,clk,reset);
input clk,t,reset;
output reg q;
always @(posedge clk or posedge reset)
beginif (reset)
		q<=1'b0;
	else
		begin 
			if (t==1'b0)
				q<=q;
			else
				q<=~q;
		end
end
endmodule

module p2(A,x,clk,reset);
input x,clk,reset;
output [1:0]A;
wire [1:0]A1;
assign TA=~A1[1]&A1[0]|A1[1]&~x;
	
assign TB=~A1[1]&~x|~A1[0]&~x|~A1[1]&A1[0]&x;
TFF t1(TA,A1[1],clk,reset);
TFF t2(TB,A1[0],clk,reset);
assign A=A1;
endmodule
