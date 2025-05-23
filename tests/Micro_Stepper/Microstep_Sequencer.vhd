-- Title: Microstep Sequencer
-- Description: Sets the CMOS pairs outputs based on the current step requirements
-- Author: Bence Toth
-- Group: SPROJ4EEG2D
-- Semester: 4th
-- Course: BEng in Electronics
-- Institution: SDU Sonderborg

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Microstep_Sequencer is
    Generic(PULSE_DURATION: integer := 100_000);    -- 1ms in clock cycles (100MHz * 1ms)
    Port (
        STP_EN : STD_LOGIC;     -- Enable STP input
        GCK : in STD_LOGIC;     -- 100MHz clock
        STP : in STD_LOGIC;     -- Step input
        UD : in STD_LOGIC;      -- Rising/Falling sequence
        EN : in STD_LOGIC;      -- Global enable
        SETUP_TYPE : in STD_LOGIC;   -- pin used to set the type of setup pinouts
        SETUP_TRIG : in STD_LOGIC;   -- pin used to set the outputs to the default state
        PCH : out STD_LOGIC;    -- Output for the P-channel MOSFET counterpart
        NCH : out STD_LOGIC  -- Output pulse for the N-channel MOSFET
    );
end Microstep_Sequencer;

architecture Behavioral of Microstep_Sequencer is
    type rom_array is array (0 to 7) of integer range 0 to (PULSE_DURATION-1);
    constant ROM : rom_array := (0, 14_117, 28_627, 42_744, 57_254, 71_371, 85_881, 99_999);
    constant TOTAL_PULSES : integer range 0 to 8 := 8;  -- 8 pulses
    
    signal UD_Saved : STD_LOGIC;
    signal SETUP_TRIG_Saved : STD_LOGIC;
    signal NCH_Saved : STD_LOGIC := '1';
    signal PCH_Saved : STD_LOGIC := '1';
    signal pulse_count : integer range 0 to (TOTAL_PULSES - 1) := 0;
    signal cycle_count : integer range 0 to (PULSE_DURATION - 1) := 0;
    signal active : boolean := false;
    signal rom_index : integer range 0 to (TOTAL_PULSES - 1) := 0;
    
    begin
    
        Microstepping_Sequencer: process(GCK, EN, SETUP_TRIG) is
            variable stp_prev : STD_LOGIC := '0';
            begin
                if rising_edge(GCK) then
                    SETUP_TRIG_Saved <= SETUP_TRIG;
                    
                    -- Detect rising edge of SETUP_TRIG
                    if SETUP_TRIG = '1' and SETUP_TRIG_Saved = '0' then
                        case SETUP_TYPE is
                            when '0' =>
                                NCH_Saved <= '0';
                                PCH_Saved <= '0';
                            when '1' =>
                                NCH_Saved <= '1';
                                PCH_Saved <= '1';
                            when others => null;
                        end case;
                    end if;
                    
                    if EN = '0' then
                        NCH <= '1';
                        PCH <= '1';
                        
                    elsif EN = '1' then
                        NCH <= NCH_Saved;
                        PCH <= PCH_Saved;
                        
                        -- Detect falling edge of STP
                        if STP_EN = '1' and STP = '0' and stp_prev = '1' then
                            UD_Saved <= UD;
                            active <= true;
                            pulse_count <= 0;
                            cycle_count <= 0;
                            rom_index <= 0;
                            
                            -- Reset P-Ch MOSFET when it is a falling trigger
                            if UD = '1' then
                                PCH_Saved <= '0';
                            end if;
                        end if;
                        
                        stp_prev := STP;
            
                        if active then      -- Start the sequence
                            -- Generate 1ms pulse
                            if cycle_count < (PULSE_DURATION - 1) then
                                cycle_count <= cycle_count + 1;
                                
                                -- Set output based on ROM duty cycle
                                if UD_Saved = '0' then        -- Rising
                                    if cycle_count < ROM(rom_index) then
                                        NCH_Saved <= '1';
                                    else
                                        NCH_Saved <= '0';
                                    end if;
                                else                    -- Falling
                                    if cycle_count < ROM(TOTAL_PULSES - 1 - rom_index) then
                                        NCH_Saved <= '1';
                                    else
                                        NCH_Saved <= '0';
                                    end if;
                                end if;
                            else
                                cycle_count <= 0;
                                if pulse_count < (TOTAL_PULSES - 1) then
                                    pulse_count <= pulse_count + 1;
                                    rom_index <= rom_index + 1;
                                else
                                    active <= false;
                                    -- Set P-Ch MOSFET after the pulses
                                    -- when it is a rising trigger
                                    if UD_Saved = '0' then
                                        PCH_Saved <= '1';
                                    end if;
                                end if;
                            end if;
                        end if;
                    end if;
                end if;
        end process Microstepping_Sequencer;
end Behavioral;