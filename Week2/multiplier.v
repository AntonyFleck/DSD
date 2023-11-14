module four(x,y,cin,s,cout);
input x,y,cin;
output s,cout;
assign s=x^y^cin;
assign cout=(x&y)|(cin&y)|(x&cin);
endmodule
module multiplier(m,q,p);
input[2:0]m,q;
output[5:0]p;
wire[3:1]c0,c1;
wire[1:0]s;
wire zero_bit;
assign zero_bit=0;
assign p[0]=(m[0]&q[0]);
four h1((m[0]&q[1]),(m[1]&q[0]),zero_bit,p[1],c0[1]);
four h2((m[1]&q[1]),(m[2]&q[0]),c0[1],s[0],c0[2]);
four h3((m[0]&q[1]),zero_bit,c0[2],s[1],c0[3]);
four h4((m[0]&q[2]),s[0],zero_bit,p[2],c1[1]);
four h5((m[1]&q[2]),s[1],c1[1],p[3],c1[2]);
four h6((m[2]&q[2]),c0[3],c1[2],p[4],c1[3]);
endmodule
