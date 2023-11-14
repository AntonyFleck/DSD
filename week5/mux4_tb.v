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

s=2'b00; 
w=4'b1110;
#20
 
 s=2'b01; 
 w=4'b0011;
#20
 
 s=2'b10; 
 w=4'b0111;
#20
 
 s=2'b11; 
 w=4'b0100;
#20
 
 s=2'b00; 
 w=4'b0001;
#20
 
 s=2'b01; 
w=4'b0101;
#20
 
 s=2'b10; 
 w=4'b1010;
#20
 
 s=2'b11; 
 w=4'b1001;
#20
 

 
 $display("Test complete");
 end
 endmodule
