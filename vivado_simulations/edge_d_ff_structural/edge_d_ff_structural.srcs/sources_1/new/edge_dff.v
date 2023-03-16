`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 18:46:19
// Design Name: 
// Module Name: edge_dff
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


module edge_dff(
    data,
    clk,
    Q,
    Q_bar
    );
    input data;
    input clk;
    output Q;
    output Q_bar;
    
    wire st2_in_1, st2_in_2;
    wire st_out1, st_out2, st_out3, st_out4; 
    nand nand_1(st_out1, st2_in_1, st_out4);
    nand nand_2(st2_in_1, clk, st_out1);
    nand nand_3(st2_in_2, clk, st2_in_1, st_out4);
    nand nand_4(st_out4,data, st2_in_2);
    
    nand nand_2_1(Q, st2_in_1, Q_bar);
    nand nand_2_2(Q_bar, st2_in_2, Q);
    
endmodule
