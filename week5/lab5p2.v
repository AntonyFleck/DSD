module mux8to1(s,w,f);
input[2:0]s;
input[0:7]w;
output reg f;
always @(s,w)begin
case (s)
0:begin
f=w[0];
end
1:begin
f=w[1];
end
2:begin
f=w[2];
end
3:begin
f=w[3];
end
4:begin
f=w[4];
end
5:begin
f=w[5];
end
6:begin
f=w[6];
end
7:begin
f=w[7];
end
default:begin
f=0;
end
endcase
end
endmodule
module lab5p2(g,b);
input[3:0]g;
output[3:0]b;
wire[0:7]m3,m2,m1,m0;
assign m3=8'b00001111;
assign m2=8'b00111100;
assign m1=8'b01101001;
assign m0={g[0],~g[0],~g[0],g[0],~g[0],g[0],g[0],~g[0]};
mux8to1 st0 (g[3:1],m3,b[3]);
mux8to1 st1 (g[3:1],m2,b[2]);
mux8to1 st2  (g[3:1],m1,b[1]);
mux8to1 st3 (g[3:1],m0,b[0]);
endmodule
