`timescale 1ns/1ns
`include "priority16to4.v"
module priority16to4_tb;
reg[15:0]w;
wire[3:0]y;
wire z;
priority16to4 uut(w,y,z);
initial begin
$dumpfile("priority16to4_tb.vcd");
$dumpvars(0,priority16to4_tb);
w=16'b1110000010001010;
#20
w=16'b0110000010001010;
#20
w=16'b0010000010001010;
#20
w=16'b0000000010001010;
#20
w=16'b0000000000001010;
#20
$display("Test complete");
end
endmodule
