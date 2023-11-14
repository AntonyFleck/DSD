`timescale 1ns/1ns
`include "q2.v" //name of the verilog file
module q2_tb ;
reg a,b,cin;
wire sum,cout;
q2 ex(a,b,cin,sum,cout); //installation of the module 
initial 
begin 
$dumpfile("q2_tb.vcd");
$dumpvars(0,q2_tb);

a=1'b0;b=1'b0;cin=1'b0;#20;
a=1'b0;b=1'b0;cin=1'b1;#20;
a=1'b0;b=1'b1;cin=1'b0;#20;
a=1'b0;b=1'b1;cin=1'b1;#20;
a=1'b1;b=1'b0;cin=1'b0;#20;
a=1'b1;b=1'b0;cin=1'b1;#20;
a=1'b1;b=1'b1;cin=1'b0;#20;
a=1'b1;b=1'b1;cin=1'b1;#20;


$display("test completed");
end 
endmodule
