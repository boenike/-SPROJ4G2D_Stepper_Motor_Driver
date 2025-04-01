library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Servo_Test_TB is
--  Port ( );
end Servo_Test_TB;

architecture Behavioral of Servo_Test_TB is
    Component Servo_Test is
        Port ( CLK_IN , EN , POS : in STD_LOGIC; -- Input Clock and Reset Signal
               PWM_OUT : out STD_LOGIC -- Divided Clock Output
        );
    end Component;
    
    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
    constant waitPeriod     : time    := 20ms;

    Signal CLK_IN : STD_LOGIC := '0';
    Signal POS : STD_LOGIC := '0';
    Signal EN : STD_LOGIC := '1';
    Signal PWM_OUT : STD_LOGIC;
    
    begin
        uut: Servo_Test Port map
        (CLK_IN=>CLK_IN, EN=>EN, POS=>POS, PWM_OUT=>PWM_OUT);

        CLOCK: process (CLK_IN) is
            begin
                -- Process for generating the clock
                CLK_IN <= not CLK_IN after ClockPeriod / 2;
        end process CLOCK;
        
        TB: process is
            begin
                wait for 30 ms;
                    POS <= '1';
                wait for 3*waitPeriod ;
                    EN <= '0';
        end process;
        
end Behavioral;