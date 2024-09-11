`timescale 1ns/1ns
`include "flipflop.v"

module flipflop_tb();
    reg D, Clock, Resetn;
    wire Q;

    flipflop f1(D, Clock, Resetn, Q);

    // Clock generation
    initial begin
        Clock = 0;
        forever #20 Clock = ~Clock;
    end

    // Dump variables
    initial begin
        $dumpfile("flipflop_tb.vcd");
        $dumpvars(0, flipflop_tb);
    end

    // Test sequence
    initial begin
        D = 1; Resetn = 1;
        #20;
        D = 1; Resetn = 0; // Apply reset
        #20;
        D = 0; Resetn = 1; // Release reset and apply new data
        #20;
        D = 1; Resetn = 1;
        #20;
        $display("Test Complete");
        $finish; // End the simulation
    end
endmodule

