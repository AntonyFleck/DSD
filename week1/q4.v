module q4(a,b,c,d,e);
input a,c,b,d;
output e;
assign e=((~c|d)&(~a|d)&(a|~b|c|~d));
endmodule
