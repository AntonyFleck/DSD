module priority16to4(w,y,z);
input[15:0]w;
output reg[3:0]y;
output reg z;
integer k;
always @(w)begin
y=4'bx;
z=0;
for(k=0;k<=15;k=k+1)
begin
if(w[k]==1)
begin
y=k;
z=1;
end 
end 
end 
endmodule
