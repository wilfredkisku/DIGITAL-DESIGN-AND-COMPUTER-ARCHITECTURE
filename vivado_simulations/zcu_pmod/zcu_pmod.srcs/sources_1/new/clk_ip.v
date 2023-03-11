`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2023 23:32:52
// Design Name: 
// Module Name: clk_ip
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


module clk_ip(
clk_p,
clk_n,
clk
    );
    input clk_p, clk_n;
    output clk;
IBUFDS #(
    .DIFF_TERM("TRUE"),
    .IOSTANDARD("LVDS_25")
) ibufds_clk (
    .I(clk_p),
    .IB(clk_n),
    .O(clk)
);  
  
endmodule
