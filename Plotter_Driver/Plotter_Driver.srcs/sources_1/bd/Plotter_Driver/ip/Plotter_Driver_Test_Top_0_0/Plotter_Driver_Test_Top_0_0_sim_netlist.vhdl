-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu May 15 16:10:58 2025
-- Host        : BoenikeLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/benci/Documents/University/SEM4/SPROJ4/Software/Plotter_Driver/Plotter_Driver.srcs/sources_1/bd/Plotter_Driver/ip/Plotter_Driver_Test_Top_0_0/Plotter_Driver_Test_Top_0_0_sim_netlist.vhdl
-- Design      : Plotter_Driver_Test_Top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    GPIO_IN : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine : entity is "Half_Step_State_Machine";
end Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_addr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \current_addr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \current_addr[2]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_addr[0]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \current_addr[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \current_addr[2]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data[5]_i_1__0\ : label is "soft_lutpair4";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\current_addr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \current_addr[0]_i_1__0_n_0\
    );
\current_addr[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => GPIO_IN(1),
      O => \current_addr[1]_i_1__0_n_0\
    );
\current_addr[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => GPIO_IN(1),
      O => \current_addr[2]_i_1__0_n_0\
    );
\current_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GPIO_IN(0),
      CE => '1',
      D => \current_addr[0]_i_1__0_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\current_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GPIO_IN(0),
      CE => '1',
      D => \current_addr[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => '0'
    );
\current_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GPIO_IN(0),
      CE => '1',
      D => \current_addr[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => '0'
    );
\data[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    GPIO_IN : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine_1 : entity is "Half_Step_State_Machine";
end Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine_1;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \current_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_addr[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_addr[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_addr[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_addr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data[5]_i_1\ : label is "soft_lutpair0";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\current_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \current_addr[0]_i_1_n_0\
    );
\current_addr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => GPIO_IN(1),
      O => \current_addr[1]_i_1_n_0\
    );
\current_addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => GPIO_IN(1),
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
      Q => \^q\(0),
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
      Q => \^q\(1),
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
      Q => \^q\(2),
      R => '0'
    );
\data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep is
  port (
    GPIO_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    GPIO_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    GCK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep : entity is "Next_Step_Enabler_Halfstep";
end Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep is
  signal \^gpio_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3__0_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \nxt_flag_int_i_1__0_n_0\ : STD_LOGIC;
  signal \nxt_flag_int_i_2__0_n_0\ : STD_LOGIC;
  signal \nxt_flag_int_i_3__0_n_0\ : STD_LOGIC;
  signal \nxt_flag_int_i_4__0_n_0\ : STD_LOGIC;
  signal \nxt_flag_int_i_6__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_4\ : STD_LOGIC;
  signal \plusOp_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_4\ : STD_LOGIC;
  signal \plusOp_carry__2_n_5\ : STD_LOGIC;
  signal \plusOp_carry__2_n_6\ : STD_LOGIC;
  signal \plusOp_carry__2_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal stp_prev : STD_LOGIC;
  signal timer_active : STD_LOGIC;
  signal \timer_active0__0\ : STD_LOGIC;
  signal \timer_active_i_1__0_n_0\ : STD_LOGIC;
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \nxt_flag_int_i_2__0\ : label is "soft_lutpair6";
begin
  GPIO_OUT(0) <= \^gpio_out\(0);
\counter[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000077F7"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \counter_reg_n_0_[0]\,
      O => \counter[0]_i_1__0_n_0\
    );
\counter[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__1_n_6\,
      O => \counter[10]_i_1__0_n_0\
    );
\counter[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__1_n_5\,
      O => \counter[11]_i_1__0_n_0\
    );
\counter[12]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__1_n_4\,
      O => \counter[12]_i_1__0_n_0\
    );
\counter[13]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__2_n_7\,
      O => \counter[13]_i_1__0_n_0\
    );
\counter[14]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__2_n_6\,
      O => \counter[14]_i_1__0_n_0\
    );
\counter[15]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__2_n_5\,
      O => \counter[15]_i_1__0_n_0\
    );
\counter[16]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \timer_active0__0\,
      I1 => timer_active,
      O => \counter[16]_i_1__0_n_0\
    );
