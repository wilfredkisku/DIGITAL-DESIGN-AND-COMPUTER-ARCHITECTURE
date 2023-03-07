module decoder5_32(en, A, Y);
	input en;
	input [4:0] A;
	output reg [31:0] Y;

	integer i;
	reg [31:0] out = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
	always @(en, A)
	begin
		if (en == 1'b1) begin
				for(i = 5'b00000; i < 5'b11111; i += 5'b00001) begin
			       		if (A == i)
						out = 32'd1 << i;
				end
		end
	Y = out;
	end
endmodule
