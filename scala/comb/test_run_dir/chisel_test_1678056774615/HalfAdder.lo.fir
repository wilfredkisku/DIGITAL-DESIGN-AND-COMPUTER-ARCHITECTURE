circuit HalfAdder :
  module HalfAdder :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    output io_sum : UInt<1>
    output io_carry : UInt<1>

    node xorResult = xor(io_a, io_b) @[cmd4.sc 9:24]
    node andResult = and(io_a, io_b) @[cmd4.sc 10:24]
    io_sum <= xorResult @[cmd4.sc 12:10]
    io_carry <= andResult @[cmd4.sc 13:12]
