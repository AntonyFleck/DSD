`timescale 1ns/1ns
`include "Fd.v"

module Fd_tb;
reg a,b,c,d;
wire f;

Fd h1(a,b,d,c,f);
initial begin
 
 $dumpfile("Fd_tb.vcd");
 $dumpvars(0,Fd_tb);
 
 a=0;
 b=0;
 c=0;
 d=0;
 #20;
 
 a=0;
 b=0;
 c=0;
 d=1;
 #20;
 
 a=0;
 b=0;
 c=1;
 d=0;
 #20;
 
 a=0;
 b=0;
 c=1;
 d=1;
 #20;
 
 a=0;
 b=1;
 c=0;
 d=0;
 #20;
 
 a=0;
 b=1;
 c=0;
 d=1;
 #20;
 
 a=0;
 b=1;
 c=1;
 d=0;
 #20;
 
 a=0;
 b=1;
 c=1;
 d=1;
 #20;
 
 a=1;
 b=0;
 c=0;
 d=0;
 #20;
 
 a=1;
 b=0;
 c=0;
 d=1;
 #20;
 
 a=1;
 b=0;
 c=1;
 d=0;
 #20;
 
 a=1;
 b=0;
 c=1;
 d=1;
 #20;
 
 a=1;
 b=1;
 c=0;
 d=0;
 #20;
 
 a=1;
 b=1;
 c=0;
 d=1;
 #20;
 
 a=1;
 b=1;
 c=1;
 d=0;
 #20;
 
 a=1;
 b=1;
 c=1;
 d=1;
 #20;
  
 
 

 $display("Test complete");
 end
 endmodule
