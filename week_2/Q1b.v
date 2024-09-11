module Q1b(a,b,c,d,f);
input a,b,c,d;
output f;
assign f=(~a&(~c)&(~d))|(a&b&(~c))|(c&(~d))|(~a&b&c);
endmodule
