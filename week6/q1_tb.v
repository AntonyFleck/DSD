

`timescale 1ns/1ns
`include "q1.v"

module q1_tb();
reg d,clk,reset;
wire q;

q1 dFFq(d,clk,reset,q);
always #20 clk = ~clk;
initial
begin
    $dumpfile("q1_tb.vcd");
    $dumpvars(0,q1_tb);
    clk = 0;
    #80 $finish;
end
initial
begin
    d=1; reset=1;#10;
    d=1; reset=0;#20;
    d=1; reset=1;#10;
    d=0; reset=1;#10;
    d=1; reset=0;#20;
    d=0; reset=0;#10;
    $display("Test complete");
end
endmodule
