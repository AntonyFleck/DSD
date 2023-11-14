`include "dec2to4.v"
module lab5p4(w,f);
input[2:0]w;
output f;
wire[0:7]m;
dec2to4 st0 (w[1:0],m[0:3],~w[2]);
dec2to4 st1 (w[1:0],m[4:7],w[2]);
assign f=m[3]|m[5]|m[6]|m[7];
endmodule

