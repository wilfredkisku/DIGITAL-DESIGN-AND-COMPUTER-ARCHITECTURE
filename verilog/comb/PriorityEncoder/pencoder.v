module priority_encoder(en, A, Y);

	input en;
	input [31:0] A;
	output reg [4:0] Y;

	always @(*) begin
		Y = 5'b00000;
		if (en == 1'b1) begin
		if (A[31] == 1'b1) begin
			Y = 5'b11111;
		end
		else if (A[30] == 1'b1) begin
			Y = 5'b11110;
		end
		else if (A[29] == 1'b1) begin
			Y = 5'b11101;
		end
		else if (A[28] == 1'b1) begin
			Y = 5'b11100;
		end
		else if (A[27] == 1'b1) begin
			Y = 5'b11011;
		end
		else if (A[26] == 1'b1) begin
                        Y = 5'b11010;
                end
		else if (A[25] == 1'b1) begin
                        Y = 5'b11001;
                end
		else if (A[24] == 1'b1) begin
                        Y = 5'b11000;
                end
		else if (A[23] == 1'b1) begin
                        Y = 5'b10111;
                end
		else if (A[22] == 1'b1) begin
                        Y = 5'b10110;
                end
		else if (A[21] == 1'b1) begin
                        Y = 5'b10101;
                end
		else if (A[20] == 1'b1) begin
                        Y = 5'b10100;
                end
		else if (A[19] == 1'b1) begin
                        Y = 5'b10011;
                end
		else if (A[18] == 1'b1) begin
                        Y = 5'b10010;
                end
		else if (A[17] == 1'b1) begin
                        Y = 5'b10001;
                end
		else if (A[16] == 1'b1) begin
                        Y = 5'b10000;
                end
		else if (A[15] == 1'b1) begin
                        Y = 5'b01111;
                end
		else if (A[14] == 1'b1) begin
                        Y = 5'b01110;
                end
		else if (A[13] == 1'b1) begin
                        Y = 5'b01101;
                end
                else if (A[12] == 1'b1) begin
                        Y = 5'b01100;
                end
                else if (A[11] == 1'b1) begin
                        Y = 5'b01011;
                end
                else if (A[10] == 1'b1) begin
                        Y = 5'b01010;
                end
                else if (A[9] == 1'b1) begin
                        Y = 5'b01001;
                end
                else if (A[8] == 1'b1) begin
                        Y = 5'b01000;
                end
                else if (A[7] == 1'b1) begin
                        Y = 5'b00111;
                end
		else if (A[6] == 1'b1) begin
                        Y = 5'b00110;
                end
                else if (A[5] == 1'b1) begin
                        Y = 5'b00101;
                end
                else if (A[4] == 1'b1) begin
                        Y = 5'b00100;
                end
                else if (A[3] == 1'b1) begin
                        Y = 5'b00011;
                end
                else if (A[2] == 1'b1) begin
                        Y = 5'b00010;
                end
                else if (A[1] == 1'b1) begin
                        Y = 5'b00001;
                end
                else if (A[0] == 1'b1) begin
                        Y = 5'b00000;
                end
		else begin
			Y = 5'bzzzzz;
		end
	   end
	end

endmodule
