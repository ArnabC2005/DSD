module reg4bit(I,clk, A);
input [3:0]I;
input clk;
output[3:0]A;

dffp s1(I[3],clk, A[3]);
dffp s2(I[2],clk, A[2]);
dffp s3(I[1],clk, A[1]);
dffp s4(I[0],clk, A[0]);
endmodule

module dffp(D, Clock, Q);
input D, Clock;
output Q;
reg Q;
always @(posedge Clock)
Q<=D;
endmodule

