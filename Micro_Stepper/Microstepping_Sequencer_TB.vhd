library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Microstepping_Sequencer_TB is
--  Port ( );
end Microstepping_Sequencer_TB;

architecture Behavioral of Microstepping_Sequencer_TB is
    Component Microstepping_Sequencer is
        Port (
            STP_EN : STD_LOGIC;  -- Enable STP input
            GCK : in STD_LOGIC;  -- 100MHz clock
            STP : in STD_LOGIC;  -- Step input
            UD : in STD_LOGIC;   -- Rising/Falling
            EN : in STD_LOGIC;   -- Enable
            PCH_EN : out STD_LOGIC; -- Enable output for the P-channel MOSFET to turn on - to avoid shorting
            OUTPUT : out STD_LOGIC  -- Output pulse
        );
    end Component;
    
    constant ClockFrequency : integer := 100e6; -- 100 MHz
    constant ClockPeriod    : time    := 1000 ms / ClockFrequency;
    constant waitPeriod     : time    := 8 ms;

    Signal GCK: STD_LOGIC := '1' ;
    Signal STP: STD_LOGIC := '0';
    Signal UD: STD_LOGIC := '0' ;       -- Rising
    Signal EN: STD_LOGIC := '1' ;       -- Output Enabled
    Signal STP_EN: STD_LOGIC := '1' ;   -- Step input Enabled
    Signal OUTPUT : STD_LOGIC;
    Signal PCH_EN : STD_LOGIC;
    
    begin
        uut: Microstepping_Sequencer Port map
        (EN=>EN, STP_EN=>STP_EN, UD=>UD, STP=>STP, GCK=>GCK, OUTPUT=>OUTPUT, PCH_EN=>PCH_EN);
        
        CLOCK: process (GCK) is
            begin
                -- Process for generating the clock
                GCK <= not GCK after ClockPeriod / 2;
        end process CLOCK;
        
        TestBench: process is
            begin
                    STP <= '1';
                wait for 30ns;
                    STP <= '0';
                wait for waitPeriod + 1ms;
                    UD <= '1';
                    EN <= '0';
                    STP <= '1';
                wait for 30ns;
                    STP <= '0';
                wait for 4ms;
                    EN <= '1';
                wait for 1ms;
                    STP <= '1';
                wait for 30ns;
                    STP <= '0';
                wait for waitPeriod + 1ms;
                    UD <= '0';
                    STP <= '1';
                wait for 30ns;
                    STP <= '0';
                wait for waitPeriod;
                wait;
        end process TestBench;
end Behavioral;