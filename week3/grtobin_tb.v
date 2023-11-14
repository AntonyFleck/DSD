`timescale 1ns/1ns
`include "grtobin.v"

module grtobin_tb;
parameter n=16;
reg [n-1:0]G;
wire[n-1:0]B;
grtobin vvt(G,B);
initial begin
 
 $dumpfile("grtobin_tb.vcd");
 $dumpvars(0,grtobin_tb);
 
G=1;
#20
 
 G=2;
#20

 G=3;
#20
 
 G=4;
#20

 G=5;
#20

G=6;
#20 
 
 G=7;
#20
 
 G=8;
#20
G=9;
#20
G=10;
#20
G=11;
#20
G=12;
#20
G=13;
#20
G=14;
#20
G=15;
#20


 


 
 $display("Test complete");
 end
 endmodule
