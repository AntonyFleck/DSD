module fulladder(x,y,cin,s,cout);
input x,y,cin;
output s,cout;
assign s=x^y^cin;
assign cout=(x&y)|(cin&y)|(x&cin);
endmodule
module addsub(x,y,cin,s,cout);
input[3:0]x;
input cin;
input[3:0]y;

output[3:0]s;
output cout;
wire[3:1]c;
wire[3:0]b;
assign b[0]=(y[0]^cin);
assign b[1]=(y[1]^cin);
assign b[2]=(y[2]^cin);
assign b[3]=(y[3]^cin);
fulladder St1(x[0],b[0],cin,s[0],c[1]);
fulladder St2(x[1],b[1],c[1],s[1],c[2]);
fulladder St3(x[2],b[2],c[2],s[2],c[3]);
fulladder St4(x[3],b[3],c[3],s[3],cout);
endmodule
