`timescale 1ns/1ns
`include "q4.v"

module q4_tb();
reg S,R,clk,reset;
wire Q;

q4 u(Q,S,R,clk,reset);
initial
begin
    $dumpfile("q4_tb.vcd");
    $dumpvars(0,q4_tb);
    clk = 1'b1;
    forever#10 clk=~clk;
end
initial
begin
    S=0;R=0;reset=0;#10;
    S=0;R=0;reset=1;#20;
    S=0;R=1;reset=0;#20;
    S=0;R=1;reset=1;#20;
    S=1;R=0;reset=0;#20;
    S=1;R=0;reset=1;#20;
    S=1;R=1;reset=0;#10;
    S=1;R=1;reset=1;#10;
$finish;
end
endmodule
