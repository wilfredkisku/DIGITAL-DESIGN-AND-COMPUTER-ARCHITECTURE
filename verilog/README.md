### wire Elements (Combinational logic)
wire elements are simple wires (or busses of arbitrary width) in Verilog designs. The following are syntax
rules when using wires:

1. wire elements are used to connect input and output ports of a module instantiation together with
some other element in your design.
1. wire elements are used as inputs and outputs within an actual module declaration.
1. wire elements must be driven by something, and cannot store a value without being driven.
1. wire elements cannot be used as the left-hand side of an = or <= sign in an always@ block.
1. wire elements are the only legal type on the left-hand side of an assign statement.
1. wire elements are a stateless way of connecting two peices in a Verilog-based design.
1. wire elements can only be used to model combinational logic.
