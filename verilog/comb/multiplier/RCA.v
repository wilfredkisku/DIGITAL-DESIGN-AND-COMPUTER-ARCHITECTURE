`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 10:40:08
// Design Name: 
// Module Name: RCA
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


module RCA(
    input wire [3:0] in_A,
    input wire [3:0] in_B,
    input wire Cin,
    output wire [3:0] out_C,
    output wire carry
    );
    
 wire [4:0] C;
 assign C[0] = Cin;
 assign carry = C[4];
 genvar i;
 
 // using generate 
 generate 
 begin
    for(i=0; i < 4; i=i+1) begin
        FA fa(.in_A(in_A[i]), .in_B(in_B[i]), .Cin(C[i]), .Cout(C[i+1]), .out_C(out_C[i]));
    end
 end
 endgenerate
endmodule
