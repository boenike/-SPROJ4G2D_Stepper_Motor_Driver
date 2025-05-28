-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed May 28 15:26:25 2025
-- Host        : BoenikeLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/benci/Documents/University/SEM4/SPROJ4/Software/SPROJ4G2D_Plotter_Driver/Plotter_Driver_v2/Plotter_Driver_v2.srcs/sources_1/bd/Plotter_BD/ip/Plotter_BD_Plotter_Driver_v2_Top_0_1/Plotter_BD_Plotter_Driver_v2_Top_0_1_sim_netlist.vhdl
-- Design      : Plotter_BD_Plotter_Driver_v2_Top_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_BD_Plotter_Driver_v2_Top_0_1_Halfstepper is
  port (
    OUT_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GPIO_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    GCK : in STD_LOGIC;
    \Windings_sig_reg[7]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_BD_Plotter_Driver_v2_Top_0_1_Halfstepper : entity is "Halfstepper";
end Plotter_BD_Plotter_Driver_v2_Top_0_1_Halfstepper;

architecture STRUCTURE of Plotter_BD_Plotter_Driver_v2_Top_0_1_Halfstepper is
  signal A : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Windings_sig[5]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Windings_sig[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Windings_sig[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Windings_sig[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Windings_sig[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_addr[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \current_addr[2]_i_1\ : label is "soft_lutpair0";
begin
\Windings_sig[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"89"
    )
        port map (
      I0 => A(1),
      I1 => A(2),
      I2 => A(0),
      O => p_0_in(4)
    );
\Windings_sig[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      I2 => A(2),
      O => \Windings_sig[5]_i_1_n_0\
    );
\Windings_sig[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => A(1),
      I1 => A(2),
      I2 => A(0),
      O => p_0_in(6)
    );
\Windings_sig[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      I2 => A(2),
      O => p_0_in(7)
    );
\Windings_sig_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => p_0_in(4),
      PRE => \Windings_sig_reg[7]_0\,
      Q => OUT_1(0)
    );
\Windings_sig_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => \Windings_sig[5]_i_1_n_0\,
      PRE => \Windings_sig_reg[7]_0\,
      Q => OUT_1(1)
    );
\Windings_sig_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => p_0_in(6),
      PRE => \Windings_sig_reg[7]_0\,
      Q => OUT_1(2)
    );
\Windings_sig_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => p_0_in(7),
      PRE => \Windings_sig_reg[7]_0\,
      Q => OUT_1(3)
    );
\current_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => GPIO_IN(2),
      I1 => A(0),
      O => \current_addr[0]_i_1_n_0\
    );
\current_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F90"
    )
        port map (
      I0 => A(0),
      I1 => GPIO_IN(1),
      I2 => GPIO_IN(2),
      I3 => A(1),
      O => \current_addr[1]_i_1_n_0\
    );
\current_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7EFF8100"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      I2 => GPIO_IN(1),
      I3 => GPIO_IN(2),
      I4 => A(2),
      O => \current_addr[2]_i_1_n_0\
    );
\current_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GPIO_IN(0),
      CE => '1',
      D => \current_addr[0]_i_1_n_0\,
      Q => A(0),
      R => '0'
    );
\current_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GPIO_IN(0),
      CE => '1',
      D => \current_addr[1]_i_1_n_0\,
      Q => A(1),
      R => '0'
    );
