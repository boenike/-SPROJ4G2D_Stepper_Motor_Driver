library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Microstepping_Sequencer is
    Generic(PULSE_DURATION: integer := 100_000);    -- 1ms in clock cycles (100MHz * 1ms)
    Port (
        GCK : in STD_LOGIC;  -- 100MHz clock
        STP : in STD_LOGIC;  -- Step input
        UD : in STD_LOGIC;   -- Rising/Falling
        EN : in STD_LOGIC;   -- Enable
        OUTPUT : out STD_LOGIC  -- Output pulse
    );
end Microstepping_Sequencer;

architecture Behavioral of Microstepping_Sequencer is
    type rom_array is array (0 to 7) of integer range 0 to (PULSE_DURATION-1);
    constant ROM : rom_array := (0, 14_117, 28_627, 42_744, 57_254, 71_371, 85_881, 99_999);
    constant TOTAL_PULSES : integer range 0 to 8 := 8;  -- 8 pulses
    
    signal OUTPUT_Saved : STD_LOGIC ;
    signal pulse_count : integer range 0 to (TOTAL_PULSES - 1) := 0;
    signal cycle_count : integer range 0 to (PULSE_DURATION - 1) := 0;
    signal active : boolean := false;
    signal rom_index : integer range 0 to (TOTAL_PULSES - 1) := 0;
    
    begin
        Microstepping_Sequencer: process(GCK, EN) is
            variable stp_prev : STD_LOGIC := '0';
            begin
                if EN = '0' then
                    OUTPUT <= '0';
                elsif EN = '1' and rising_edge(GCK) then
                    OUTPUT <= OUTPUT_Saved;
                    -- Detect rising edge of STP
                    if STP = '1' and stp_prev = '0' then
                        active <= true;
                        pulse_count <= 0;
                        cycle_count <= 0;
                        rom_index <= 0;
                        --OUTPUT <= '0';
                    end if;
                    stp_prev := STP;
        
                    if active then
                        -- Generate 1ms pulse
                        if cycle_count < (PULSE_DURATION - 1) then
                            cycle_count <= cycle_count + 1;
                            
                            -- Set output based on ROM duty cycle
                            if UD = '0' then        -- Rising
                                if cycle_count < ROM(rom_index) then
                                    OUTPUT_Saved <= '1';
                                else
                                    OUTPUT_Saved <= '0';
                                end if;
                            else                    -- Falling
                                if cycle_count < ROM(TOTAL_PULSES - 1 - rom_index) then
                                    OUTPUT_Saved <= '1';
                                else
                                    OUTPUT_Saved <= '0';
                                end if;
                            end if;
                        else
                            cycle_count <= 0;
                            if pulse_count < (TOTAL_PULSES - 1) then
                                pulse_count <= pulse_count + 1;
                                rom_index <= rom_index + 1;
                            else
                                active <= false;
                                --OUTPUT <= '0';
                            end if;
                        end if;
                    --else
                        --OUTPUT <= '0';
                    end if;
                end if;
        end process Microstepping_Sequencer;
end Behavioral;