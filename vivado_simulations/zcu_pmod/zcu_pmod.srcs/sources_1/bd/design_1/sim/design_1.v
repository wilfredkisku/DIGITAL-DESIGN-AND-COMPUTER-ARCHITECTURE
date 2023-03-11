//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Fri Mar 10 23:54:24 2023
//Host        : wilfred running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=5,da_clkrst_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_100MHz,
    clk_100MHz_1,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 400000000, INSERT_VIP 0, PHASE 0.000" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ_1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ_1, CLK_DOMAIN design_1_clk_100MHz_1, FREQ_HZ 400000000, INSERT_VIP 0, PHASE 0.000" *) input clk_100MHz_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;

  wire \^clk_100MHz_1 ;
  wire clk_100MHz_1_1;
  wire clk_wiz_1_clk_out1;
  wire clk_wiz_clk_out1;
  wire reset_1;

  assign \^clk_100MHz_1  = clk_100MHz;
  assign clk_100MHz_1_1 = clk_100MHz_1;
  assign reset_1 = reset;
  design_1_clk_ip_0_0 clk_ip_0
       (.clk_n(clk_wiz_clk_out1),
        .clk_p(clk_wiz_1_clk_out1));
  design_1_clk_wiz_2 clk_wiz
       (.clk_in1(\^clk_100MHz_1 ),
        .clk_out1(clk_wiz_clk_out1),
        .reset(reset_1));
  design_1_clk_wiz_1_1 clk_wiz_1
       (.clk_in1(clk_100MHz_1_1),
        .clk_out1(clk_wiz_1_clk_out1),
        .reset(reset_1));
endmodule