\counter[16]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => timer_active,
      I5 => \timer_active0__0\,
      O => \counter[16]_i_2__0_n_0\
    );
\counter[16]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__2_n_4\,
      O => \counter[16]_i_3__0_n_0\
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => plusOp_carry_n_7,
      O => \counter[1]_i_1__0_n_0\
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => plusOp_carry_n_6,
      O => \counter[2]_i_1__0_n_0\
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => plusOp_carry_n_5,
      O => \counter[3]_i_1__0_n_0\
    );
\counter[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => plusOp_carry_n_4,
      O => \counter[4]_i_1__0_n_0\
    );
\counter[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__0_n_7\,
      O => \counter[5]_i_1__0_n_0\
    );
\counter[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__0_n_6\,
      O => \counter[6]_i_1__0_n_0\
    );
\counter[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__0_n_5\,
      O => \counter[7]_i_1__0_n_0\
    );
\counter[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__0_n_4\,
      O => \counter[8]_i_1__0_n_0\
    );
\counter[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => \plusOp_carry__1_n_7\,
      O => \counter[9]_i_1__0_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[0]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[10]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[10]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[11]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[11]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[12]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[12]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[13]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[13]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[14]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[14]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[15]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[15]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[16]_i_3__0_n_0\,
      Q => \counter_reg_n_0_[16]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[1]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[2]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[3]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[3]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[4]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[4]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[5]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[5]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[6]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[6]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[7]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[7]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[8]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[8]\,
      R => \counter[16]_i_1__0_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2__0_n_0\,
      D => \counter[9]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[9]\,
      R => \counter[16]_i_1__0_n_0\
    );
\nxt_flag_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A200FFFFA200A200"
    )
        port map (
      I0 => \nxt_flag_int_i_2__0_n_0\,
      I1 => \nxt_flag_int_i_3__0_n_0\,
      I2 => \nxt_flag_int_i_4__0_n_0\,
      I3 => timer_active,
      I4 => \timer_active0__0\,
      I5 => \^gpio_out\(0),
      O => \nxt_flag_int_i_1__0_n_0\
    );
\nxt_flag_int_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      O => \nxt_flag_int_i_2__0_n_0\
    );
\nxt_flag_int_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1055FFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[8]\,
      I1 => \counter_reg_n_0_[6]\,
      I2 => \nxt_flag_int_i_6__0_n_0\,
      I3 => \counter_reg_n_0_[7]\,
      I4 => \counter_reg_n_0_[10]\,
      I5 => \counter_reg_n_0_[9]\,
      O => \nxt_flag_int_i_3__0_n_0\
    );
\nxt_flag_int_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[12]\,
      I1 => \counter_reg_n_0_[11]\,
      I2 => \counter_reg_n_0_[14]\,
      I3 => \counter_reg_n_0_[13]\,
      O => \nxt_flag_int_i_4__0_n_0\
    );
\nxt_flag_int_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => GPIO_IN(0),
      I1 => stp_prev,
      O => \timer_active0__0\
    );
\nxt_flag_int_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111FFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[2]\,
      I1 => \counter_reg_n_0_[3]\,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[0]\,
      I4 => \counter_reg_n_0_[5]\,
      I5 => \counter_reg_n_0_[4]\,
      O => \nxt_flag_int_i_6__0_n_0\
    );
nxt_flag_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => \nxt_flag_int_i_1__0_n_0\,
      Q => \^gpio_out\(0),
      R => '0'
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3) => \counter_reg_n_0_[4]\,
      S(2) => \counter_reg_n_0_[3]\,
      S(1) => \counter_reg_n_0_[2]\,
      S(0) => \counter_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3) => \counter_reg_n_0_[8]\,
      S(2) => \counter_reg_n_0_[7]\,
      S(1) => \counter_reg_n_0_[6]\,
      S(0) => \counter_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__1_n_4\,
      O(2) => \plusOp_carry__1_n_5\,
      O(1) => \plusOp_carry__1_n_6\,
      O(0) => \plusOp_carry__1_n_7\,
      S(3) => \counter_reg_n_0_[12]\,
      S(2) => \counter_reg_n_0_[11]\,
      S(1) => \counter_reg_n_0_[10]\,
      S(0) => \counter_reg_n_0_[9]\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__2_n_4\,
      O(2) => \plusOp_carry__2_n_5\,
      O(1) => \plusOp_carry__2_n_6\,
      O(0) => \plusOp_carry__2_n_7\,
      S(3) => \counter_reg_n_0_[16]\,
      S(2) => \counter_reg_n_0_[15]\,
      S(1) => \counter_reg_n_0_[14]\,
      S(0) => \counter_reg_n_0_[13]\
    );
