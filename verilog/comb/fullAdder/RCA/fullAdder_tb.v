module ripple_carry_adder_tb;

  // Declare inputs and outputs
  reg [7:0] a, b;
  wire [7:0] sum;
  wire carry_out;
  
  // Instantiate the module under test
  ripple_carry_adder dut (
    .a(a),
    .b(b),
    .sum(sum),
    .cout(carry_out)
  );
  
  // Initialize inputs and expected outputs
  initial begin
    $dumpfile("rca.vcd");
    $dumpvars(0,ripple_carry_adder_tb);
    a = 8'b01010101;
    b = 8'b00110011;
    #10;
    $display("a = %b", a);
    $display("b = %b", b);
    $display("sum = %b", sum);
    $display("carry_out = %b", carry_out);
    if (sum !== 8'b10001000 || carry_out !== 1'b0) begin
      $display("Test failed!");
    end else begin
      $display("Test passed.");
    end
    $finish;
  end

endmodule
