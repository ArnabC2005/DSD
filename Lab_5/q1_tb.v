`timescale 1ns/1ns
`include "q1.v"

module q1_tb();

reg io,i1,i2,i3,a,b;
wire f;

integer i;

q1 hey(a,b,c,d,f);

initial
begin

$dumpfile("q1_tb.vcd");
	$dumpvars(0,q1_tb);
	
for(i=0;i<64;i=i+1) 
begin
{a,b,io,i1,i2,i3}=i;#20;
end

	$display("Test Complete");
	
end
endmodule

