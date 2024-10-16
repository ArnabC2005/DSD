module ex2(clk, reset, x, state);
  input clk, reset, x;
  output reg [1:0] state;
  reg [1:0] next_state;

  // T Flip-Flop behavior
  always @(posedge clk or posedge reset) begin
    if (reset) state <= 2'b00;
    else state <= next_state;
  end

  always @(state or x) begin
    case (state)
      2'b00: if (x) next_state = 2'b11; else next_state = 2'b01; // 00 to 11 or 01
      2'b01: if (x) next_state = 2'b10; else next_state = 2'b00; // 01 to 10 or 00
      2'b10: if (x) next_state = 2'b10; else next_state = 2'b11; // 10 to 10 or 11
      2'b11: if (x) next_state = 2'b01; else next_state = 2'b00; // 11 to 01 or 00
      default: next_state = 2'b00; // default reset state
    endcase
  end
endmodule

