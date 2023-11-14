`include"mux4.v"
module lab5p1(w,f);
input[1:4]w;
output f;
wire[3:0]m;
assign m[0]=~(w[3]&w[4]) ;
assign m[1]=~ w[4];
assign m[2]=~w[3]&w[4];
assign m[3]=~w[4] ;
mux4 st0 (w[1:2],m,f);
endmodule
