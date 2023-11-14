module q2(b,c,d,e);
input c,b,d;
output e;
assign e=(((~c)&b)|((~d)&c));
endmodule
