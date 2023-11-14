`timescale 1ns/1ns
`include "l10q2.v"
module l10q2_tb;
reg clk,reset;
wire [2:0]A;
l10q2 c00(A,clk,reset);
initial begin
	clk=0;
	forever #10 clk=~clk;
end

initial begin
	$dumpfile("l10q2_tb.vcd");
	$dumpvars(0, l10q2_tb);
	reset=0; #20;
	reset=1; #200;
	$finish;
end
endmodule
