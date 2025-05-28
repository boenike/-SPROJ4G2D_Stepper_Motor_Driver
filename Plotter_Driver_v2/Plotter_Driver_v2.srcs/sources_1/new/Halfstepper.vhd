-- This file describes the Halfstepping method for driving the Stepper Motors
-- Author: Bence Toth
-- Last modified: 28.05.2025

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Halfstepper is
    Port (
        GCK : in STD_LOGIC;     -- 100MHz General Clock
        STP : in STD_LOGIC;     -- Step signal
        EN : in STD_LOGIC;      -- Output Enable
        DIR : in STD_LOGIC;     -- Motor direction
        OUTPUTS : out STD_LOGIC_VECTOR(7 downto 0)  -- Output windings
    );
end Halfstepper;

architecture Behavioral of Halfstepper is
    
    -- Type definition for Half Stepping ROM
    type HS_ROM_TYPE is array (0 to 7) of STD_LOGIC_VECTOR(7 downto 0);
    
    -- Constant ROM containing one whole period (8-bit values)
    constant OUT_ROM : HS_ROM_TYPE := (
        X"99", -- Step 1
        X"88", -- Step 2
        X"CC", -- Step 3
        X"44", -- Step 4
        X"66", -- Step 5
        X"22", -- Step 6
        X"33", -- Step 7
        X"11"  -- Step 8
    );

    signal current_addr : unsigned(2 downto 0) := (others => '0');
    signal Windings_sig : STD_LOGIC_VECTOR(7 downto 0);

    begin
    
        -- Process to read ROM and update current output signal state
		Read_Val: process(GCK, EN, current_addr) is
			begin
			    if EN = '0' then
			        Windings_sig <= "11111111";
				elsif EN = '1' and rising_edge(GCK) then
					Windings_sig <= OUT_ROM(to_integer(unsigned(current_addr)));
				end if;
		end process Read_Val;
		
		-- Process to update the ROM address depending on the direction
		Trigger: process (STP, DIR, EN) is
            begin
                if EN = '1' and rising_edge(STP) then
                    case DIR is
					   when '0' =>		-- backward
					       current_addr <= current_addr - 1;	
					   when '1' =>		-- forward
					       current_addr <= current_addr + 1;	
					   when others => null;
					end case;	
                end if;
        end process Trigger;

        OUTPUTS <= Windings_sig;
end Behavioral;