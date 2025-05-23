library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Halfstepping_Top is
    Port (
        GCK : in STD_LOGIC;
        EN : in STD_LOGIC;
        DIR : in STD_LOGIC;
        OUTPUTS : out STD_LOGIC_VECTOR(7 downto 0)
    );
end Halfstepping_Top;

architecture Behavioral of Halfstepping_Top is

    Component Step_Generator is
        Port (
            GCK , EN : in STD_LOGIC; -- Input Clock and Reset Signal
            STP : out STD_LOGIC -- Divided Clock Output
        );
    end Component;
    
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

    signal STP_sig : STD_LOGIC;
    signal current_addr : unsigned(2 downto 0) := (others => '0');
    signal Windings_sig : STD_LOGIC_VECTOR(7 downto 0);

    begin
    
        Test_Step_Input: Step_Generator Port map
        (GCK=>GCK, EN=>EN, STP=>STP_sig);
    
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
		Trigger: process (STP_sig, DIR) is
            begin
                if rising_edge(STP_sig) then
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