stp_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => GPIO_IN(0),
      Q => stp_prev,
      R => '0'
    );
\timer_active_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7FFFF77F70000"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[16]\,
      I2 => \nxt_flag_int_i_3__0_n_0\,
      I3 => \nxt_flag_int_i_4__0_n_0\,
      I4 => timer_active,
      I5 => \timer_active0__0\,
      O => \timer_active_i_1__0_n_0\
    );
timer_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => \timer_active_i_1__0_n_0\,
      Q => timer_active,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep_2 is
  port (
    GPIO_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    GPIO_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    GCK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep_2 : entity is "Next_Step_Enabler_Halfstep";
end Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep_2;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep_2 is
  signal \^gpio_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal counter : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter[9]_i_1_n_0\ : STD_LOGIC;
  signal nxt_flag_int_i_1_n_0 : STD_LOGIC;
  signal nxt_flag_int_i_2_n_0 : STD_LOGIC;
  signal nxt_flag_int_i_3_n_0 : STD_LOGIC;
  signal nxt_flag_int_i_4_n_0 : STD_LOGIC;
  signal nxt_flag_int_i_6_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal stp_prev : STD_LOGIC;
  signal timer_active : STD_LOGIC;
  signal \timer_active0__0\ : STD_LOGIC;
  signal timer_active_i_1_n_0 : STD_LOGIC;
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of nxt_flag_int_i_2 : label is "soft_lutpair2";
begin
  GPIO_OUT(0) <= \^gpio_out\(0);
\counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000077F7"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => counter(0),
      O => \counter[0]_i_1_n_0\
    );
\counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(10),
      O => \counter[10]_i_1_n_0\
    );
\counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(11),
      O => \counter[11]_i_1_n_0\
    );
\counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(12),
      O => \counter[12]_i_1_n_0\
    );
\counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(13),
      O => \counter[13]_i_1_n_0\
    );
\counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(14),
      O => \counter[14]_i_1_n_0\
    );
\counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(15),
      O => \counter[15]_i_1_n_0\
    );
\counter[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \timer_active0__0\,
      I1 => timer_active,
      O => \counter[16]_i_1_n_0\
    );
\counter[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => timer_active,
      I5 => \timer_active0__0\,
      O => \counter[16]_i_2_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(16),
      O => \counter[16]_i_3_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(2),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(3),
      O => \counter[3]_i_1_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(4),
      O => \counter[4]_i_1_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(5),
      O => \counter[5]_i_1_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(6),
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(7),
      O => \counter[7]_i_1_n_0\
    );
\counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(8),
      O => \counter[8]_i_1_n_0\
    );
\counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => plusOp(9),
      O => \counter[9]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[0]_i_1_n_0\,
      Q => counter(0),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[10]_i_1_n_0\,
      Q => counter(10),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[11]_i_1_n_0\,
      Q => counter(11),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[12]_i_1_n_0\,
      Q => counter(12),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[13]_i_1_n_0\,
      Q => counter(13),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[14]_i_1_n_0\,
      Q => counter(14),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[15]_i_1_n_0\,
      Q => counter(15),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[16]_i_3_n_0\,
      Q => counter(16),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[1]_i_1_n_0\,
      Q => counter(1),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[2]_i_1_n_0\,
      Q => counter(2),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[3]_i_1_n_0\,
      Q => counter(3),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[4]_i_1_n_0\,
      Q => counter(4),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[5]_i_1_n_0\,
      Q => counter(5),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[6]_i_1_n_0\,
      Q => counter(6),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[7]_i_1_n_0\,
      Q => counter(7),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[8]_i_1_n_0\,
      Q => counter(8),
      R => \counter[16]_i_1_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => \counter[16]_i_2_n_0\,
      D => \counter[9]_i_1_n_0\,
      Q => counter(9),
      R => \counter[16]_i_1_n_0\
    );
