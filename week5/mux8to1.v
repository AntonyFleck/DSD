module mux8to1(s,w,f);
input[2:0]s;
input[0:7]w;
output reg f;
always @(s,w)begin
if(s==0)
f=w[0];
else if(s==1)
f=w[1];
else if(s==2)
f=w[2];
else if(s==3)
f=w[3];
end 
endmodule
