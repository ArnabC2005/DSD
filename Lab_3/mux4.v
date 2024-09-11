`include "mux2to1.v"
module mux4(w0,w1,w2,w3,s0,s1,f);
input w0,w1,w2,w3,s0,s1;

output f;
wire t1, t2;

mux2to1 func(w0,w1,s0,t1);
mux2to1 func2(w0,w1,s0,t2);
mux2to1 func3(t1,t2,s1,f);

endmodule
