`timescale 1ns/1ns
`include "lab5p1.v"

module lab5p1_tb;
reg [1:4]w;
wire f;
lab5p1 vvt(w,f);
initial begin
 
 $dumpfile("lab5p1_tb.vcd");
 $dumpvars(0,lab5p1_tb);

//0,1,2,4,6,9,12,14
 w=4'b0000;
#20
w=4'b0001;
#20
w=4'b0010;
#20
w=4'b0100;
#20
w=4'b0110;
#20
 w=4'b1001;
#20
 w=4'b1100;
#20
 w=4'b1110;
#20
  
  
  
 
 

 
 $display("Test complete");
 end
 endmodule
