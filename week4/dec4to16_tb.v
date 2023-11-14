`timescale 1ns/1ns
`include "dec4to16.v"
module dec4to16_tb;
reg[3:0]w;
reg en;
wire[0:15]y;
dec4to16 uut(w,y,en);
initial begin
$dumpfile("dec4to16_tb.vcd");
$dumpvars(0,dec4to16_tb);
en=1;
w=4'b0000;
#20
en=1;
w=4'b0010;
#20
en=1;
w=4'b0100;
#20
en=1;
w=4'b0110;
#20
en=1;
w=4'b1000;
#20
en=1;
w=4'b1010;
#20
en=1;
w=4'b1100;
#20
en=1;
w=4'b1110;
#20
en=0;
w=4'b1111;
#20
$display("Test complete");
end
endmodule
