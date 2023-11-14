`timescale 1ns/1ns
`include "q2.v"
module q2_tb();
reg t,clk,reset;
wire q;

q2 uut(t,clk,reset,q);
always #20 clk = ~clk;
initial
begin
    $dumpfile("q2_tb.vcd");
    $dumpvars(0,q2_tb);
    clk = 1;
    #110 $finish;
end
initial
begin
    t=1; reset=0;#20;
    t=1; reset=1;#20;
    t=1; reset=0;#10;
    t=0; reset=0;#20;
    t=1; reset=1;#10;
    t=0; reset=1;#30;
    $display("Test complete");
end
endmodule
