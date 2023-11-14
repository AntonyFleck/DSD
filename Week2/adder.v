module adder(x,y,cin,S,cout);
input s,x,y,cin;
output S,cout;
assign S=x^y^cin;
assign cout=(x&y)|(cin&y)|(x&cin);
endmodule

