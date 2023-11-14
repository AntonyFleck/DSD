`timescale 1ns/1ns
`include "addsub.v"

module addsub_tb;
reg [3:0]x,y;
reg cin;
wire [3:0]s;
wire cout;
addsub h1(x,y,cin,s,cout);
initial begin
 
 $dumpfile("addsub_tb.vcd");
 $dumpvars(0,addsub_tb);
 
 x=3;
 y=5;
 cin=0;
 #20;
 
 x=15;
 y=5;
 cin=1;
 #20;
 
 x=3;
 y=10;
 cin=1;
 #20;
 
 x=1;
 y=7;
 cin=0;
 #20;
 
 x=1;
 y=7;
 cin=1;
 #20;
 

 x=6;
 y=3;
 cin=0;
 #20;
 

 x=7;
 y=7;
 cin=1;
 #20;
 
 $display("Test complete");
 end
 endmodule
