`timescale 1ns/1ps

module CLAadder_tb;
	reg [3:0] A, B;
	reg cin;

	wire [3:0] sum;
	wire carry;

	CLAadder claadderDUT(.sum(sum), .carry(carry), .A(A), .B(B), .cin(cin));

	initial
	begin
		$dumpfile("claadder.vcd");
		$dumpvars(0,CLAadder_tb);
		$monitor($time,"sum=%b, carry=%b, A=%b, B=%b, cin=%b", sum, carry, A, B, cin);
		#5 A = 4'b1010; B = 4'b0101; cin = 1'b0;
		#5 A = 4'b0110; B = 4'b0111; cin = 1'b0;
		#5 A = 4'b0110; B = 4'b0111; cin = 1'b1;
		#5 A = 4'b1010; B = 4'b0101; cin = 1'b0;
		#5 A = 4'b1111; B = 4'b0001; cin = 1'b1;
		#5 $finish;
	end

endmodule
