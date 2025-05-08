library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity STP_Generator_Halfstep is
    Generic (N : integer := 801_000); -- Division factor for in between steps
    Port ( CLK_IN , EN : in STD_LOGIC; -- Input Clock and Reset Signal
        CLK_OUT : out STD_LOGIC -- Divided Clock Output
    );
end STP_Generator_Halfstep;

architecture Behavioral of STP_Generator_Halfstep is
    signal counter : integer range 0 to (N/2) := 0;
    signal clk_div : STD_LOGIC := '0';
    
    begin
    Divider: process (CLK_IN, EN)
        begin
            if EN = '0' then
                counter <= 0;
                clk_div <= '0';
            elsif rising_edge(CLK_IN) then
                if (counter = ((N/2) - 1)) then
                    clk_div <= not clk_div;
                    counter <= 0;
                else
                    counter <= counter + 1;
                end if;
            end if;
        end process Divider;
    CLK_OUT <= clk_div;
end Behavioral;