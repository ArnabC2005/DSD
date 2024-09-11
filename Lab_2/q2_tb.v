`timescale 1ns/1ns
`include "q2.v"

module q2_tb();

reg a,b,cin;
wire s,co;

q2 hola(a,b,cin,s,co);

initial
begin

	$dumpfile("q2_tb.vcd");
	$dumpvars(0,q2_tb);
	
a=1'b0;b=1'b0;cin=1'b0;
#20;
a=1'b0;b=1'b0;cin=1'b1;
#20;
a=1'b0;b=1'b1;cin=1'b0;
#20;
a=1'b1;b=1'b0;cin=1'b0;
#20;
a=1'b0;b=1'b1;cin=1'b1;
#20;
a=1'b1;b=1'b0;cin=1'b1;
#20;
a=1'b1;b=1'b1;cin=1'b0;
#20;
a=1'b1;b=1'b1;cin=1'b1;
#20;

	$display("Test Complete");
	
end 
endmodule
