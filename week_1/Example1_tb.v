`timescale 1ns/1ns
`include "Example1.v"  //verilog file
module Example1_tb();
	reg x1,x2,x3;	//inputs
	wire f;		//output
Example1_tb Example1(x1,x2,x3,f);
initial
begin
	$dumpfile("Example1_tb.vcd");
	$dumpvars(0,Example1_tb);
x1=1'b0;x2=1'b0;x3=1'b0;
#20;
x1=1'b0;x2=1'b0;x3=1'b1;
#20;
x1=1'b0;x2=1'b1;x3=1'b0;
#20;
x1=1'b1;x2=1'b0;x3=1'b0;
#20;
x1=1'b0;x2=1'b1;x3=1'b1;
#20;
x1=1'b1;x2=1'b0;x3=1'b1;
#20;
x1=1'b1;x2=1'b1;x3=1'b0;
#20;
x1=1'b1;x2=1'b1;x3=1'b1;
#20;
$display("test complete");
end 
endmodule
