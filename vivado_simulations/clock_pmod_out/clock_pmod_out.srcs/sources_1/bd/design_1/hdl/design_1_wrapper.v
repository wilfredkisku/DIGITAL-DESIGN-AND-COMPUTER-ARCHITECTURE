//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Fri Mar 17 15:25:51 2023
//Host        : wilfred running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (LED,
    clk_125,
    clk_to_pmod,
    reset_rtl,
    sys_clock);
  output LED;
  output clk_125;
  output clk_to_pmod;
  input reset_rtl;
  input sys_clock;

  wire LED;
  wire clk_125;
  wire clk_to_pmod;
  wire reset_rtl;
  wire sys_clock;

  design_1 design_1_i
       (.LED(LED),
        .clk_125(clk_125),
        .clk_to_pmod(clk_to_pmod),
        .reset_rtl(reset_rtl),
        .sys_clock(sys_clock));
endmodule
