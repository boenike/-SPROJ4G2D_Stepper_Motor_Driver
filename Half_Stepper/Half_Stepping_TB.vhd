library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Half_Stepping_TB is
--  Port ( );
end Half_Stepping_TB;

architecture Behavioral of Half_Stepping_TB is
    Component Half_Stepping_Top is
        Port ( DIR , GCK , EN : in STD_LOGIC;
               NXT_FLAG : out STD_LOGIC;
               OUTPUT : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end Component;

    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
    constant waitPeriod     : time    := 8.7 ms;

    Signal GCK: STD_LOGIC := '1' ;
    Signal DIR: STD_LOGIC := '1' ;  -- Forward
    Signal EN: STD_LOGIC := '1' ;   -- Output Enabled
    Signal OUTPUT : STD_LOGIC_VECTOR (7 downto 0);
    Signal NXT_FLAG: STD_LOGIC ;

    begin

        uut: Half_Stepping_Top Port map
        (DIR=>DIR, EN=>EN, GCK=>GCK, OUTPUT=>OUTPUT, NXT_FLAG=>NXT_FLAG);
    
        CLOCK: process (GCK) is
            begin
                -- Process for generating the clock
                GCK <= not GCK after ClockPeriod / 2;
        end process CLOCK;
        
        Testbench: process is
            begin
                wait for 8*waitPeriod;
                    DIR <= '0';
                wait for 4*waitPeriod;
                    DIR <= '1';
                    EN <= '0';
                wait for 8*waitPeriod;
                    EN <= '1';
                wait;
        end process Testbench;
end Behavioral;