\current_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GPIO_IN(0),
      CE => '1',
      D => \current_addr[2]_i_1_n_0\,
      Q => A(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_BD_Plotter_Driver_v2_Top_0_1_Halfstepper_0 is
  port (
    \GPIO_IN[4]\ : out STD_LOGIC;
    OUT_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GPIO_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    GCK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_BD_Plotter_Driver_v2_Top_0_1_Halfstepper_0 : entity is "Halfstepper";
end Plotter_BD_Plotter_Driver_v2_Top_0_1_Halfstepper_0;

architecture STRUCTURE of Plotter_BD_Plotter_Driver_v2_Top_0_1_Halfstepper_0 is
  signal \^gpio_in[4]\ : STD_LOGIC;
  signal \Windings_sig[4]_i_1_n_0\ : STD_LOGIC;
  signal \Windings_sig[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \Windings_sig[6]_i_1_n_0\ : STD_LOGIC;
  signal \Windings_sig[7]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_addr_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Windings_sig[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Windings_sig[5]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Windings_sig[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Windings_sig[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_addr[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_addr[2]_i_1\ : label is "soft_lutpair3";
begin
  \GPIO_IN[4]\ <= \^gpio_in[4]\;
\Windings_sig[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"89"
    )
        port map (
      I0 => \current_addr_reg_n_0_[1]\,
      I1 => \current_addr_reg_n_0_[2]\,
      I2 => \current_addr_reg_n_0_[0]\,
      O => \Windings_sig[4]_i_1_n_0\
    );
\Windings_sig[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \current_addr_reg_n_0_[0]\,
      I1 => \current_addr_reg_n_0_[1]\,
      I2 => \current_addr_reg_n_0_[2]\,
      O => \Windings_sig[5]_i_1__0_n_0\
    );
\Windings_sig[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => \current_addr_reg_n_0_[1]\,
      I1 => \current_addr_reg_n_0_[2]\,
      I2 => \current_addr_reg_n_0_[0]\,
      O => \Windings_sig[6]_i_1_n_0\
    );
\Windings_sig[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \current_addr_reg_n_0_[0]\,
      I1 => \current_addr_reg_n_0_[1]\,
      I2 => \current_addr_reg_n_0_[2]\,
      O => \Windings_sig[7]_i_1_n_0\
    );
\Windings_sig[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => GPIO_IN(2),
      O => \^gpio_in[4]\
    );
\Windings_sig_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => \Windings_sig[4]_i_1_n_0\,
      PRE => \^gpio_in[4]\,
      Q => OUT_2(0)
    );
\Windings_sig_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => \Windings_sig[5]_i_1__0_n_0\,
      PRE => \^gpio_in[4]\,
      Q => OUT_2(1)
    );
\Windings_sig_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => \Windings_sig[6]_i_1_n_0\,
      PRE => \^gpio_in[4]\,
      Q => OUT_2(2)
    );
\Windings_sig_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => \Windings_sig[7]_i_1_n_0\,
      PRE => \^gpio_in[4]\,
      Q => OUT_2(3)
    );
\current_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => GPIO_IN(2),
      I1 => \current_addr_reg_n_0_[0]\,
      O => \current_addr[0]_i_1_n_0\
    );
\current_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F90"
    )
        port map (
      I0 => \current_addr_reg_n_0_[0]\,
      I1 => GPIO_IN(1),
      I2 => GPIO_IN(2),
      I3 => \current_addr_reg_n_0_[1]\,
      O => \current_addr[1]_i_1_n_0\
    );
\current_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7EFF8100"
    )
        port map (
      I0 => \current_addr_reg_n_0_[0]\,
      I1 => \current_addr_reg_n_0_[1]\,
      I2 => GPIO_IN(1),
      I3 => GPIO_IN(2),
      I4 => \current_addr_reg_n_0_[2]\,
      O => \current_addr[2]_i_1_n_0\
    );
\current_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GPIO_IN(0),
      CE => '1',
      D => \current_addr[0]_i_1_n_0\,
      Q => \current_addr_reg_n_0_[0]\,
      R => '0'
    );
\current_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GPIO_IN(0),
      CE => '1',
      D => \current_addr[1]_i_1_n_0\,
      Q => \current_addr_reg_n_0_[1]\,
      R => '0'
    );
