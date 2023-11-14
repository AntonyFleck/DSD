`timescale 1ns/1ns
`include "q1.v"

module q1_tb;
reg Q, clk;
wire A;
  
q1 sr1(Q, clk, A);
initial begin
	$dumpfile("q1_tb.vcd");
	$dumpvars(0, q1_tb);
	clk = 0;
	forever #10 clk = ~clk;
end
initial begin
	Q = 0; #20;
	Q = 0; #20;
	Q = 0; #20;
	Q = 0; #20;
	Q = 0; #20;
	Q = 1; #20;
	Q = 0; #20;
	Q = 1; #20;
	Q = 0; #20;
	Q = 1; #20;
	Q = 0; #20;
	$display("Test Complete");
	$finish;
end
endmodule
   
