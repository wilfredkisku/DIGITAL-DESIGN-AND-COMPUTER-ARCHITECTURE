module HalfAdder(
  input   clock,
  input   reset,
  input   io_a,
  input   io_b,
  output  io_sum,
  output  io_carry
);
  assign io_sum = io_a ^ io_b; // @[cmd4.sc 9:24]
  assign io_carry = io_a & io_b; // @[cmd4.sc 10:24]
endmodule