\current_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GPIO_IN(0),
      CE => '1',
      D => \current_addr[2]_i_1_n_0\,
      Q => \current_addr_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_BD_Plotter_Driver_v2_Top_0_1_Servo_PWM_Gen is
  port (
    PWM_OUT : out STD_LOGIC;
    GCK : in STD_LOGIC;
    GPIO_IN : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_BD_Plotter_Driver_v2_Top_0_1_Servo_PWM_Gen : entity is "Servo_PWM_Gen";
end Plotter_BD_Plotter_Driver_v2_Top_0_1_Servo_PWM_Gen;

architecture STRUCTURE of Plotter_BD_Plotter_Driver_v2_Top_0_1_Servo_PWM_Gen is
  signal CTR : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \CTR0_carry__0_n_0\ : STD_LOGIC;
  signal \CTR0_carry__0_n_1\ : STD_LOGIC;
  signal \CTR0_carry__0_n_2\ : STD_LOGIC;
  signal \CTR0_carry__0_n_3\ : STD_LOGIC;
  signal \CTR0_carry__1_n_0\ : STD_LOGIC;
  signal \CTR0_carry__1_n_1\ : STD_LOGIC;
  signal \CTR0_carry__1_n_2\ : STD_LOGIC;
  signal \CTR0_carry__1_n_3\ : STD_LOGIC;
  signal \CTR0_carry__2_n_0\ : STD_LOGIC;
  signal \CTR0_carry__2_n_1\ : STD_LOGIC;
  signal \CTR0_carry__2_n_2\ : STD_LOGIC;
  signal \CTR0_carry__2_n_3\ : STD_LOGIC;
  signal \CTR0_carry__3_n_1\ : STD_LOGIC;
  signal \CTR0_carry__3_n_2\ : STD_LOGIC;
  signal \CTR0_carry__3_n_3\ : STD_LOGIC;
  signal CTR0_carry_n_0 : STD_LOGIC;
  signal CTR0_carry_n_1 : STD_LOGIC;
  signal CTR0_carry_n_2 : STD_LOGIC;
  signal CTR0_carry_n_3 : STD_LOGIC;
  signal \CTR[20]_i_1_n_0\ : STD_LOGIC;
  signal \CTR[20]_i_2_n_0\ : STD_LOGIC;
  signal \CTR[20]_i_3_n_0\ : STD_LOGIC;
  signal \CTR[20]_i_4_n_0\ : STD_LOGIC;
  signal CTR_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \PWM_OUT0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \PWM_OUT0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \PWM_OUT0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \PWM_OUT0_carry__0_n_1\ : STD_LOGIC;
  signal \PWM_OUT0_carry__0_n_2\ : STD_LOGIC;
  signal \PWM_OUT0_carry__0_n_3\ : STD_LOGIC;
  signal PWM_OUT0_carry_i_1_n_0 : STD_LOGIC;
  signal PWM_OUT0_carry_i_2_n_0 : STD_LOGIC;
  signal PWM_OUT0_carry_i_3_n_0 : STD_LOGIC;
  signal PWM_OUT0_carry_i_4_n_0 : STD_LOGIC;
  signal PWM_OUT0_carry_n_0 : STD_LOGIC;
  signal PWM_OUT0_carry_n_1 : STD_LOGIC;
  signal PWM_OUT0_carry_n_2 : STD_LOGIC;
  signal PWM_OUT0_carry_n_3 : STD_LOGIC;
  signal PWM_OUT_reg_i_1_n_0 : STD_LOGIC;
  signal PWM_OUT_reg_i_2_n_0 : STD_LOGIC;
  signal PWM_OUT_reg_i_3_n_0 : STD_LOGIC;
  signal PWM_OUT_reg_i_4_n_0 : STD_LOGIC;
  signal PWM_OUT_reg_i_5_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 20 downto 1 );
  signal \NLW_CTR0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_PWM_OUT0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PWM_OUT0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_PWM_OUT0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of PWM_OUT_reg : label is "LDP";
begin
CTR0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CTR0_carry_n_0,
      CO(2) => CTR0_carry_n_1,
      CO(1) => CTR0_carry_n_2,
      CO(0) => CTR0_carry_n_3,
      CYINIT => CTR(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => CTR(4 downto 1)
    );
\CTR0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => CTR0_carry_n_0,
      CO(3) => \CTR0_carry__0_n_0\,
      CO(2) => \CTR0_carry__0_n_1\,
      CO(1) => \CTR0_carry__0_n_2\,
      CO(0) => \CTR0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => CTR(8 downto 5)
    );
\CTR0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CTR0_carry__0_n_0\,
      CO(3) => \CTR0_carry__1_n_0\,
      CO(2) => \CTR0_carry__1_n_1\,
      CO(1) => \CTR0_carry__1_n_2\,
      CO(0) => \CTR0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => CTR(12 downto 9)
    );
\CTR0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CTR0_carry__1_n_0\,
      CO(3) => \CTR0_carry__2_n_0\,
      CO(2) => \CTR0_carry__2_n_1\,
      CO(1) => \CTR0_carry__2_n_2\,
      CO(0) => \CTR0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => CTR(16 downto 13)
    );
\CTR0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \CTR0_carry__2_n_0\,
      CO(3) => \NLW_CTR0_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \CTR0_carry__3_n_1\,
      CO(1) => \CTR0_carry__3_n_2\,
      CO(0) => \CTR0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => CTR(20 downto 17)
    );
\CTR[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CTR(0),
      O => CTR_0(0)
    );
\CTR[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \CTR[20]_i_2_n_0\,
      I1 => \CTR[20]_i_3_n_0\,
      I2 => PWM_OUT_reg_i_4_n_0,
      I3 => \CTR[20]_i_4_n_0\,
      O => \CTR[20]_i_1_n_0\
    );
\CTR[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => CTR(3),
      I1 => CTR(4),
      I2 => CTR(5),
      I3 => CTR(6),
      I4 => CTR(7),
      I5 => CTR(8),
      O => \CTR[20]_i_2_n_0\
    );
