`timescale 1ns/1ns
`include "mux8to1.v"

module mux8to1_tb();
reg [7:0] d;
reg s0,s1,s2;

wire f;

mux8to1 func (
    .d(d),
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .f(f)
);

initial begin

	$dumpfile("mux8to1_tb.vcd");
    $dumpvars(0, mux8to1_tb);
    
    d = 8'b00000000; s0 = 0; s1 = 0; s2 = 0; #20;
    d = 8'b00000001; s0 = 0; s1 = 0; s2 = 0; #20;
    d = 8'b00000010; s0 = 1; s1 = 0; s2 = 0; #20;
    d = 8'b00000100; s0 = 0; s1 = 1; s2 = 0; #20;
    d = 8'b00001000; s0 = 1; s1 = 1; s2 = 0; #20;
    d = 8'b00010000; s0 = 0; s1 = 0; s2 = 1; #20;
    d = 8'b00100000; s0 = 1; s1 = 0; s2 = 1; #20;
    d = 8'b01000000; s0 = 0; s1 = 1; s2 = 1; #20;
    d = 8'b10000000; s0 = 1; s1 = 1; s2 = 1; #20;

    $display("Test Complete");
end

endmodule

