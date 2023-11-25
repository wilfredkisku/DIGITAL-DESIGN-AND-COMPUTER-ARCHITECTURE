### Module definitions and instances

The module is the basic logic entity in Verilog.

A module definition is delimited by the keywords module and endmodule, as shown in the example below.

The module header consists of the module keyword, the name of the module, and the port list in parenthesis, followed by a semicolon:
module d_latch (d, q, qbar, wen);

Following the module header are the port declarations.  Ports may be of type input, output, or inout, for input, output, or bidirectional ports.  Ports may be either scalar or vector.  The port names in the declarations do not have to occur in the same order as they did in the port list.

The body of the module (consisting of wire and reg declarations and module instances) follow the port declarations.
Here is an example of a module definition for a gated D-latch:

```
// GATED D LATCH
module d_latch (d, q, qbar, wen);
   input d, wen;
   output q, qbar;

   wire dbar, r, s;

   inv1$ inv1 (dbar, d);
   nand2$ nand1 (s, d, wen);
   nand2$ nand2 (r, dbar, wen);

   nand2$ nand3 (q, s, qbar);
   nand2$ nand4 (qbar, r, q);

endmodule
```

### Parameterized Module definitions

In Verilog, parameters are static values and are not associated with any specific data type like registers or nets.

A constant expression in Verilog denotes a fixed numerical value or a parameter defined earlier. It's important to note that parameter values cannot be altered during runtime, although the defparam statement allows for modifications at compilation time.

The defparam statement specifically operates during compilation, enabling the adjustment of parameter values. This can be achieved by utilizing the # delay specification in conjunction with module instantiation.

In Verilog, there are two approaches for altering a module's parameter value when instantiating the module.

### wire Elements (Combinational logic)
```wire``` elements are simple wires (or busses of arbitrary width) in Verilog designs. The following are syntax
rules when using wires:

1. ```wire``` elements are used to connect input and output ports of a module instantiation together with
some other element in your design.
1. ```wire``` elements are used as inputs and outputs within an actual module declaration.
1. ```wire``` elements must be driven by something, and cannot store a value without being driven.
1. ```wire``` elements cannot be used as the left-hand side of an = or <= sign in an always@ block.
1. ```wire``` elements are the only legal type on the left-hand side of an assign statement.
1. ```wire``` elements are a stateless way of connecting two peices in a Verilog-based design.
1. ```wire``` elements can only be used to model combinational logic.

```
wire A , B , C , D , E ; // simple 1 -bit wide wires
wire [8:0] Wide ; // a 9 -bit wide wire
reg I ;

assign A = B & C ; // using a wire with an assign statement

always @ ( B or C ) begin
  I = B | C ; // using wires on the right - hand side of an always@ assignment
end

mymodule mymodule_instance (. In ( D ) , Out ( E ) ); // using a wire as the output of a module
```
### reg Elements (Combinational and Sequential logic)
```reg``` are similar to wires, but can be used to store information (‘state’) like registers. The following are
syntax rules when using reg elements.
1. ```reg``` elements can be connected to the input port of a module instantiation.
2. ```reg``` elements cannot be connected to the output port of a module instantiation.
3. ```reg``` elements can be used as outputs within an actual module declaration.
4. ```reg``` elements cannot be used as inputs within an actual module declaration.
5. ```reg``` is the only legal type on the left-hand side of an always@ block = or <= sign.
6. ```reg``` is the only legal type on the left-hand side of an initial block = sign (used in Test Benches).
7. ```reg``` cannot be used on the left-hand side of an assign statement.
8. ```reg``` can be used to create registers when used in conjunction with always@(posedge Clock) blocks.
9. ```reg``` can, therefore, be used to create both combinational and sequential logic.
