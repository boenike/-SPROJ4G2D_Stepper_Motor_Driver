library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Microstepper_TB is
--  Port ( );
end Microstepper_TB;

architecture Behavioral of Microstepper_TB is

    Component Microstepper_Top is
        Port ( GCK, EN, DIR, STP : in STD_LOGIC;
               --NXT_FLAG : out STD_LOGIC;
               PCH_OUT : out STD_LOGIC_VECTOR (3 downto 0);
               NCH_OUT : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end Component;

    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
    constant waitPeriod     : time    := 9.1 ms;
    
    Signal GCK: STD_LOGIC := '1' ;
    Signal STP: STD_LOGIC := '0' ;
    Signal DIR: STD_LOGIC := '0' ;
    Signal EN: STD_LOGIC := '1' ;   -- Output Enabled
    Signal NCH_OUT : STD_LOGIC_VECTOR (3 downto 0);
    Signal PCH_OUT : STD_LOGIC_VECTOR (3 downto 0);
    --Signal NXT_FLAG: STD_LOGIC ;

    begin
        uut: Microstepper_Top Port map
        (DIR=>DIR, EN=>EN, GCK=>GCK, STP=>STP, NCH_OUT=>NCH_OUT, PCH_OUT=>PCH_OUT);
    
        CLOCK: process (GCK) is
            begin
                -- Process for generating the clock
                GCK <= not GCK after ClockPeriod / 2;
        end process CLOCK;
        
        Testbench: process is
            begin
                wait for 500us;
                
                Up_Loop: for k in 0 to 10 loop
                    STP <= '1';
                    wait for 300ns;
                    STP <= '0';
                    wait for waitPeriod;
                end loop Up_Loop;
                
                DIR <= '1';
                wait for 1ms;
                
                Down_Loop: for k in 0 to 12 loop
                    STP <= '1';
                    wait for 300ns;
                    STP <= '0';
                    wait for waitPeriod;
                end loop Down_Loop;
                
                wait for 5ms;
                EN <= '0';
                wait for 2ms;
                EN <= '1';
                wait for 2ms;
                wait;
                end process Testbench;
end Behavioral;