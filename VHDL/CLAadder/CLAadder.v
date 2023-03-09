module CLAadder(sum, carry, A, B, cin);
	input [3:0] A, B;
	output [3:0] sum;
	output carry;
	input cin;

	wire [3:0] G, P;
	wire c1, c2, c3;

	assign G[0] = A[0] & B[0],
	       G[1] = A[1] & B[1],
	       G[2] = A[2] & B[2],
	       G[3] = A[3] & B[3];
        
        assign P[0] = A[0] ^ B[0],
               P[1] = A[1] ^ B[1],
               P[2] = A[2] ^ B[2],
               P[3] = A[3] ^ B[3];
	
        assign c1 = G[0] | (P[0] & cin),
	       c2 = G[1] | (P[1] & G[0]) | (P[1] & P[0] & cin),
	       c3 = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & cin);

	assign carry = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & cin);

	assign sum[0] = A[0] ^ B[0] ^ cin;
	assign sum[1] = A[1] ^ B[1] ^ c1;
	assign sum[2] = A[2] ^ B[2] ^ c2;
	assign sum[3] = A[3] ^ B[3] ^ c3;
endmodule