\CTR[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => CTR(15),
      I1 => CTR(9),
      I2 => CTR(10),
      I3 => CTR(0),
      I4 => CTR(1),
      I5 => CTR(2),
      O => \CTR[20]_i_3_n_0\
    );
\CTR[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => CTR(18),
      I1 => CTR(17),
      I2 => CTR(20),
      I3 => CTR(19),
      O => \CTR[20]_i_4_n_0\
    );
\CTR_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => CTR_0(0),
      Q => CTR(0),
      R => '0'
    );
\CTR_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(10),
      Q => CTR(10),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(11),
      Q => CTR(11),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(12),
      Q => CTR(12),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(13),
      Q => CTR(13),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(14),
      Q => CTR(14),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(15),
      Q => CTR(15),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(16),
      Q => CTR(16),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(17),
      Q => CTR(17),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(18),
      Q => CTR(18),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(19),
      Q => CTR(19),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(1),
      Q => CTR(1),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(20),
      Q => CTR(20),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(2),
      Q => CTR(2),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(3),
      Q => CTR(3),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(4),
      Q => CTR(4),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(5),
      Q => CTR(5),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(6),
      Q => CTR(6),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(7),
      Q => CTR(7),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(8),
      Q => CTR(8),
      R => \CTR[20]_i_1_n_0\
    );
\CTR_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => data0(9),
      Q => CTR(9),
      R => \CTR[20]_i_1_n_0\
    );
PWM_OUT0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PWM_OUT0_carry_n_0,
      CO(2) => PWM_OUT0_carry_n_1,
      CO(1) => PWM_OUT0_carry_n_2,
      CO(0) => PWM_OUT0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_PWM_OUT0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => PWM_OUT0_carry_i_1_n_0,
      S(2) => PWM_OUT0_carry_i_2_n_0,
      S(1) => PWM_OUT0_carry_i_3_n_0,
      S(0) => PWM_OUT0_carry_i_4_n_0
    );
\PWM_OUT0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => PWM_OUT0_carry_n_0,
      CO(3) => \NLW_PWM_OUT0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \PWM_OUT0_carry__0_n_1\,
      CO(1) => \PWM_OUT0_carry__0_n_2\,
      CO(0) => \PWM_OUT0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_PWM_OUT0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \PWM_OUT0_carry__0_i_1_n_0\,
      S(1) => \PWM_OUT0_carry__0_i_2_n_0\,
      S(0) => \PWM_OUT0_carry__0_i_3_n_0\
    );
\PWM_OUT0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => CTR(20),
      I1 => CTR(19),
      I2 => CTR(18),
      O => \PWM_OUT0_carry__0_i_1_n_0\
    );
\PWM_OUT0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0440"
    )
        port map (
      I0 => CTR(15),
      I1 => CTR(16),
      I2 => GPIO_IN(0),
      I3 => CTR(17),
      O => \PWM_OUT0_carry__0_i_2_n_0\
    );
\PWM_OUT0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2001"
    )
        port map (
      I0 => GPIO_IN(0),
      I1 => CTR(14),
      I2 => CTR(13),
      I3 => CTR(12),
      O => \PWM_OUT0_carry__0_i_3_n_0\
    );
PWM_OUT0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1040"
    )
        port map (
      I0 => CTR(9),
      I1 => CTR(10),
      I2 => CTR(11),
      I3 => GPIO_IN(0),
      O => PWM_OUT0_carry_i_1_n_0
    );
PWM_OUT0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1002"
    )
        port map (
      I0 => CTR(8),
      I1 => CTR(7),
      I2 => GPIO_IN(0),
      I3 => CTR(6),
      O => PWM_OUT0_carry_i_2_n_0
    );
PWM_OUT0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CTR(3),
      I1 => CTR(4),
      I2 => CTR(5),
      O => PWM_OUT0_carry_i_3_n_0
    );
PWM_OUT0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CTR(0),
      I1 => CTR(1),
      I2 => CTR(2),
      O => PWM_OUT0_carry_i_4_n_0
    );
PWM_OUT_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => '0',
      G => \PWM_OUT0_carry__0_n_1\,
      GE => '1',
      PRE => PWM_OUT_reg_i_1_n_0,
      Q => PWM_OUT
    );
PWM_OUT_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => PWM_OUT_reg_i_2_n_0,
      I1 => PWM_OUT_reg_i_3_n_0,
      I2 => PWM_OUT_reg_i_4_n_0,
      I3 => CTR(1),
      I4 => CTR(0),
      I5 => PWM_OUT_reg_i_5_n_0,
      O => PWM_OUT_reg_i_1_n_0
    );
