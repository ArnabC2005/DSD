`include "mux4to1.v"
module q1(a,b,c,d,f);
input a,b,c,d;
output f;
wire i0,i1,i2,i3;

assign io=(~(c & d));
assign i1=(~d);
assign i2=(~c&d);
assign i3=(~d);

mux4to1 func(i0,i1,i2,i3,a,b,f);

endmodule
