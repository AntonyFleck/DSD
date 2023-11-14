`timescale 1ns/1ns
`include "lab5p4.v"

module lab5p4_tb;
reg [2:0]w;
wire f;
lab5p4 vvt(w,f);
initial begin
 
 $dumpfile("lab5p4_tb.vcd");
 $dumpvars(0,lab5p4_tb);

w=3'b000 ;#20
w=3'b001 ;#20
w=3'b010 ;#20
w=3'b011 ;#20
w=3'b100 ;#20
w=3'b101 ;#20
w=3'b110 ;#20
w=3'b111 ;#20
 

 
 $display("Test complete");
 end
 endmodule
