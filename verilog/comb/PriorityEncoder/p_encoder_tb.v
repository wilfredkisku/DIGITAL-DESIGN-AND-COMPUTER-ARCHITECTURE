module pencoder_tb();

	reg en;
	reg [31:0] A;
	wire [4:0] Y;

priority_encoder encoder_uut(.en(en), .A(A), .Y(Y));

	initial begin
		$monitor("in = %b, out = %b, en = %b", A, Y, en);
    		$dumpfile("priority_encoder.vcd");
    		$dumpvars(0,pencoder_tb);

    		A = 4'b0000;
    		en = 1'b1;
    		#10;

    		A = 4'b0001;
    		#10;

    		A = 4'b001x;
    		#10;

    		A = 4'b0011;
    		#10;

    		A = 4'b0100; // invalid input
    		en = 1'b0;
    		#10;

    		A = 4'b1111; // invalid input
    		en = 1'b1;
    		#10;

    		A = 32'b0000_0100_0000_0101_1111; // invalid input
    		en = 1'b1;
    		#10;
    		$finish;
	end
endmodule
