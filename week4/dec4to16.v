`include"dec2to4.v"
module dec4to16(w,y,en);
input[3:0]w;
input en;
output[0:15]y;
wire [0:3]m;
dec2to4 st0 (w[3:2],m,en);
dec2to4 st1 (w[1:0],y[0:3],m[0]);
dec2to4 st2 (w[1:0],y[4:7],m[1]);
dec2to4 st3 (w[1:0],y[8:11],m[2]);
dec2to4 st4 (w[1:0],y[12:15],m[3]);
endmodule
