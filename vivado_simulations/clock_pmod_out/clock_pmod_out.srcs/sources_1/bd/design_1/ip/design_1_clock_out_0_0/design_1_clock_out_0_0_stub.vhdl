-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Mar 17 15:28:10 2023
-- Host        : wilfred running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wilfred/Desktop/github/Digital-Design-and-Computer-Architecture/vivado_simulations/clock_pmod_out/clock_pmod_out.srcs/sources_1/bd/design_1/ip/design_1_clock_out_0_0/design_1_clock_out_0_0_stub.vhdl
-- Design      : design_1_clock_out_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_clock_out_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    clk_to_pmod : out STD_LOGIC;
    clk_125 : out STD_LOGIC;
    LED : out STD_LOGIC
  );

end design_1_clock_out_0_0;

architecture stub of design_1_clock_out_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,clk_to_pmod,clk_125,LED";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "clock_out,Vivado 2019.2";
begin
end;
