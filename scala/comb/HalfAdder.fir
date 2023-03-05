circuit HalfAdder :
  module HalfAdder :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip a : UInt<1>, flip b : UInt<1>, sum : UInt<1>, carry : UInt<1>}

    node xorResult = xor(io.a, io.b) @[cmd4.sc 9:24]
    node andResult = and(io.a, io.b) @[cmd4.sc 10:24]
    io.sum <= xorResult @[cmd4.sc 12:10]
    io.carry <= andResult @[cmd4.sc 13:12]

