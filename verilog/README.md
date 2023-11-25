## Consturcts 
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

```
module design_ip  
    #(parameter BUS_WIDTH=32,  
        parameter DATA_WIDTH=64)   
           (input [BUS_WIDTH-1:0] addr,  
// other port declarations  
   );
```
Verilog construct called defparam to set the new parameter values. The first method is commonly used to pass new parameters in RTL designs. And the second method is used in testbench simulations to quickly update the design parameters without having to reinstantiate the module.

```
module tb;  
      // Module instantiation override  
     design_ip  #(BUS_WIDTH = 64, DATA_WIDTH = 128) d0 ( [port list]);  
    // Use of defparam to override  
    defparam d0.FIFO_DEPTH = 128;  
endmodule  
```
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
7. ```reg``` is the only legal type on the left-hand side of an initial block = sign (used in Test Benches).
8. ```reg``` cannot be used on the left-hand side of an assign statement.
9. ```reg``` can be used to create registers when used in conjunction with always@(posedge Clock) blocks.
10. ```reg``` can, therefore, be used to create both combinational and sequential logic.

## Conceptual Constructs

### blocking statements

In Verilog, blocking statements are statements that execute sequentially in the order they appear in the code, and they cause the simulator to wait for their completion before moving on to the next statement. These statements are also referred to as procedural assignments.

When a blocking assignment is encountered, the simulator suspends execution until the assigned statement is completed. This means that the next line of code won't be executed until the blocking assignment is finished.

The most common form of a blocking statement is the "=" assignment operator. For example:
```
a = b + c;  // Blocking assignment
```
In this case, the value of b + c is assigned to a, and the simulator will wait for this assignment to complete before moving on to the next statement.

Blocking assignments are commonly used in procedural blocks like always and initial blocks to model sequential behavior in hardware description. They are contrasted with non-blocking assignments (using "<="), which are used to model concurrent behavior in Verilog.

```
module SimpleFlipFlop (
  input wire clk,
  input wire rst,
  input wire data,
  output reg q
);

  always @(posedge clk or posedge rst) begin
    // Blocking assignment for reset
    if (rst) begin
      q = 1'b0;
    end
    // Blocking assignment for clocked behavior
    else begin
      q = data;
    end
  end

endmodule
```
+ We have a module named SimpleFlipFlop with clock (clk), reset (rst), data input (data), and output register (q).

+ The always @(posedge clk or posedge rst) block represents a synchronous process triggered by the positive edge of the clock (clk) or the positive edge of the reset (rst).

+ Inside the always block, there are two blocking assignments:

   - The first one (q = 1'b0;) is for the reset condition. When the reset (rst) is asserted, it sets the output register q to logic 0.
   - The second one (q = data;) represents the clocked behavior. When the clock edge is detected and the reset is not asserted, it updates the output register q with the input data (data).

Blocking assignments (=) are used in both cases, ensuring sequential execution of these statements within the always block. The simulator will wait for the completion of each assignment before moving on to the next line in the block.

### Non Blocking statement

Non-blocking statements in Verilog use the "<=" assignment operator. Unlike blocking assignments ("="), non-blocking assignments allow for concurrent execution within the same procedural block. They are often used to model registers and flip-flops in hardware designs.

Let's modify the previous example to use non-blocking assignments:

```
module SimpleFlipFlop (
  input wire clk,
  input wire rst,
  input wire data,
  output reg q
);

  always @(posedge clk or posedge rst) begin
    // Non-blocking assignment for reset
    if (rst) begin
      q <= 1'b0;
    end
    // Non-blocking assignment for clocked behavior
    else begin
      q <= data;
    end
  end

endmodule

```
