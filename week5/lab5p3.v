`include "dec2to4.v"
module dec4to16(w,y,en);
input[3:0]w;
input en;
output [0:15]y;
wire[0:3]m;
dec2to4 st0 (w[3:2],m,en);
dec2to4 st1 (w[1:0],y[0:3],m[0]);
dec2to4 st2 (w[1:0],y[4:7],m[1]);
dec2to4 st3 (w[1:0],y[8:11],m[2]);
dec2to4 st4 (w[1:0],y[12:15],m[3]);
endmodule
module lab5p3(w,f);
input[3:0]w;
wire[0:15]m;
output f;
dec4to16 st0(w,m,1'b1);
assign f=m[1]|m[4]|m[6]|m[8]|m[9]|m[13]|m[15];
endmodule
