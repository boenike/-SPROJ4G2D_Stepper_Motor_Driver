-- This file describes the PWM signal generation for driving the Servo Motor
-- Author: Bence Toth
-- Last modified: 20.05.2025

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Servo_PWM_Gen is
    Generic ( POS_DOWN : integer := 80000;  -- pulse count for downward position
              POS_UP : integer := 200000    -- pulse count for upward position
    );
    Port (
        GCK : in STD_LOGIC;     -- 100MHz General Clock
        POS : in STD_LOGIC;     -- Position selector
        PWM_OUT : out STD_LOGIC -- Servo motor output PWM signal
    );
end Servo_PWM_Gen;

architecture Behavioral of Servo_PWM_Gen is
    constant PERIOD : integer := 2000000;  -- 200us total period
    constant  MAX_POS : integer := 250000;  -- pulse width for 180 degree angle
    signal CTR : integer range 0 to PERIOD := (PERIOD-1);
    signal POS_SEL : integer range 0 to MAX_POS := POS_UP;
    
    begin
        Pos_Selector: process (POS) is
            begin
                case POS is
                    when '0' =>
                        POS_SEL <= POS_UP;
                    when '1' =>
                        POS_SEL <= POS_DOWN;
                    when others => null;
                end case;
        end process Pos_Selector;

        Period_Gen: process(GCK, POS_SEL) is
            begin
                if rising_edge(GCK) then
                    if (CTR = (PERIOD-1)) then
                        CTR <= 0;
                    else
                        CTR <= CTR + 1;
                    end if;
                end if;
        end process Period_Gen;

        Duty_Cycle_Gen: process (CTR) is
            begin
                if (CTR = 0) then
                    PWM_OUT <= '1';
                elsif (CTR = (POS_SEL-1)) then
                    PWM_OUT <= '0';
                end if;
        end process Duty_Cycle_Gen;
end Behavioral;