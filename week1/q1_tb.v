`timescale 1ns/1ns
`include "q1.v" //name of the verilog file
module q1_tb ;
reg a,b,c;
wire e;
q1 ex(a,b,c,e); //installation of the module 
initial 
begin 
$dumpfile("q1_tb.vcd");
$dumpvars(0,q1_tb);
a=1'b0;b=1'b0;c=1'b0;#20;
a=1'b0;b=1'b0;c=1'b1;#20;
a=1'b0;b=1'b1;c=1'b0;#20;
a=1'b0;b=1'b1;c=1'b1;#20;
a=1'b1;b=1'b0;c=1'b0;#20;
a=1'b1;b=1'b0;c=1'b1;#20;
a=1'b1;b=1'b1;c=1'b0;#20;
a=1'b1;b=1'b1;c=1'b1;#20;

$display("test completed");
end 
endmodule
