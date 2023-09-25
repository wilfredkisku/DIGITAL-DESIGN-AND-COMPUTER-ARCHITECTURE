// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Mar 17 15:28:10 2023
// Host        : wilfred running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/wilfred/Desktop/github/Digital-Design-and-Computer-Architecture/vivado_simulations/clock_pmod_out/clock_pmod_out.srcs/sources_1/bd/design_1/ip/design_1_clock_out_0_0/design_1_clock_out_0_0_sim_netlist.v
// Design      : design_1_clock_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_clock_out_0_0,clock_out,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clock_out,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_clock_out_0_0
   (clk,
    clk_to_pmod,
    clk_125,
    LED);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0" *) input clk;
  output clk_to_pmod;
  output clk_125;
  output LED;

  wire LED;
  wire clk;

  assign clk_125 = clk;
  assign clk_to_pmod = LED;
  design_1_clock_out_0_0_clock_out inst
       (.LED(LED),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "clock_out" *) 
module design_1_clock_out_0_0_clock_out
   (LED,
    clk);
  output LED;
  input clk;

  wire LED;
  wire clk;
  wire [31:0]count1;
  wire count10_carry__0_n_0;
  wire count10_carry__0_n_1;
  wire count10_carry__0_n_2;
  wire count10_carry__0_n_3;
  wire count10_carry__1_n_0;
  wire count10_carry__1_n_1;
  wire count10_carry__1_n_2;
  wire count10_carry__1_n_3;
  wire count10_carry__2_n_0;
  wire count10_carry__2_n_1;
  wire count10_carry__2_n_2;
  wire count10_carry__2_n_3;
  wire count10_carry__3_n_0;
  wire count10_carry__3_n_1;
  wire count10_carry__3_n_2;
  wire count10_carry__3_n_3;
  wire count10_carry__4_n_0;
  wire count10_carry__4_n_1;
  wire count10_carry__4_n_2;
  wire count10_carry__4_n_3;
  wire count10_carry__5_n_0;
  wire count10_carry__5_n_1;
  wire count10_carry__5_n_2;
  wire count10_carry__5_n_3;
  wire count10_carry__6_n_2;
  wire count10_carry__6_n_3;
  wire count10_carry_n_0;
  wire count10_carry_n_1;
  wire count10_carry_n_2;
  wire count10_carry_n_3;
  wire [0:0]count1_0;
  wire [31:1]data0;
  wire divd_clk;
  wire divd_clk_i_1_n_0;
  wire divd_clk_i_2_n_0;
  wire divd_clk_i_3_n_0;
  wire divd_clk_i_4_n_0;
  wire divd_clk_i_5_n_0;
  wire divd_clk_i_6_n_0;
  wire divd_clk_i_7_n_0;
  wire divd_clk_i_8_n_0;
  wire divd_clk_i_9_n_0;
  wire [3:2]NLW_count10_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_count10_carry__6_O_UNCONNECTED;

  CARRY4 count10_carry
       (.CI(1'b0),
        .CO({count10_carry_n_0,count10_carry_n_1,count10_carry_n_2,count10_carry_n_3}),
        .CYINIT(count1[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(count1[4:1]));
  CARRY4 count10_carry__0
       (.CI(count10_carry_n_0),
        .CO({count10_carry__0_n_0,count10_carry__0_n_1,count10_carry__0_n_2,count10_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(count1[8:5]));
  CARRY4 count10_carry__1
       (.CI(count10_carry__0_n_0),
        .CO({count10_carry__1_n_0,count10_carry__1_n_1,count10_carry__1_n_2,count10_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(count1[12:9]));
  CARRY4 count10_carry__2
       (.CI(count10_carry__1_n_0),
        .CO({count10_carry__2_n_0,count10_carry__2_n_1,count10_carry__2_n_2,count10_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(count1[16:13]));
  CARRY4 count10_carry__3
       (.CI(count10_carry__2_n_0),
        .CO({count10_carry__3_n_0,count10_carry__3_n_1,count10_carry__3_n_2,count10_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(count1[20:17]));
  CARRY4 count10_carry__4
       (.CI(count10_carry__3_n_0),
        .CO({count10_carry__4_n_0,count10_carry__4_n_1,count10_carry__4_n_2,count10_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(count1[24:21]));
  CARRY4 count10_carry__5
       (.CI(count10_carry__4_n_0),
        .CO({count10_carry__5_n_0,count10_carry__5_n_1,count10_carry__5_n_2,count10_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(count1[28:25]));
  CARRY4 count10_carry__6
       (.CI(count10_carry__5_n_0),
        .CO({NLW_count10_carry__6_CO_UNCONNECTED[3:2],count10_carry__6_n_2,count10_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count10_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,count1[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \count1[0]_i_1 
       (.I0(divd_clk_i_4_n_0),
        .I1(divd_clk_i_3_n_0),
        .I2(divd_clk_i_2_n_0),
        .I3(count1[0]),
        .O(count1_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \count1[31]_i_1 
       (.I0(count1[0]),
        .I1(divd_clk_i_2_n_0),
        .I2(divd_clk_i_3_n_0),
        .I3(divd_clk_i_4_n_0),
        .O(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(count1_0),
        .Q(count1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(count1[10]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(count1[11]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(count1[12]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(count1[13]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(count1[14]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(count1[15]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(count1[16]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(count1[17]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(count1[18]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(count1[19]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(count1[1]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(count1[20]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(count1[21]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(count1[22]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[23]),
        .Q(count1[23]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[24]),
        .Q(count1[24]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[25]),
        .Q(count1[25]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[26]),
        .Q(count1[26]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[27]),
        .Q(count1[27]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[28]),
        .Q(count1[28]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[29]),
        .Q(count1[29]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(count1[2]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[30]),
        .Q(count1[30]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[31]),
        .Q(count1[31]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(count1[3]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(count1[4]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(count1[5]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(count1[6]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(count1[7]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(count1[8]),
        .R(divd_clk));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(count1[9]),
        .R(divd_clk));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    divd_clk_i_1
       (.I0(count1[0]),
        .I1(divd_clk_i_2_n_0),
        .I2(divd_clk_i_3_n_0),
        .I3(divd_clk_i_4_n_0),
        .I4(LED),
        .O(divd_clk_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    divd_clk_i_2
       (.I0(count1[13]),
        .I1(count1[12]),
        .I2(count1[11]),
        .I3(count1[10]),
        .I4(divd_clk_i_5_n_0),
        .O(divd_clk_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    divd_clk_i_3
       (.I0(count1[4]),
        .I1(count1[5]),
        .I2(count1[2]),
        .I3(count1[3]),
        .I4(divd_clk_i_6_n_0),
        .O(divd_clk_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    divd_clk_i_4
       (.I0(divd_clk_i_7_n_0),
        .I1(divd_clk_i_8_n_0),
        .I2(count1[31]),
        .I3(count1[30]),
        .I4(count1[1]),
        .I5(divd_clk_i_9_n_0),
        .O(divd_clk_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    divd_clk_i_5
       (.I0(count1[15]),
        .I1(count1[14]),
        .I2(count1[17]),
        .I3(count1[16]),
        .O(divd_clk_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    divd_clk_i_6
       (.I0(count1[7]),
        .I1(count1[6]),
        .I2(count1[9]),
        .I3(count1[8]),
        .O(divd_clk_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    divd_clk_i_7
       (.I0(count1[23]),
        .I1(count1[22]),
        .I2(count1[25]),
        .I3(count1[24]),
        .O(divd_clk_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    divd_clk_i_8
       (.I0(count1[19]),
        .I1(count1[18]),
        .I2(count1[20]),
        .I3(count1[21]),
        .O(divd_clk_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    divd_clk_i_9
       (.I0(count1[27]),
        .I1(count1[26]),
        .I2(count1[29]),
        .I3(count1[28]),
        .O(divd_clk_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    divd_clk_reg
       (.C(clk),
        .CE(1'b1),
        .D(divd_clk_i_1_n_0),
        .Q(LED),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
