module q1(a,b,c,d,f);
input a,b,c,d;
output f;

wire g,h;
assign g=(a&b);
assign h=(c|d);

assign f=(~h&(~g))|(g&h);

endmodule
