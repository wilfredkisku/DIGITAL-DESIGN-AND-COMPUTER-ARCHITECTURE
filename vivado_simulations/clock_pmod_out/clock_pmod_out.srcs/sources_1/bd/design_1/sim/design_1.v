//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Fri Mar 17 15:25:51 2023
//Host        : wilfred running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (LED,
    clk_125,
    clk_to_pmod,
    reset_rtl,
    sys_clock);
  output LED;
  output clk_125;
  output clk_to_pmod;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire clk_wiz_clk_out1;
  wire clock_out_0_LED;
  wire clock_out_0_clk_125;
  wire clock_out_0_clk_to_pmod;
  wire reset_rtl_1;
  wire sys_clock_1;

  assign LED = clock_out_0_LED;
  assign clk_125 = clock_out_0_clk_125;
  assign clk_to_pmod = clock_out_0_clk_to_pmod;
  assign reset_rtl_1 = reset_rtl;
  assign sys_clock_1 = sys_clock;
  design_1_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .reset(reset_rtl_1));
  design_1_clock_out_0_0 clock_out_0
       (.LED(clock_out_0_LED),
        .clk(clk_wiz_clk_out1),
        .clk_125(clock_out_0_clk_125),
        .clk_to_pmod(clock_out_0_clk_to_pmod));
endmodule
