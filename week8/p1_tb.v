`timescale 1ns/1ns
`include "p1.v"

module p1_tb;
reg clk,x,reset;
wire y;
wire [2:0]L0;
p1 p(clk,x,y,reset,L0);
initial begin
	$dumpfile("p1_tb.vcd");
	$dumpvars(0,p1_tb);
	clk=0;
	forever #10 clk=~clk;
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
