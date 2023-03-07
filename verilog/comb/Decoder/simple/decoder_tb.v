module mux_8x8_testbench();

    reg en;
    reg [4:0] A;
    wire [31:0] Y;

    decoder5_32 UUT (.en(en), .A(A), .Y(Y));

    initial begin
        $monitor($time, "en=%b, A=%b, Y=%b.", en, A, Y);

        // Test case 1
        A = 5'b10100;
        en = 1'b1; #5;

        // Test case 2
        A = 5'b10000;
        en = 1'b1; #5;

        // Test case 3
        A = 5'b01010;
        en = 1'b1;

        $finish;
end
endmodule

