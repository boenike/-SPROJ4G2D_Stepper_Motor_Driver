-- This file describes the PWM signal simulation for driving the Servo Motor
-- Author: Bence Toth
-- Last modified: 30.05.2025

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Servo_Test_TB is
--  Port ( );
end Servo_Test_TB;

architecture Behavioral of Servo_Test_TB is
    Component Servo_PWM_Gen is
        Port (
            GCK : in STD_LOGIC;     -- 100MHz General Clock
            POS : in STD_LOGIC;     -- Position selector
            PWM_OUT : out STD_LOGIC -- Servo motor output PWM signal
        );
    end Component;
    
    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
    constant waitPeriod     : time    := 20ms;

    Signal GCK : STD_LOGIC := '0';
    Signal POS : STD_LOGIC := '0';
    Signal PWM_OUT : STD_LOGIC;
    
    begin
        uut: Servo_PWM_Gen Port map
        (GCK=>GCK, POS=>POS, PWM_OUT=>PWM_OUT);

        CLOCK: process (GCK) is
            begin
                -- Process for generating the clock
                GCK <= not GCK after ClockPeriod / 2;
        end process CLOCK;
        
        Test_Bench: process is
            begin
                wait for 3*waitPeriod;
                wait for 2ms;
                POS <= '1';
                wait for 3*waitPeriod;
                wait for 2ms;
                POS <= '0';
                wait for 3*waitPeriod;
                wait;
        end process Test_Bench;
        
end Behavioral;