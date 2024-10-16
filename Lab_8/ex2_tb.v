`timescale 1ns/1ns
`include "ex2.v"
module ex2_tb();
  reg clk, reset, x;
  wire [1:0] state;
  
ex2 uut (clk, reset, x, state);

  initial clk = 0;
  always #10 clk = ~clk;

  initial begin
    $dumpfile("ex2_tb.vcd");
    $dumpvars(0, ex2_tb);
    reset = 1; x = 0;
    #20 reset = 0; x = 1; #20;
    x = 0; #20;
    x = 1; #20;
    x = 0; #20;
    x = 1; #20;
    x = 0; #20;
    $display("Test Complete");
    $finish;
  end
endmodule

