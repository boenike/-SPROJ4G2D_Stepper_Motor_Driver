library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Half_Stepping_TB is
--  Port ( );
end Half_Stepping_TB;

architecture Behavioral of Half_Stepping_TB is
    Component Halfstepper is
        Port (
            GCK : in STD_LOGIC;     -- 100MHz General Clock
            STP : in STD_LOGIC;     -- Step signal
            EN : in STD_LOGIC;      -- Output Enable
            DIR : in STD_LOGIC;     -- Motor direction
            OUTPUTS : out STD_LOGIC_VECTOR(7 downto 0)  -- Output windings
        );
    end Component;

    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
    constant waitPeriod     : time    := 1.1 ms;

    Signal GCK: STD_LOGIC := '0' ;
    Signal STP: STD_LOGIC := '0' ;
    Signal DIR: STD_LOGIC := '1' ;  -- Forward
    Signal EN: STD_LOGIC := '1' ;   -- Output Enabled
    Signal OUTPUTS : STD_LOGIC_VECTOR (7 downto 0);

    begin

        uut: Halfstepper Port map
        (DIR=>DIR, EN=>EN, STP=>STP, GCK=>GCK, OUTPUTS=>OUTPUTS);
    
        CLOCK: process (GCK) is
            begin
                -- Process for generating the clock
                GCK <= not GCK after ClockPeriod / 2;
        end process CLOCK;
        
        Testbench: process is
            begin
                wait for 50us;
                
                For_Up: for i in 0 to 7 loop
                    STP <= '1';
                    wait for 1us;
                    STP <= '0';
                    wait for waitPeriod;
                end loop For_Up;
                
                DIR <= '0'; -- Backward
                
                For_Down: for i in 0 to 7 loop
                    STP <= '1';
                    wait for 1us;
                    STP <= '0';
                    wait for waitPeriod;
                end loop For_Down;
                
                wait for 2ms;
                EN <= '0';
                wait for 2ms;
                DIR <= '1'; -- Forward
                EN <= '1';
                wait for 2ms;
                wait;
        end process Testbench;
end Behavioral;