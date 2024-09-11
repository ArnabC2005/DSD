`timescale 1ns/1ns
`include "dec2to4.v"
module dec2to4_tb();
reg[1:0]w;
reg En;
wire[0:3]f;
dec2to4 ex2(w,f,En);
initial 
begin
$dumpfile("dec2to2_tb.vcd");
$dumpvars(0,dec2to4_tb);
w=0; En=1;
#20;
w=1;En=1;
#20;
w=2; En=1;
#20;
w=3; En=1;
#20;
	$display("Test Complete");
end
endmodule
