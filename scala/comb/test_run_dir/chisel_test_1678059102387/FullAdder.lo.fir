circuit FullAdder :
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

  module ORGate :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    output io_out : UInt<1>

    node _io_out_T = or(io_a, io_b) @[cmd9.sc 11:18]
    io_out <= _io_out_T @[cmd9.sc 11:10]

  module FullAdder :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_cin : UInt<1>
    output io_sum : UInt<1>
    output io_cout : UInt<1>

    inst halfAdder1 of HalfAdder @[cmd9.sc 23:26]
    inst halfAdder2 of HalfAdder @[cmd9.sc 24:26]
    inst orGate of ORGate @[cmd9.sc 25:22]
    io_sum <= halfAdder2.io_sum @[cmd9.sc 34:10]
    io_cout <= orGate.io_out @[cmd9.sc 35:11]
    halfAdder1.clock <= clock
    halfAdder1.reset <= reset
    halfAdder1.io_a <= io_a @[cmd9.sc 27:19]
    halfAdder1.io_b <= io_b @[cmd9.sc 28:19]
    halfAdder2.clock <= clock
    halfAdder2.reset <= reset
    halfAdder2.io_a <= halfAdder1.io_sum @[cmd9.sc 29:19]
    halfAdder2.io_b <= io_cin @[cmd9.sc 30:19]
    orGate.clock <= clock
    orGate.reset <= reset
    orGate.io_a <= halfAdder1.io_carry @[cmd9.sc 31:15]
    orGate.io_b <= halfAdder2.io_carry @[cmd9.sc 32:15]
