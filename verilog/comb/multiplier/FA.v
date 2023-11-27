`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 10:34:32
// Design Name: 
// Module Name: FA
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


module FA(
    input wire in_A,
    input wire in_B,
    input wire Cin,
    output wire Cout,
    output wire out_C
    );

assign out_C = Cin ^ (in_A ^ in_B);
assign Cout = (Cin & (in_A ^ in_B)) | (in_A & in_B); 

endmodule
