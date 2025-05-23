library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Step_Generator is
    Generic ( COOLDOWN_TIME : integer := 900_000;   -- in clock cycles
              UPTIME : integer := 70_000
    );
    Port (  GCK : in STD_LOGIC;
            EN : in STD_LOGIC;
            STP_OUT : out STD_LOGIC
    );
end Step_Generator;

architecture Behavioral of Step_Generator is

    signal CTR : integer range 0 to (COOLDOWN_TIME-1) := 0;
    
    constant TRIG_UP : integer range 0 to (COOLDOWN_TIME-1) := (COOLDOWN_TIME / 2);
    constant TRIG_DOWN : integer range 0 to (COOLDOWN_TIME-1) := (TRIG_UP + UPTIME);

    begin
        COUNTER_PROC : process (GCK, EN) is
            begin
                if EN = '0' then
                    CTR <= 0;
                elsif EN = '1' and rising_edge(GCK) then
                    if CTR = (COOLDOWN_TIME-1) then
                        CTR <= 0;
                    else
                        CTR <= CTR + 1;
                    end if;
                end if;
        end process COUNTER_PROC;
        
        OUT_Proc : process (CTR, EN) is
            begin
                if EN = '0' then
                    STP_OUT <= '0';
                elsif EN = '1' then
                    if CTR > TRIG_UP and CTR < TRIG_DOWN then
                        STP_OUT <= '1';
                    else
                        STP_OUT <= '0';
                    end if;
                end if;
        end process OUT_Proc;
        
end Behavioral;