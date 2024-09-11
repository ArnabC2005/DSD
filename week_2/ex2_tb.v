`timescale 1ns/1ns
`include "ex2.v"

module ex2_tb();
reg x1,x2,x3;
wire f;
ex2 hey(x1,x2,x3,f);
initial 
begin

	$dumpfile("ex2_tb.vcd");
	$dumpvars(0,ex2_tb);
	
	x1=1'b0; x2=1'b0; x3=1'b0;
#20;
x1=1'b0; x2=1'b0; x3=1'b1;
#20;
x1=1'b0; x2=1'b1; x3=1'b0;
#20;
x1=1'b0; x2=1'b1; x3=1'b1;
#20;
x1=1'b1; x2=1'b0; x3=1'b0;
#20;
x1=1'b1; x2=1'b0; x3=1'b1;
#20;
x1=1'b1; x2=1'b1; x3=1'b0;
#20;
x1=1'b1; x2=1'b1; x3=1'b1;
#20;

	$display("Test Complete");
end
endmodule
