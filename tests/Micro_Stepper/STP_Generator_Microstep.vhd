library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity STP_Generator_Microstep is
    Generic (COOLDOWN_TIME : integer := 801_000); -- roughly 8 ms in clock cycles
    Port (  GCK : in STD_LOGIC;
            EN : in STD_LOGIC;
            STP_OUT : out STD_LOGIC
    );
end STP_Generator_Microstep;

architecture Behavioral of STP_Generator_Microstep is

    signal CTR : integer range 0 to (COOLDOWN_TIME-1) := 0;
    --signal STP_OUT_sig : STD_LOGIC := '0';

    begin
    
    OUT_Proc : process (GCK, EN) is
        begin
            if EN = '0' then
                STP_OUT <= '0';
                CTR <= 0;
            elsif EN = '1' and rising_edge(GCK) then
                if CTR = (COOLDOWN_TIME-1) then
                    CTR <= 0;
                else
                    CTR <= CTR + 1;
                end if;
                
                if CTR = 300_000 then
                    STP_OUT <= '1';
                elsif CTR = 370_000 then
                    STP_OUT <= '0';
                end if;
            end if;
    end process OUT_Proc;
end Behavioral;