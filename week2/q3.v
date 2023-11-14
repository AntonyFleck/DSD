module q3(x,y,k,s,cout);
input [3:0]x,y;
input k;
output [3:0]s;
output cout;
wire [3:0]yk;
wire [3:1]c;
xor(yk[0],y[0],k);
xor(yk[1],y[1],k);
xor(yk[2],y[2],k);
xor(yk[3],y[3],k);
fa l0(x[0],yk[0],k,s[0],c[1]) ;
fa l1(x[1],yk[1],c[1],s[1],c[2]) ;
fa l2(x[2],yk[2],c[2],s[2],c[3]) ;
fa l3(x[3],yk[3],c[3],s[3],cout) ;
endmodule 

module fa(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
assign s=a^b^cin ;
assign cout=(a&b)|(b&cin)|(cin&a) ;
endmodule
