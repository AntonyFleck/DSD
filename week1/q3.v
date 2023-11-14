module q3(a,b,c,d,e);
input a,c,b,d;
output e;
assign e=((c|d)&(b|c)&(~a|~b|~c|~d));
endmodule
