library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity half_step_rom is
    port (
        clk, en : in  STD_LOGIC;                      -- Clock input and Enable
        addr : in  STD_LOGIC_VECTOR(2 downto 0);   -- 4-bit address (9 locations)
        data   : out STD_LOGIC_VECTOR(7 downto 0)    -- 8-bit data output
    );
end half_step_rom;

architecture Behavioral of half_step_rom is
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

	begin
		-- Process to read ROM
		Read_Val: process(clk, en) is
			begin
			    if en = '0' then
			        data <= "11111111";
				elsif en = '1' and rising_edge(clk) then
					data <= OUT_ROM(to_integer(unsigned(addr)));
				end if;
		end process Read_Val;

end Behavioral;