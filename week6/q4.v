module q4(Q,S,R,clk,reset);
input S,R,clk,reset;
output reg Q;
always@(negedge clk)
begin
if(reset==1'b0)
Q<=1'b0;
else if(S==0&&R==1)
Q<=1'b0;
else if(S==1&&R==0)
Q<=1'b1;
end
endmodule