nxt_flag_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A200FFFFA200A200"
    )
        port map (
      I0 => nxt_flag_int_i_2_n_0,
      I1 => nxt_flag_int_i_3_n_0,
      I2 => nxt_flag_int_i_4_n_0,
      I3 => timer_active,
      I4 => \timer_active0__0\,
      I5 => \^gpio_out\(0),
      O => nxt_flag_int_i_1_n_0
    );
nxt_flag_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      O => nxt_flag_int_i_2_n_0
    );
nxt_flag_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1055FFFFFFFFFFFF"
    )
        port map (
      I0 => counter(8),
      I1 => counter(6),
      I2 => nxt_flag_int_i_6_n_0,
      I3 => counter(7),
      I4 => counter(10),
      I5 => counter(9),
      O => nxt_flag_int_i_3_n_0
    );
nxt_flag_int_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(12),
      I1 => counter(11),
      I2 => counter(14),
      I3 => counter(13),
      O => nxt_flag_int_i_4_n_0
    );
nxt_flag_int_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => GPIO_IN(0),
      I1 => stp_prev,
      O => \timer_active0__0\
    );
nxt_flag_int_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111FFFFFFFFFFFF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(1),
      I3 => counter(0),
      I4 => counter(5),
      I5 => counter(4),
      O => nxt_flag_int_i_6_n_0
    );
nxt_flag_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => GCK,
      CE => '1',
      D => nxt_flag_int_i_1_n_0,
      Q => \^gpio_out\(0),
      R => '0'
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
stp_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => GPIO_IN(0),
      Q => stp_prev,
      R => '0'
    );
timer_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77F7FFFF77F70000"
    )
        port map (
      I0 => counter(15),
      I1 => counter(16),
      I2 => nxt_flag_int_i_3_n_0,
      I3 => nxt_flag_int_i_4_n_0,
      I4 => timer_active,
      I5 => \timer_active0__0\,
      O => timer_active_i_1_n_0
    );
timer_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => GCK,
      CE => '1',
      D => timer_active_i_1_n_0,
      Q => timer_active,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_Driver_Test_Top_0_0_Servo_PWM is
  port (
    PWM_OUT : out STD_LOGIC;
    GCK : in STD_LOGIC;
    GPIO_IN : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_Driver_Test_Top_0_0_Servo_PWM : entity is "Servo_PWM";
end Plotter_Driver_Test_Top_0_0_Servo_PWM;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0_Servo_PWM is
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CTR[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \CTR[20]_i_3\ : label is "soft_lutpair8";
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
\CTR[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \CTR[20]_i_2_n_0\,
      I1 => CTR(15),
      I2 => CTR(9),
      I3 => CTR(10),
      I4 => \CTR[20]_i_3_n_0\,
      I5 => \CTR[20]_i_4_n_0\,
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
\CTR[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => CTR(2),
      I1 => CTR(1),
      I2 => CTR(0),
      O => \CTR[20]_i_3_n_0\
    );
\CTR[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => CTR(19),
      I1 => CTR(20),
      I2 => CTR(17),
      I3 => CTR(18),
      I4 => PWM_OUT_reg_i_4_n_0,
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
entity Plotter_Driver_Test_Top_0_0_half_step_rom is
  port (
    \GPIO_IN[4]\ : out STD_LOGIC;
    OUT_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GPIO_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    GCK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_Driver_Test_Top_0_0_half_step_rom : entity is "half_step_rom";
end Plotter_Driver_Test_Top_0_0_half_step_rom;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0_half_step_rom is
  signal \^gpio_in[4]\ : STD_LOGIC;
  signal \data[4]_i_1_n_0\ : STD_LOGIC;
  signal \data[6]_i_1_n_0\ : STD_LOGIC;
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data[7]_i_1\ : label is "soft_lutpair7";
begin
  \GPIO_IN[4]\ <= \^gpio_in[4]\;
\data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"89"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      O => \data[4]_i_1_n_0\
    );
\data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      O => \data[6]_i_1_n_0\
    );
\data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      O => \data[7]_i_1_n_0\
    );
\data[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => GPIO_IN(0),
      O => \^gpio_in[4]\
    );
\data_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => \data[4]_i_1_n_0\,
      PRE => \^gpio_in[4]\,
      Q => OUT_2(0)
    );
\data_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => D(0),
      PRE => \^gpio_in[4]\,
      Q => OUT_2(1)
    );
