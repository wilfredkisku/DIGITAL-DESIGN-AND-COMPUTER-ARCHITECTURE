// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Mar 17 15:28:09 2023
// Host        : wilfred running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/wilfred/Desktop/github/Digital-Design-and-Computer-Architecture/vivado_simulations/clock_pmod_out/clock_pmod_out.srcs/sources_1/bd/design_1/ip/design_1_clock_out_0_0/design_1_clock_out_0_0_stub.v
// Design      : design_1_clock_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clock_out,Vivado 2019.2" *)
module design_1_clock_out_0_0(clk, clk_to_pmod, clk_125, LED)
/* synthesis syn_black_box black_box_pad_pin="clk,clk_to_pmod,clk_125,LED" */;
  input clk;
  output clk_to_pmod;
  output clk_125;
  output LED;
endmodule
