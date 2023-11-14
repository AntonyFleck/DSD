module q2(i,clk,a);
parameter n=8;
input [n-1:0]i;
input clk;
output reg [n-1:0]a;
always@(posedge clk)
begin
a<=i;
end 
endmodule
