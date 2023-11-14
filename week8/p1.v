module dFF(d,q,clk,reset);
	input clk,d,reset;
	output reg q;
	always @(posedge clk or posedge reset)
		begin
			if (reset)
				q<=0;
			else
				q<=d;
		end
endmodule

module p1(clk,x,y,reset,L0);
	input clk,x,reset;
	output y;
	output [2:0]L0;
	wire [2:0]L1,S;
	assign S[2]=(~L0[0]&~x&L0[1])|(~x&L0[2]);
	assign S[1]=(~L0[2]&~x&~L0[1]&L0[0])|(x&L0[0])|(~x&L0[0]);
	assign S[0]=(~L0[2]&~L0[1]&~L0[0])|(L0[1]&L0[0]);
	dFF st0(S[2],L1[2],clk,reset);
	dFF st1(S[1],L1[1],clk,reset);
	dFF st2(S[0],L1[0],clk,reset);
	assign y=(L0[2]&x)|(L0[1]&~x)|(L0[1]&L0[0]);
	assign L0=L1;
endmodule
