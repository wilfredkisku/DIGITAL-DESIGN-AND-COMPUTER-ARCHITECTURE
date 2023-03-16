`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 18:05:14
// Design Name: 
// Module Name: clock_out
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


module clk_pmod_artix(clk, clk_to_pmod,clk_125_out, LED);

  output LED;
  output clk_to_pmod;
  output clk_125_out;
  input  clk;

  //reg [23:0] count1;
 // reg        LEDstatus;
  reg divd_clk =0;
  integer count1 = 0;
  reg clk_125 = 0;
  
  assign LED = divd_clk;
  assign clk_to_pmod = divd_clk;
  assign clk_125_out = clk_125;
  
  always @ (posedge clk) 
  begin
  
    if (count1 == 10000000) 
    begin
      count1 <= 0;
    end
    else begin
      count1 <= count1 +1;
    end
    end
 always @ (posedge clk) 
 begin
   if (count1 == 10000000)
    begin  
  divd_clk <= ~divd_clk;
   end
   else begin
   divd_clk <= divd_clk;
   end
end

always @(posedge clk)
begin
     clk_125 <= ~clk_125;
end
endmodule
