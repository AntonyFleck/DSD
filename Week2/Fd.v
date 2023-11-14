module Fd(a,b,c,d,f);
input a,b,c,d;
output f;
wire p;
assign p=c^d;
assign f=(a&p)|(b&(~p));
endmodule


