`timescale 1ns/1ns
`include "q3.v" //name of the verilog file
module q3_tb ;
reg a,b,c,d;
wire e;
q3 ex(a,b,c,d,e); //installation of the module 
initial 
begin 
$dumpfile("q3_tb.vcd");
$dumpvars(0,q3_tb);
a=1'b0;b=1'b0;c=1'b0;d=1'b0;#20;
a=1'b0;b=1'b0;c=1'b0;d=1'b1;#20;
a=1'b0;b=1'b0;c=1'b1;d=1'b0;#20;
a=1'b0;b=1'b0;c=1'b1;d=1'b1;#20;
a=1'b0;b=1'b1;c=1'b0;d=1'b0;#20;
a=1'b0;b=1'b1;c=1'b0;d=1'b1;#20;
a=1'b0;b=1'b1;c=1'b1;d=1'b0;#20;
a=1'b0;b=1'b1;c=1'b1;d=1'b1;#20;

a=1'b1;b=1'b0;c=1'b0;d=1'b0;#20;
a=1'b1;b=1'b0;c=1'b0;d=1'b1;#20;
a=1'b1;b=1'b0;c=1'b1;d=1'b0;#20;
a=1'b1;b=1'b0;c=1'b1;d=1'b1;#20;
a=1'b1;b=1'b1;c=1'b0;d=1'b0;#20;
a=1'b1;b=1'b1;c=1'b0;d=1'b1;#20;
a=1'b1;b=1'b1;c=1'b1;d=1'b0;#20;
a=1'b1;b=1'b1;c=1'b1;d=1'b1;#20;

$display("test completed");
end 
endmodule
