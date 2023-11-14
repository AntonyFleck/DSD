module q3(i,s,clk,inp,a);
input[3:0]i;
input[1:0]s;
input inp,clk;
integer k;
output reg[3:0]a;
always@(posedge clk)begin
if(s==2'b00)begin
for(k=3;k>0;k=k-1)begin
a[k]<=i[k-1];
end
a[0]<=inp;
end
else if(s==2'b01)begin
a<=i;
end
end
endmodule
