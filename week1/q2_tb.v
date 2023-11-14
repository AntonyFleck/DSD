`timescale 1ns/1ns
`include "q2.v" //name of the verilog file
module q2_tb ;
reg b,c,d;
wire e;
q2 ex(b,c,d,e); //installation of the module 
initial 
begin 
$dumpfile("q2_tb.vcd");
$dumpvars(0,q2_tb);
b=1'b0;c=1'b0;d=1'b0;#20;
b=1'b0;c=1'b0;d=1'b1;#20;
b=1'b0;c=1'b1;d=1'b0;#20;
b=1'b0;c=1'b1;d=1'b1;#20;
b=1'b1;c=1'b0;d=1'b0;#20;
b=1'b1;c=1'b0;d=1'b1;#20;
b=1'b1;c=1'b1;d=1'b0;#20;
b=1'b1;c=1'b1;d=1'b1;#20;

$display("test completed");
end 
endmodule
