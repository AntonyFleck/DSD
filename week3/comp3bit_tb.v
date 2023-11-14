`timescale 1ns/1ns
`include "comp3bit.v"

module comp3bit_tb;
reg [2:0]a,b;
wire g,l,e;
comp3bit vvt(a,b,e,g,l);
initial begin
 
 $dumpfile("comp3bit_tb.vcd");
 $dumpvars(0,comp3bit_tb);
 
a=6 ;
b=4 ;
#20

a= 3;
b= 5;
#20

a= 1;
b= 1;
#20

a= 7;
b= 2;
#20



 


 
 $display("Test complete");
 end
 endmodule
