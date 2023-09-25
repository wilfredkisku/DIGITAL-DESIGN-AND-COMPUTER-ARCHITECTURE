-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Fri Mar 17 15:28:09 2023
-- Host        : wilfred running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_clock_out_0_0_sim_netlist.vhdl
-- Design      : design_1_clock_out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_out is
  port (
    LED : out STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_out;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_out is
  signal \^led\ : STD_LOGIC;
  signal count1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count10_carry__0_n_0\ : STD_LOGIC;
  signal \count10_carry__0_n_1\ : STD_LOGIC;
  signal \count10_carry__0_n_2\ : STD_LOGIC;
  signal \count10_carry__0_n_3\ : STD_LOGIC;
  signal \count10_carry__1_n_0\ : STD_LOGIC;
  signal \count10_carry__1_n_1\ : STD_LOGIC;
  signal \count10_carry__1_n_2\ : STD_LOGIC;
  signal \count10_carry__1_n_3\ : STD_LOGIC;
  signal \count10_carry__2_n_0\ : STD_LOGIC;
  signal \count10_carry__2_n_1\ : STD_LOGIC;
  signal \count10_carry__2_n_2\ : STD_LOGIC;
  signal \count10_carry__2_n_3\ : STD_LOGIC;
  signal \count10_carry__3_n_0\ : STD_LOGIC;
  signal \count10_carry__3_n_1\ : STD_LOGIC;
  signal \count10_carry__3_n_2\ : STD_LOGIC;
  signal \count10_carry__3_n_3\ : STD_LOGIC;
  signal \count10_carry__4_n_0\ : STD_LOGIC;
  signal \count10_carry__4_n_1\ : STD_LOGIC;
  signal \count10_carry__4_n_2\ : STD_LOGIC;
  signal \count10_carry__4_n_3\ : STD_LOGIC;
  signal \count10_carry__5_n_0\ : STD_LOGIC;
  signal \count10_carry__5_n_1\ : STD_LOGIC;
  signal \count10_carry__5_n_2\ : STD_LOGIC;
  signal \count10_carry__5_n_3\ : STD_LOGIC;
  signal \count10_carry__6_n_2\ : STD_LOGIC;
  signal \count10_carry__6_n_3\ : STD_LOGIC;
  signal count10_carry_n_0 : STD_LOGIC;
  signal count10_carry_n_1 : STD_LOGIC;
  signal count10_carry_n_2 : STD_LOGIC;
  signal count10_carry_n_3 : STD_LOGIC;
  signal count1_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal divd_clk : STD_LOGIC;
  signal divd_clk_i_1_n_0 : STD_LOGIC;
  signal divd_clk_i_2_n_0 : STD_LOGIC;
  signal divd_clk_i_3_n_0 : STD_LOGIC;
  signal divd_clk_i_4_n_0 : STD_LOGIC;
  signal divd_clk_i_5_n_0 : STD_LOGIC;
  signal divd_clk_i_6_n_0 : STD_LOGIC;
  signal divd_clk_i_7_n_0 : STD_LOGIC;
  signal divd_clk_i_8_n_0 : STD_LOGIC;
  signal divd_clk_i_9_n_0 : STD_LOGIC;
  signal \NLW_count10_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count10_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count1[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of divd_clk_i_1 : label is "soft_lutpair0";
begin
  LED <= \^led\;
count10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count10_carry_n_0,
      CO(2) => count10_carry_n_1,
      CO(1) => count10_carry_n_2,
      CO(0) => count10_carry_n_3,
      CYINIT => count1(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => count1(4 downto 1)
    );
\count10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count10_carry_n_0,
      CO(3) => \count10_carry__0_n_0\,
      CO(2) => \count10_carry__0_n_1\,
      CO(1) => \count10_carry__0_n_2\,
      CO(0) => \count10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => count1(8 downto 5)
    );
\count10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count10_carry__0_n_0\,
      CO(3) => \count10_carry__1_n_0\,
      CO(2) => \count10_carry__1_n_1\,
      CO(1) => \count10_carry__1_n_2\,
      CO(0) => \count10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => count1(12 downto 9)
    );
\count10_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count10_carry__1_n_0\,
      CO(3) => \count10_carry__2_n_0\,
      CO(2) => \count10_carry__2_n_1\,
      CO(1) => \count10_carry__2_n_2\,
      CO(0) => \count10_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => count1(16 downto 13)
    );
\count10_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count10_carry__2_n_0\,
      CO(3) => \count10_carry__3_n_0\,
      CO(2) => \count10_carry__3_n_1\,
      CO(1) => \count10_carry__3_n_2\,
      CO(0) => \count10_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => count1(20 downto 17)
    );
\count10_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count10_carry__3_n_0\,
      CO(3) => \count10_carry__4_n_0\,
      CO(2) => \count10_carry__4_n_1\,
      CO(1) => \count10_carry__4_n_2\,
      CO(0) => \count10_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => count1(24 downto 21)
    );
\count10_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count10_carry__4_n_0\,
      CO(3) => \count10_carry__5_n_0\,
      CO(2) => \count10_carry__5_n_1\,
      CO(1) => \count10_carry__5_n_2\,
      CO(0) => \count10_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => count1(28 downto 25)
    );
