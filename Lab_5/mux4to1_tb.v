`timescale 1ns/1ns
`include "mux4to1.v"

module mux4to1_tb();
reg w1,w2,w3,w4,s1,s2;
wire f;
integer i;

mux4to1 hey(w1,w2,w3,w4,s1,s2,f);
initial
begin 
	$dumpfile("mux4to1_tb.vcd");
	$dumpvars(0,mux4to1_tb);
	
for(i=0;i<64;i=i+1) 
begin
{s1,s2,w1,w2,w3,w4}=i;#20;
end

	$display("Test Complete");
	
end
endmodule


	

	

