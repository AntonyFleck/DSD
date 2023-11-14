module mux16(s,w,f);
input[3:0]s;
input[15:0]w;
wire[1:0]i;
output f;
mux8 st0 (s[2:0],w[7:0],i[0]);
mux8 st1 (s[2:0],w[15:8],i[1]);
mux2 st2 (s[3],i,f);
endmodule


module mux8(s,w,f);
input[2:0]s;
input[7:0]w;
output reg f;
always @(s,w)begin
 case(s)
 0:begin
 f=w[0];
 end
 
 1:begin
 f=w[1];
 end
 
 2:begin
 f=w[2];
 end
 
 3:begin
 f=w[3];
 end
 
 4:begin
 f=w[4];
 end
 
 5:begin
 f=w[5];
 end
 
 6:begin
 f=w[6];
 end
 
 7:begin
 f=w[7];
 end
 
 default:begin
 f=0;
 end
 endcase
end 
endmodule
 
 module mux2(s,w,f);
input s;
input[1:0]w;
output reg f;
always @(s or w)
begin
 f=s?w[1]:w[0];
 end
 endmodule
 
 
 
