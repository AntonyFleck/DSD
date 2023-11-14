`timescale 1ns/1ns
`include "mux4.v"

module mux4_tb;
reg [1:0]s;
reg[3:0]w;
wire f;
mux4 vvt(s,w,f);
initial begin
 
 $dumpfile("mux4_tb.vcd");
 $dumpvars(0,mux4_tb);

s=0; 
w=4'b1010;
#20
 
 s=1; 
 w=4'b1010;
#20
 
 s=2; 
 w=4'b1010;
#20
 
 s=3; 
 w=4'b1010;
#20
 
 

 
 $display("Test complete");
 end
 endmodule
