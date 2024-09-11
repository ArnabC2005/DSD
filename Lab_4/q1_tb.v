`timescale 1ns/1ns
`include "q1.v"

module q1_tb();

reg [1:0]w;
reg En;
wire [0:3]f;

q1 hey(w,f,En);
initial
begin
$dumpfile("q1_tb.vcd");
$dumpvars(0,q1_tb);
w=0; En=0;
#20;
w=1;En=0;
#20;
w=2; En=0;
#20;
w=3; En=0;
#20;
	$display("Test Complete");
end
endmodule


