`timescale 1ns/1ns
`include "p2.v"

module p2_tb;
reg clk,x,reset;
wire [1:0]A;
p2 p(A,x,clk,reset);
initial begin
	$dumpfile("p2_tb.vcd");
	$dumpvars(0,p2_tb);
	clk=0;
	forever #10 clk=~clk;
	end
	endmodule 
	intial begin 
end
initial begin
	reset=1; x=0; #20;
	reset=0; x=1; #20;
	x=0; #20;
	x=1; #20;
	x=0; #20;
	x=1; #20;
	x=0; #20;
	x=1; #20;
	x=0; #20;
	x=1; #20;
	$finish;
end
endmodule
