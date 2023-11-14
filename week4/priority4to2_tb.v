`timescale 1ns/1ns
`include "priority4to2.v"
module priority4to2_tb;
reg [3:0]w;
wire [1:0]y;
wire z;
priority4t02 uut(w,y,z);
initial begin 
$dumpfile("priority4to2_tb.vcd");
$dumpvars(0,priority4to2_tb);
w=4'b0000;#20;
w=4'b0001;#20;
w=4'b0101;#20;
w=4'b0110;#20;
w=4'b1001;#20;
w=4'b1010;#20;
w=4'b1110;#20;
$display("test completed");
end 
endmodule
