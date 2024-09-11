`timescale 1ns/1ns
`include "reg4bit.v"
module reg4bit_tb();
reg[3:0]I;
reg clk;
wire [3:0]A;
reg4bit a1(I,clk, A);
initial
begin
clk=0;
forever #20 clk=~clk;
end
initial
begin
	$dumpfile("reg4bit_tb.vcd");
	$dumpvars(0,reg4bit_tb);
	I=12; #20;
	I=8; #20;
	$display("Test Complete");
end
endmodule
