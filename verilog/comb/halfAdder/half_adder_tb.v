module testbench;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire sum;
    wire carry;

    // Instantiate the half adder module
    half_adder adder(.a(a), .b(b), .sum(sum), .carry(carry));

    // Initialize the inputs
    initial begin
        a = 1'b0;
        b = 1'b0;

        // Iterate over all input combinations
        repeat(4) begin
            repeat(2) begin
                #10;
                a = ~a;
            end
            b = ~b;
        end

        // End the simulation
        #10;
        $finish;
    end

    // Display the outputs
    always @(sum, carry) begin
        $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);
    end

endmodule

