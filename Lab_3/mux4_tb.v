`timescale 1ns/1ns
`include "mux4.v"

module mux4_tb();
reg w0,w1,w2,w3,s0,s1;
wire f;
integer i;

mux4 hey(w0,w1,w2,w3,s0,s1,f);
initial
begin 
	$dumpfile("mux4_tb.vcd");
	$dumpvars(0,mux4_tb);
	
for(i=0;i<64;i=i+1) 
begin
{s0,s1,w0,w1,w2,w3}=i;#20;
end

	$display("Test Complete");
	
end
endmodule


	

	

