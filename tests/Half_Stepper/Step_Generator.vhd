library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Step_Generator is
    Generic (DIV_N : integer := 100_100); -- Division factor for in between steps
    Port (
        GCK , EN : in STD_LOGIC; -- Input Clock and Reset Signal
        STP : out STD_LOGIC -- Divided Clock Output
    );
end Step_Generator;

architecture Behavioral of Step_Generator is
    signal counter : integer range 0 to (DIV_N/2) := 0;
    signal clk_div : STD_LOGIC := '0';
    
    begin
        Divider: process (GCK, EN) is
            begin
                if EN = '0' then
                    counter <= 0;
                    clk_div <= '0';
                elsif rising_edge(GCK) then
                    if (counter = ((DIV_N/2) - 1)) then
                        clk_div <= not clk_div;
                        counter <= 0;
                    else
                        counter <= counter + 1;
                    end if;
                end if;
        end process Divider;
    STP <= clk_div;
end Behavioral;