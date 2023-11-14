`timescale 1ns/1ns
`include "lab5p3.v"

module lab5p3_tb;
reg [3:0]w;
wire f;
lab5p3 vvt(w,f);
initial begin
 
 $dumpfile("lab5p3_tb.vcd");
 $dumpvars(0,lab5p3_tb);

w=4'b0000 ;
#20
w=4'b0001 ;
#20
w=4'b0010 ;
#20
w=4'b0011 ;
#20
w=4'b0100 ;
#20
w=4'b0101 ;
#20
w=4'b0110;
#20
w=4'b0111 ;
#20
w=4'b1000 ;
#20
w=4'b1001 ;
#20
w=4'b1010 ;
#20
w=4'b1011 ;
#20
w=4'b1100 ;
#20
w=4'b1101 ;
#20
w=4'b1110;
#20
w=4'b1111 ;
#20
 

 
 $display("Test complete");
 end
 endmodule
