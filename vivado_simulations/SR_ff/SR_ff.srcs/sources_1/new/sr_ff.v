`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 00:49:25
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(q, qbar, s, r, clk);

input s,r,clk; 
output q, qbar;

wire nand1_out; // output of nand1 
wire nand2_out; // output of nand2 

nand (nand1_out,clk,s); 
nand (nand2_out,clk,r); 
nand (q,nand1_out,qbar);
nand (qbar,nand2_out,q);

endmodule
