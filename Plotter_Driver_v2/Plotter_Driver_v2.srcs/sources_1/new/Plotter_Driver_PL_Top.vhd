----------------------------------------------------------------------------------
-- Educational institution: SDU Sonderborg 
-- Engineer: Bence Toth
-- Date: 20.05.2025
-- Design Name: SPROJEE4G2D Plotter Driver PL Top level file
-- Project Name: SPROJ4EEG2D - 2D Plotter
-- Target Device: Digilent Zynq ZedBoard Development kit
-- Description: This project intends to integrate the necessary VHDL components
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Plotter_Driver_v2_Top is
    Port (
        GCK : in STD_LOGIC;                             -- 100MHz General Clock
        GPIO_IN : in STD_LOGIC_VECTOR(5 downto 0);      -- Input signals from PS-side
        OUT_1 : out STD_LOGIC_VECTOR (7 downto 0);      -- Output windings for Stepper Motor #1
        OUT_2 : out STD_LOGIC_VECTOR (7 downto 0);      -- Output windings for Stepper Motor #2
        PWM_OUT : out STD_LOGIC                         -- Output signal for Servo Motor
    );
end Plotter_Driver_v2_Top;

architecture Architectural of Plotter_Driver_v2_Top is

    Signal DIR_1 : STD_LOGIC;
    Signal DIR_2 :  STD_LOGIC;
    Signal STP_1 :  STD_LOGIC;
    Signal STP_2 :  STD_LOGIC;
    Signal EN :  STD_LOGIC;
    Signal POS_SERVO :  STD_LOGIC;

    Component Servo_PWM_Gen is
        Port (
            GCK : in STD_LOGIC;     -- 100MHz General Clock
            POS : in STD_LOGIC;     -- Position selector
            PWM_OUT : out STD_LOGIC -- Servo motor output PWM signal
        );
    end Component;
    
    Component Halfstepper is
        Port (
            GCK : in STD_LOGIC;     -- 100MHz General Clock
            STP : in STD_LOGIC;     -- Step signal
            EN : in STD_LOGIC;      -- Output Enable
            DIR : in STD_LOGIC;     -- Motor direction
            OUTPUTS : out STD_LOGIC_VECTOR(7 downto 0)  -- Output windings
        );
    end Component;

    begin
        STP_1 <= GPIO_IN(0);
        DIR_1  <= GPIO_IN(1);
        STP_2 <= GPIO_IN(2);
        DIR_2  <= GPIO_IN(3);
        
        EN <= GPIO_IN(4);
        POS_SERVO <= GPIO_IN(5);
    
        SERVO_PWM_GENERATOR: Servo_PWM_Gen Port map
        (GCK=>GCK, POS=>POS_SERVO, PWM_OUT=>PWM_OUT);
        
        HALFSTEPPER_GEN_1: Halfstepper Port map
        (DIR=>DIR_1, GCK=>GCK, EN=>EN, STP=>STP_1, OUTPUTS=>OUT_1);
        
        HALFSTEPPER_GEN_2: Halfstepper Port map
        (DIR=>DIR_2, GCK=>GCK, EN=>EN, STP=>STP_2, OUTPUTS=>OUT_2);

end Architectural;