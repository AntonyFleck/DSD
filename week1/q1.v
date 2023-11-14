module q1(a,b,c,e);
input a,b,c;
output e;
assign e=((c)|(a&(~b)));
endmodule
