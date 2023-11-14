`timescale 1ns/1ns
`include "q3.v" //name of the verilog file
module q3_tb ;
reg [3:0] x,y;
reg k;
wire [3:0] s;
wire cout;

q3 ex(x,y,k,s,cout); //installation of the module 
initial 
begin 
$dumpfile("q3_tb.vcd");
$dumpvars(0,q3_tb);

x=4'b1001 ;y=4'b0001;k=1'b0;#20;
x=4'b1001 ;y=4'b0001;k=1'b0;#20;
x=4'b1011 ;y=4'b0001;k=1'b0;#20;
x=4'b1010 ;y=4'b0100;k=1'b0;#20;

$display("test completed");
end 
endmodule
