module q1(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=(a&(c^d))|(b&(c^~d));
endmodule




