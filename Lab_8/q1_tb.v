`timescale 1ns/1ns
`include "q1.v"
module q1_tb();
  reg x, clk, reset;
  wire [2:0] state;
  wire out;
 q1 uut (x, clk, reset, state, out);

  initial clk = 0;
  always #10 clk = ~clk;

  initial begin
    $dumpfile("q1_tb.vcd");
    $dumpvars(0, q1_tb);
    reset = 1; x = 0;
    #20 reset = 0; x = 1;
    #20 x = 0;
    #20 x = 1;
    #20 x = 0;
    #20 x = 1;
    #20 
$display("Test Complete");    
$finish;
  end
endmodule