PWM_OUT_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => CTR(17),
      I1 => CTR(18),
      I2 => CTR(10),
      I3 => CTR(15),
      I4 => CTR(20),
      I5 => CTR(19),
      O => PWM_OUT_reg_i_2_n_0
    );
PWM_OUT_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => CTR(4),
      I1 => CTR(5),
      I2 => CTR(2),
      I3 => CTR(3),
      I4 => CTR(9),
      I5 => CTR(6),
      O => PWM_OUT_reg_i_3_n_0
    );
PWM_OUT_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => CTR(16),
      I1 => CTR(11),
      I2 => CTR(12),
      I3 => CTR(13),
      I4 => CTR(14),
      O => PWM_OUT_reg_i_4_n_0
    );
PWM_OUT_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CTR(7),
      I1 => CTR(8),
      O => PWM_OUT_reg_i_5_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_BD_Plotter_Driver_v2_Top_0_1_Plotter_Driver_v2_Top is
  port (
    PWM_OUT : out STD_LOGIC;
    OUT_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    OUT_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GCK : in STD_LOGIC;
    GPIO_IN : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_BD_Plotter_Driver_v2_Top_0_1_Plotter_Driver_v2_Top : entity is "Plotter_Driver_v2_Top";
end Plotter_BD_Plotter_Driver_v2_Top_0_1_Plotter_Driver_v2_Top;

architecture STRUCTURE of Plotter_BD_Plotter_Driver_v2_Top_0_1_Plotter_Driver_v2_Top is
  signal HALFSTEPPER_GEN_2_n_0 : STD_LOGIC;
begin
HALFSTEPPER_GEN_1: entity work.Plotter_BD_Plotter_Driver_v2_Top_0_1_Halfstepper
     port map (
      GCK => GCK,
      GPIO_IN(2) => GPIO_IN(4),
      GPIO_IN(1 downto 0) => GPIO_IN(1 downto 0),
      OUT_1(3 downto 0) => OUT_1(3 downto 0),
      \Windings_sig_reg[7]_0\ => HALFSTEPPER_GEN_2_n_0
    );
HALFSTEPPER_GEN_2: entity work.Plotter_BD_Plotter_Driver_v2_Top_0_1_Halfstepper_0
     port map (
      GCK => GCK,
      GPIO_IN(2 downto 0) => GPIO_IN(4 downto 2),
      \GPIO_IN[4]\ => HALFSTEPPER_GEN_2_n_0,
      OUT_2(3 downto 0) => OUT_2(3 downto 0)
    );
SERVO_PWM_GENERATOR: entity work.Plotter_BD_Plotter_Driver_v2_Top_0_1_Servo_PWM_Gen
     port map (
      GCK => GCK,
      GPIO_IN(0) => GPIO_IN(5),
      PWM_OUT => PWM_OUT
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_BD_Plotter_Driver_v2_Top_0_1 is
  port (
    GCK : in STD_LOGIC;
    GPIO_IN : in STD_LOGIC_VECTOR ( 5 downto 0 );
    OUT_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OUT_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM_OUT : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Plotter_BD_Plotter_Driver_v2_Top_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Plotter_BD_Plotter_Driver_v2_Top_0_1 : entity is "Plotter_BD_Plotter_Driver_v2_Top_0_1,Plotter_Driver_v2_Top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Plotter_BD_Plotter_Driver_v2_Top_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Plotter_BD_Plotter_Driver_v2_Top_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Plotter_BD_Plotter_Driver_v2_Top_0_1 : entity is "Plotter_Driver_v2_Top,Vivado 2019.1";
end Plotter_BD_Plotter_Driver_v2_Top_0_1;

architecture STRUCTURE of Plotter_BD_Plotter_Driver_v2_Top_0_1 is
  signal \^out_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  OUT_1(7 downto 4) <= \^out_1\(3 downto 0);
  OUT_1(3 downto 0) <= \^out_1\(3 downto 0);
  OUT_2(7 downto 4) <= \^out_2\(3 downto 0);
  OUT_2(3 downto 0) <= \^out_2\(3 downto 0);
U0: entity work.Plotter_BD_Plotter_Driver_v2_Top_0_1_Plotter_Driver_v2_Top
     port map (
      GCK => GCK,
      GPIO_IN(5 downto 0) => GPIO_IN(5 downto 0),
      OUT_1(3 downto 0) => \^out_1\(3 downto 0),
      OUT_2(3 downto 0) => \^out_2\(3 downto 0),
      PWM_OUT => PWM_OUT
    );
end STRUCTURE;
