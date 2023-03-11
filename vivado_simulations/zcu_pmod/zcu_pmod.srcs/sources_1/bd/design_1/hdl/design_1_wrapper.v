//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Fri Mar 10 23:54:25 2023
//Host        : wilfred running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_100MHz,
    clk_100MHz_1,
    reset);
  input clk_100MHz;
  input clk_100MHz_1;
  input reset;

  wire clk_100MHz;
  wire clk_100MHz_1;
  wire reset;

  design_1 design_1_i
       (.clk_100MHz(clk_100MHz),
        .clk_100MHz_1(clk_100MHz_1),
        .reset(reset));
endmodule
