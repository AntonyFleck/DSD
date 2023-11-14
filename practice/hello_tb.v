`timescale 1ns/1ns
`include "hello.v" //name of the verilog file
module hello_tb ;
reg a,b;
wire c;
hello uut(a,b,c); //installation of the module 
initial 
begin 
$dumpfile("hello_tb.vcd");
$dumpvars(0,hello_tb);
a=0;
b=0;
#20;
a=0;b=1;#20;
a=1;b=0;#20;
a=1;b=1;#20;
$display("test completed");
end 
endmodule
