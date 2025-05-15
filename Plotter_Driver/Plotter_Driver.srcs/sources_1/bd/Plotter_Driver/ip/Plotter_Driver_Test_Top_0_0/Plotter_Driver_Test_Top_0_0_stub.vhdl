-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu May 15 16:10:58 2025
-- Host        : BoenikeLaptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/benci/Documents/University/SEM4/SPROJ4/Software/Plotter_Driver/Plotter_Driver.srcs/sources_1/bd/Plotter_Driver/ip/Plotter_Driver_Test_Top_0_0/Plotter_Driver_Test_Top_0_0_stub.vhdl
-- Design      : Plotter_Driver_Test_Top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Plotter_Driver_Test_Top_0_0 is
  Port ( 
    GCK : in STD_LOGIC;
    GPIO_IN : in STD_LOGIC_VECTOR ( 5 downto 0 );
    GPIO_OUT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OUT_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    OUT_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PWM_OUT : out STD_LOGIC
  );

end Plotter_Driver_Test_Top_0_0;

architecture stub of Plotter_Driver_Test_Top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "GCK,GPIO_IN[5:0],GPIO_OUT[1:0],OUT_1[7:0],OUT_2[7:0],PWM_OUT";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Test_Top,Vivado 2019.1";
begin
end;
