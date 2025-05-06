-- Title: Microstep Fetcher
-- Description: Sets the STPEN and UD pins based on the next step
-- Author: Bence Toth
-- Group: SPROJ4EEG2D
-- Semester: 4th
-- Course: BEng in Electronics
-- Institution: SDU Sonderborg

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Microstep_Fetcher is
    Port ( GCK : in STD_LOGIC;
           STP : in STD_LOGIC;
           EN : in STD_LOGIC;
           STPEN_OUT : out STD_LOGIC_VECTOR (3 downto 0);
           UD_OUT : out STD_LOGIC_VECTOR (3 downto 0)
    );
end Microstep_Fetcher;

architecture Behavioral of Microstep_Fetcher is

    -- Type definition for UD and STPEN ROMs containing one whole period
    -- 1 bit per N-Ch MOSFET
    type UD_ROM_TYPE is array (0 to 7) of STD_LOGIC_VECTOR(3 downto 0);
    type STPEN_ROM_TYPE is array (0 to 7) of STD_LOGIC_VECTOR(3 downto 0);
    
    signal addr : unsigned(2 downto 0) := (others => '0');
    
    -- 0 -> Rising
    -- 1 -> Falling
    constant UD_OUT_ROM : UD_ROM_TYPE := (
        "1101", -- Step 1
        "1001", -- Step 2
        "1011", -- Step 3
        "1010", -- Step 4
        "1110", -- Step 5
        "0110", -- Step 6
        "0111", -- Step 7
        "0101"  -- Step 8
    );
    
    constant STPEN_OUT_ROM : STPEN_ROM_TYPE := (
        "0100", -- Step 1
        "0010", -- Step 2
        "0001", -- Step 3
        "0100", -- Step 4
        "1000", -- Step 5
        "0001", -- Step 6
        "0010", -- Step 7
        "1000"  -- Step 8
    );

    begin
    
        Next_Addr: process (STP, EN) is
            begin
                -- Increment the ROM address at a rising edge
                if rising_edge(STP) and EN = '1' then
                    addr <= addr + 1;
                end if;
        end process Next_Addr;
    
        ROM_Outputs: process (GCK) is
            begin
                if rising_edge(GCK) then
                    STPEN_OUT <= STPEN_OUT_ROM(to_integer(unsigned(addr)));
                    UD_OUT <= UD_OUT_ROM(to_integer(unsigned(addr)));
                end if;
        end process ROM_Outputs;

end Behavioral;