\count10_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count10_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count10_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count10_carry__6_n_2\,
      CO(0) => \count10_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count10_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => count1(31 downto 29)
    );
\count1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => divd_clk_i_4_n_0,
      I1 => divd_clk_i_3_n_0,
      I2 => divd_clk_i_2_n_0,
      I3 => count1(0),
      O => count1_0(0)
    );
\count1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count1(0),
      I1 => divd_clk_i_2_n_0,
      I2 => divd_clk_i_3_n_0,
      I3 => divd_clk_i_4_n_0,
      O => divd_clk
    );
\count1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => count1_0(0),
      Q => count1(0),
      R => '0'
    );
\count1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(10),
      Q => count1(10),
      R => divd_clk
    );
\count1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(11),
      Q => count1(11),
      R => divd_clk
    );
\count1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(12),
      Q => count1(12),
      R => divd_clk
    );
\count1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(13),
      Q => count1(13),
      R => divd_clk
    );
\count1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(14),
      Q => count1(14),
      R => divd_clk
    );
\count1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(15),
      Q => count1(15),
      R => divd_clk
    );
\count1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(16),
      Q => count1(16),
      R => divd_clk
    );
\count1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(17),
      Q => count1(17),
      R => divd_clk
    );
\count1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(18),
      Q => count1(18),
      R => divd_clk
    );
\count1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(19),
      Q => count1(19),
      R => divd_clk
    );
\count1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => count1(1),
      R => divd_clk
    );
\count1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(20),
      Q => count1(20),
      R => divd_clk
    );
\count1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(21),
      Q => count1(21),
      R => divd_clk
    );
\count1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(22),
      Q => count1(22),
      R => divd_clk
    );
\count1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(23),
      Q => count1(23),
      R => divd_clk
    );
\count1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(24),
      Q => count1(24),
      R => divd_clk
    );
\count1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(25),
      Q => count1(25),
      R => divd_clk
    );
\count1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(26),
      Q => count1(26),
      R => divd_clk
    );
\count1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(27),
      Q => count1(27),
      R => divd_clk
    );
\count1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(28),
      Q => count1(28),
      R => divd_clk
    );
\count1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(29),
      Q => count1(29),
      R => divd_clk
    );
\count1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => count1(2),
      R => divd_clk
    );
\count1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(30),
      Q => count1(30),
      R => divd_clk
    );
\count1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(31),
      Q => count1(31),
      R => divd_clk
    );
\count1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => count1(3),
      R => divd_clk
    );
\count1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => count1(4),
      R => divd_clk
    );
\count1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => count1(5),
      R => divd_clk
    );
\count1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(6),
      Q => count1(6),
      R => divd_clk
    );
\count1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(7),
      Q => count1(7),
      R => divd_clk
    );
\count1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(8),
      Q => count1(8),
      R => divd_clk
    );
\count1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(9),
      Q => count1(9),
      R => divd_clk
    );
divd_clk_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => count1(0),
      I1 => divd_clk_i_2_n_0,
      I2 => divd_clk_i_3_n_0,
      I3 => divd_clk_i_4_n_0,
      I4 => \^led\,
      O => divd_clk_i_1_n_0
    );
divd_clk_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => count1(13),
      I1 => count1(12),
      I2 => count1(11),
      I3 => count1(10),
      I4 => divd_clk_i_5_n_0,
      O => divd_clk_i_2_n_0
    );
divd_clk_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count1(4),
      I1 => count1(5),
      I2 => count1(2),
      I3 => count1(3),
      I4 => divd_clk_i_6_n_0,
      O => divd_clk_i_3_n_0
    );
divd_clk_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => divd_clk_i_7_n_0,
      I1 => divd_clk_i_8_n_0,
      I2 => count1(31),
      I3 => count1(30),
      I4 => count1(1),
      I5 => divd_clk_i_9_n_0,
      O => divd_clk_i_4_n_0
    );
divd_clk_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => count1(15),
      I1 => count1(14),
      I2 => count1(17),
      I3 => count1(16),
      O => divd_clk_i_5_n_0
    );
divd_clk_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => count1(7),
      I1 => count1(6),
      I2 => count1(9),
      I3 => count1(8),
      O => divd_clk_i_6_n_0
    );
divd_clk_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => count1(23),
      I1 => count1(22),
      I2 => count1(25),
      I3 => count1(24),
      O => divd_clk_i_7_n_0
    );
divd_clk_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => count1(19),
      I1 => count1(18),
      I2 => count1(20),
      I3 => count1(21),
      O => divd_clk_i_8_n_0
    );
divd_clk_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count1(27),
      I1 => count1(26),
      I2 => count1(29),
      I3 => count1(28),
      O => divd_clk_i_9_n_0
    );
divd_clk_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => divd_clk_i_1_n_0,
      Q => \^led\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    clk_to_pmod : out STD_LOGIC;
    clk_125 : out STD_LOGIC;
    LED : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_clock_out_0_0,clock_out,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "clock_out,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^led\ : STD_LOGIC;
  signal \^clk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
begin
  LED <= \^led\;
  \^clk\ <= clk;
  clk_125 <= \^clk\;
  clk_to_pmod <= \^led\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_out
     port map (
      LED => \^led\,
      clk => \^clk\
    );
end STRUCTURE;