\data_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => \data[6]_i_1_n_0\,
      PRE => \^gpio_in[4]\,
      Q => OUT_2(2)
    );
\data_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => \data[7]_i_1_n_0\,
      PRE => \^gpio_in[4]\,
      Q => OUT_2(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_Driver_Test_Top_0_0_half_step_rom_3 is
  port (
    OUT_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GCK : in STD_LOGIC;
    \data_reg[6]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_Driver_Test_Top_0_0_half_step_rom_3 : entity is "half_step_rom";
end Plotter_Driver_Test_Top_0_0_half_step_rom_3;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0_half_step_rom_3 is
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data[7]_i_1\ : label is "soft_lutpair3";
begin
\data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"89"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      O => p_0_in(4)
    );
\data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"26"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => Q(0),
      O => p_0_in(6)
    );
\data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      O => p_0_in(7)
    );
\data_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => p_0_in(4),
      PRE => \data_reg[6]_0\,
      Q => OUT_1(0)
    );
\data_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => D(0),
      PRE => \data_reg[6]_0\,
      Q => OUT_1(1)
    );
\data_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => p_0_in(6),
      PRE => \data_reg[6]_0\,
      Q => OUT_1(2)
    );
\data_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => GCK,
      CE => '1',
      D => p_0_in(7),
      PRE => \data_reg[6]_0\,
      Q => OUT_1(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_Driver_Test_Top_0_0_Half_Stepping_Top is
  port (
    GPIO_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    OUT_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GPIO_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    GCK : in STD_LOGIC;
    \data_reg[6]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_Driver_Test_Top_0_0_Half_Stepping_Top : entity is "Half_Stepping_Top";
end Plotter_Driver_Test_Top_0_0_Half_Stepping_Top;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0_Half_Stepping_Top is
  signal A : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Half_Stepper_Generator_n_0 : STD_LOGIC;
begin
Half_Stepper_Generator: entity work.Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine_1
     port map (
      D(0) => Half_Stepper_Generator_n_0,
      GPIO_IN(1 downto 0) => GPIO_IN(1 downto 0),
      Q(2 downto 0) => A(2 downto 0)
    );
Next_Step_Cooldown: entity work.Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep_2
     port map (
      GCK => GCK,
      GPIO_IN(0) => GPIO_IN(0),
      GPIO_OUT(0) => GPIO_OUT(0)
    );
rom_inst: entity work.Plotter_Driver_Test_Top_0_0_half_step_rom_3
     port map (
      D(0) => Half_Stepper_Generator_n_0,
      GCK => GCK,
      OUT_1(3 downto 0) => OUT_1(3 downto 0),
      Q(2 downto 0) => A(2 downto 0),
      \data_reg[6]_0\ => \data_reg[6]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_Driver_Test_Top_0_0_Half_Stepping_Top_0 is
  port (
    GPIO_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GPIO_IN[4]\ : out STD_LOGIC;
    OUT_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GPIO_IN : in STD_LOGIC_VECTOR ( 2 downto 0 );
    GCK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_Driver_Test_Top_0_0_Half_Stepping_Top_0 : entity is "Half_Stepping_Top";
end Plotter_Driver_Test_Top_0_0_Half_Stepping_Top_0;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0_Half_Stepping_Top_0 is
  signal Half_Stepper_Generator_n_0 : STD_LOGIC;
  signal Half_Stepper_Generator_n_1 : STD_LOGIC;
  signal Half_Stepper_Generator_n_2 : STD_LOGIC;
  signal Half_Stepper_Generator_n_3 : STD_LOGIC;
begin
Half_Stepper_Generator: entity work.Plotter_Driver_Test_Top_0_0_Half_Step_State_Machine
     port map (
      D(0) => Half_Stepper_Generator_n_0,
      GPIO_IN(1 downto 0) => GPIO_IN(1 downto 0),
      Q(2) => Half_Stepper_Generator_n_1,
      Q(1) => Half_Stepper_Generator_n_2,
      Q(0) => Half_Stepper_Generator_n_3
    );
Next_Step_Cooldown: entity work.Plotter_Driver_Test_Top_0_0_Next_Step_Enabler_Halfstep
     port map (
      GCK => GCK,
      GPIO_IN(0) => GPIO_IN(0),
      GPIO_OUT(0) => GPIO_OUT(0)
    );
rom_inst: entity work.Plotter_Driver_Test_Top_0_0_half_step_rom
     port map (
      D(0) => Half_Stepper_Generator_n_0,
      GCK => GCK,
      GPIO_IN(0) => GPIO_IN(2),
      \GPIO_IN[4]\ => \GPIO_IN[4]\,
      OUT_2(3 downto 0) => OUT_2(3 downto 0),
      Q(2) => Half_Stepper_Generator_n_1,
      Q(1) => Half_Stepper_Generator_n_2,
      Q(0) => Half_Stepper_Generator_n_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Plotter_Driver_Test_Top_0_0_Test_Top is
  port (
    PWM_OUT : out STD_LOGIC;
    OUT_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    OUT_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    GPIO_OUT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    GCK : in STD_LOGIC;
    GPIO_IN : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Plotter_Driver_Test_Top_0_0_Test_Top : entity is "Test_Top";
end Plotter_Driver_Test_Top_0_0_Test_Top;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0_Test_Top is
  signal HALFSTEPPER_GEN_2_n_1 : STD_LOGIC;
begin
HALFSTEPPER_GEN_1: entity work.Plotter_Driver_Test_Top_0_0_Half_Stepping_Top
     port map (
      GCK => GCK,
      GPIO_IN(1 downto 0) => GPIO_IN(1 downto 0),
      GPIO_OUT(0) => GPIO_OUT(0),
      OUT_1(3 downto 0) => OUT_1(3 downto 0),
      \data_reg[6]\ => HALFSTEPPER_GEN_2_n_1
    );
HALFSTEPPER_GEN_2: entity work.Plotter_Driver_Test_Top_0_0_Half_Stepping_Top_0
     port map (
      GCK => GCK,
      GPIO_IN(2 downto 0) => GPIO_IN(4 downto 2),
      \GPIO_IN[4]\ => HALFSTEPPER_GEN_2_n_1,
      GPIO_OUT(0) => GPIO_OUT(1),
      OUT_2(3 downto 0) => OUT_2(3 downto 0)
    );
SERVO_PWM_GEN: entity work.Plotter_Driver_Test_Top_0_0_Servo_PWM
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
entity Plotter_Driver_Test_Top_0_0 is
  port (
    GCK : in STD_LOGIC;
    GPIO_IN : in STD_LOGIC_VECTOR ( 5 downto 0 );
    GPIO_OUT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OUT_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OUT_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM_OUT : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Plotter_Driver_Test_Top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Plotter_Driver_Test_Top_0_0 : entity is "Plotter_Driver_Test_Top_0_0,Test_Top,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Plotter_Driver_Test_Top_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Plotter_Driver_Test_Top_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Plotter_Driver_Test_Top_0_0 : entity is "Test_Top,Vivado 2019.1";
end Plotter_Driver_Test_Top_0_0;

architecture STRUCTURE of Plotter_Driver_Test_Top_0_0 is
  signal \^out_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  OUT_1(7 downto 4) <= \^out_1\(3 downto 0);
  OUT_1(3 downto 0) <= \^out_1\(3 downto 0);
  OUT_2(7 downto 4) <= \^out_2\(3 downto 0);
  OUT_2(3 downto 0) <= \^out_2\(3 downto 0);
U0: entity work.Plotter_Driver_Test_Top_0_0_Test_Top
     port map (
      GCK => GCK,
      GPIO_IN(5 downto 0) => GPIO_IN(5 downto 0),
      GPIO_OUT(1 downto 0) => GPIO_OUT(1 downto 0),
      OUT_1(3 downto 0) => \^out_1\(3 downto 0),
      OUT_2(3 downto 0) => \^out_2\(3 downto 0),
      PWM_OUT => PWM_OUT
    );
end STRUCTURE;
