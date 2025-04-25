Library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- DIR : Direction -> 0 = Backwards | 1 = Forwards
-- STP : Stepping trigger
-- EN : Enable

Entity Half_Step_State_Machine is
    Port ( DIR , STP : in STD_LOGIC;
           addr : out STD_LOGIC_VECTOR (2 downto 0)
    );
end Half_Step_State_Machine;

Architecture Behavioral of Half_Step_State_Machine is

    component half_step_rom
        port ( clk    : in  STD_LOGIC;
               addr   : in  STD_LOGIC_VECTOR(2 downto 0);
               data   : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;

	signal current_addr : unsigned(2 downto 0) := (others => '0');

    begin

        Trigger: process (STP) is
            begin
                if rising_edge(STP) then
                    case DIR is
					   when '0' =>		-- backward
					       current_addr <= current_addr - 1;	
					   when '1' =>		-- forward
					       current_addr <= current_addr + 1;	
					   when others => null;
					end case;	
                end if;
        end process Trigger;

		addr <= std_logic_vector(current_addr);
end Behavioral;