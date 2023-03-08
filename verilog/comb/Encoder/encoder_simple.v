module encoder32_5(en, A, Y);
        input en;
        input [31:0] A;
        output reg [4:0] Y;
	
	integer i;
	
	always @(*) begin
		Y = 5'b00000;
		if (en == 1) begin
			for (i=0;i<32;i+=1) begin
				if (A[i] == 1) begin
					Y = i;
				end //if
			end //for
		end //for
	end //always
endmodule

