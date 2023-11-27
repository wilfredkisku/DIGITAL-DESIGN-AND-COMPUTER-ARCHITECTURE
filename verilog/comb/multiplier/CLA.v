`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 09:47:59
// Design Name: 
// Module Name: CLA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CLA(
    input wire [3:0] in_A,
    input wire [3:0] in_B,
    input wire Cin,
    output wire [3:0] out_C,
    output wire carry
    );

//Generate and Propagate    
wire P0, P1, P2, P3;
wire G0, G1, G2, G3;

//Carry
wire C1, C2, C3;

assign P0 = in_A[0] ^ in_B[0];
assign P1 = in_A[1] ^ in_B[1];
assign P2 = in_A[2] ^ in_B[2];
assign P3 = in_A[3] ^ in_B[3];

assign G0 = in_A[0] & in_B[0];
assign G1 = in_A[1] & in_B[1];
assign G2 = in_A[2] & in_B[2];
assign G3 = in_A[3] & in_B[3];


assign C1 = G0 | (P0 & Cin);
assign C2 = G1 | (P1 & G0) | (P1 & P0 & Cin);
assign C3 = G2 | (P2 & G1) | (P2 & P1 & G0) | (P2 & P1 & P0 & Cin);
assign carry = G3 | (P3 & G2) | (P3 & P2 & G1) | (P3 & P2 & P1 & G0) | (P3 & P2 & P1 & P0 & Cin);


assign out_C[0] = P0 ^ Cin;
assign out_C[1] = P1 ^ C1;
assign out_C[2] = P2 ^ C2;
assign out_C[3] = P3 ^ C3;
   
endmodule
