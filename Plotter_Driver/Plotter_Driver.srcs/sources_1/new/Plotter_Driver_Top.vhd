----------------------------------------------------------------------------------
-- Educational institution: SDU Sonderborg 
-- Engineer: Bence Toth
-- Create Date: 08.05.2025 14:46:31
-- Design Name: SPROJEE4G2D Functionality Test
-- Module Name: Comparison_Test_Top - Architectural
-- Project Name: SPROJ4EEG2D - 2D Plotter
-- Target Devices: Zynq ZedBoard
-- Description: This project intends to test both Halfstepping,
-- as well as the Servo on the designed PCB 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Test_Top is
    Port ( GCK : in STD_LOGIC;
           GPIO_IN : in STD_LOGIC_VECTOR(5 downto 0);
           GPIO_OUT : out STD_LOGIC_VECTOR(1 downto 0);
           OUT_1 : out STD_LOGIC_VECTOR (7 downto 0);
           OUT_2 : out STD_LOGIC_VECTOR (7 downto 0);
           PWM_OUT : out STD_LOGIC
           );
end Test_Top;

architecture Architectural of Test_Top is

    Signal DIR_1 : STD_LOGIC;
    Signal DIR_2 :  STD_LOGIC;
    Signal STP_1 :  STD_LOGIC;
    Signal STP_2 :  STD_LOGIC;
    Signal EN :  STD_LOGIC;
    Signal POS_SERVO :  STD_LOGIC;
    Signal NXT_1 :  STD_LOGIC;
    Signal NXT_2 :  std_logic;

    Component Servo_PWM is
        Port ( CLK_IN , POS : in STD_LOGIC; -- Input Clock and Reset Signal
               PWM_OUT : out STD_LOGIC -- Divided Clock Output
        );
    end Component;
    
    Component Half_Stepping_Top is
        Port ( DIR , GCK , EN, STP : in STD_LOGIC;
               NXT_FLAG : out STD_LOGIC;
               OUTPUT : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end Component;

    begin
        STP_1 <= GPIO_IN(0);
        DIR_1  <= GPIO_IN(1);
        STP_2 <= GPIO_IN(2);
        DIR_2  <= GPIO_IN(3);
        
        EN <= GPIO_IN(4);
        POS_SERVO <= GPIO_IN(5);
    
        SERVO_PWM_GEN: Servo_PWM Port map
        (CLK_IN=>GCK, POS=>POS_SERVO, PWM_OUT=>PWM_OUT);
        
        HALFSTEPPER_GEN_1: Half_Stepping_Top Port map
        (DIR=>DIR_1, GCK=>GCK, EN=>EN, STP=>STP_1, NXT_FLAG=>NXT_1, OUTPUT=>OUT_1);
        
        HALFSTEPPER_GEN_2: Half_Stepping_Top Port map
        (DIR=>DIR_2, GCK=>GCK, EN=>EN, STP=>STP_2, NXT_FLAG=>NXT_2, OUTPUT=>OUT_2);
        
        GPIO_OUT(0) <= NXT_1;
        GPIO_OUT(1) <= NXT_2;

end Architectural;