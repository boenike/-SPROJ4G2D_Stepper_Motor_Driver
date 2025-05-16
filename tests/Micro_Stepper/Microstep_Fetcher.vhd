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
           DIR : in STD_LOGIC;  -- Forward/Backward
           EN : in STD_LOGIC;
           SETUP_TRIG : out STD_LOGIC;
           SETUP_TYPE : out STD_LOGIC_VECTOR (3 downto 0);
           STPEN_OUT : out STD_LOGIC_VECTOR (3 downto 0);
           UD_OUT : out STD_LOGIC_VECTOR (3 downto 0)
    );
end Microstep_Fetcher;

architecture Behavioral of Microstep_Fetcher is

    -- Type definition for UD and STPEN ROMs containing one whole period
    -- 1 bit per N-Ch MOSFET
    type ROM_TYPE is array (0 to 7) of STD_LOGIC_VECTOR(3 downto 0);
    
    signal addr : unsigned(2 downto 0) := (others => '0');
    signal SETUP_TYPE_int_sig : STD_LOGIC_VECTOR (3 downto 0) := "1001"; -- ACBD;
    signal STPEN_OUT_int_sig : STD_LOGIC_VECTOR (3 downto 0);
    signal UD_OUT_int_sig : STD_LOGIC_VECTOR (3 downto 0);
    signal DIR_Saved : STD_LOGIC;
    
    -- 0 -> Rising
    -- 1 -> Falling
    constant UD_OUT_ROM_FORWARD : ROM_TYPE := (
        "1101", -- Step 1
        "1001", -- Step 2
        "1011", -- Step 3
        "1010", -- Step 4
        "1110", -- Step 5
        "0110", -- Step 6
        "0111", -- Step 7
        "0101"  -- Step 8
    );
    
    constant STPEN_OUT_ROM_FORWARD : ROM_TYPE := (
        "0100", -- Step 1
        "0010", -- Step 2
        "0001", -- Step 3
        "0100", -- Step 4
        "1000", -- Step 5
        "0001", -- Step 6
        "0010", -- Step 7
        "1000"  -- Step 8
    );
    
    constant UD_OUT_ROM_BACKWARD : ROM_TYPE := (
        "0110", -- Step 1
        "0100", -- Step 2
        "0101", -- Step 3
        "0001", -- Step 4
        "1001", -- Step 5
        "1000", -- Step 6
        "1010", -- Step 7
        "0010"  -- Step 8
    );
    
    constant STPEN_OUT_ROM_BACKWARD : ROM_TYPE := (
        "0010", -- Step 1
        "0001", -- Step 2
        "0100", -- Step 3
        "1000", -- Step 4
        "0001", -- Step 5
        "0010", -- Step 6
        "1000", -- Step 7
        "0100"  -- Step 8
    );

    begin
        SETUP_TYPE <= SETUP_TYPE_int_sig;
    
        Startup_Set: process is
            begin
                SETUP_TRIG <= '0';     -- Set HIGH
                wait for 40 ns;        -- Delay 40ns
                SETUP_TRIG <= '1';     -- Set HIGH
                wait for 40 ns;        -- Delay 40ns
                SETUP_TRIG <= '0';     -- Set LOW
                wait;                  -- Suspend process
        end process Startup_Set;
    
        Next_Addr: process (STP, EN, DIR_Saved) is
            begin
                -- Increment/Decrement the ROM address at a rising edge on STP
                if rising_edge(STP) and EN = '1' then
                    case DIR_Saved is
                        when '0' =>     -- Forward
                            addr <= addr + 1;
                        when '1' =>     -- Backward
                            addr <= addr - 1;
                        when others => null;
                    end case;
                end if;
        end process Next_Addr;
    
        ROM_Outputs: process (GCK, addr, DIR) is
            begin
                if falling_edge(GCK) then
                    case DIR is
                        when '0' =>     -- Forward
                            STPEN_OUT_int_sig <= STPEN_OUT_ROM_FORWARD(to_integer(unsigned(addr)));
                            UD_OUT_int_sig <= UD_OUT_ROM_FORWARD(to_integer(unsigned(addr)));
                        when '1' =>     -- Backward
                            STPEN_OUT_int_sig <= STPEN_OUT_ROM_BACKWARD(to_integer(unsigned(addr)));
                            UD_OUT_int_sig <= UD_OUT_ROM_BACKWARD(to_integer(unsigned(addr)));
                        when others => null;
                    end case;  
                    DIR_Saved <= DIR;
                end if;
        end process ROM_Outputs;
        
        STPEN_OUT <= STPEN_OUT_int_sig;
        UD_OUT <= UD_OUT_int_sig;
end Behavioral;