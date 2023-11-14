`timescale 1ns/1ns
`include "multiplier.v"

module multiplier_tb;
reg cin;
reg[2:0]m,q;
wire [5:0]p;
multiplier h1(m,q,p);
initial begin
 
 $dumpfile("multiplier_tb.vcd");
 $dumpvars(0,multiplier_tb);
 
 m=1;
 q=7;
 #20;
 
 m=3;
 q=3;
 #20;
 
 m=4;
 q=1;
 #20;
 
 m=6;
 q=1;
 #20;
 
 m=7;
 q=7;
 #20;
 
 m=2;
 q=4;
 #20;
 
 m=0;
 q=3;
 #20;
 
 
 $display("Test complete");
 end
 endmodule
