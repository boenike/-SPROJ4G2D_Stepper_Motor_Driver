-- Title: Microstepper Top file
-- Description: Executes the custom Microstepping algorithm based on PS-side inputs
-- Author: Bence Toth
-- Group: SPROJ4EEG2D
-- Semester: 4th
-- Course: BEng in Electronics
-- Institution: SDU Sonderborg

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Microstepper_Top is
    Port ( GCK, EN, DIR, STP : in STD_LOGIC;
           PCH_OUT : out STD_LOGIC_VECTOR (3 downto 0);
           NCH_OUT : out STD_LOGIC_VECTOR (3 downto 0)
    );
end Microstepper_Top;

architecture Architectural of Microstepper_Top is

    Component Microstep_Fetcher is
        Port ( GCK : in STD_LOGIC;
               STP : in STD_LOGIC;
               DIR : in STD_LOGIC;
               EN : in STD_LOGIC;
               SETUP_TRIG : out STD_LOGIC;
               SETUP_TYPE : out STD_LOGIC_VECTOR (3 downto 0);
               STPEN_OUT : out STD_LOGIC_VECTOR (3 downto 0);
               UD_OUT : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end Component;
    
    Component Microstep_Sequencer is
        Port ( STP_EN : STD_LOGIC;     -- Enable STP input
               GCK : in STD_LOGIC;     -- 100MHz clock
               STP : in STD_LOGIC;     -- Step input
               UD : in STD_LOGIC;      -- Rising/Falling sequence
               EN : in STD_LOGIC;      -- Global enable
               SETUP_TRIG : in STD_LOGIC;
               SETUP_TYPE : in STD_LOGIC;
               PCH : out STD_LOGIC;    -- Output for the P-channel MOSFET counterpart
               NCH : out STD_LOGIC  -- Output pulse for the N-channel MOSFET
        );
    end Component;
    
    --Component Next_Step_Enabler is
        --Port ( GCK, STP : in STD_LOGIC;
               --NXT_FLAG : out STD_LOGIC
        --);
    --end Component;
    
    --Component Step_Generator is
        --Port (  GCK : in STD_LOGIC;
                --EN : in STD_LOGIC;
                --STP_OUT : out STD_LOGIC
        --);
    --end Component;
    
    --signal NXT_FLAG_sig : STD_LOGIC;
    signal SETUP_TRIG_sig : STD_LOGIC;
    --signal CLK_to_STP : STD_LOGIC;
    signal UD_sig : STD_LOGIC_VECTOR(3 downto 0);
    signal STPEN_sig : STD_LOGIC_VECTOR(3 downto 0);
    signal SETUP_TYPE_sig : STD_LOGIC_VECTOR(3 downto 0);

    begin
    
        --GCK_to_STP: Step_Generator Port map
        --(GCK=>GCK, EN=>EN, STP_OUT=>CLK_to_STP);
    
        --NXT_STP_EN: Next_Step_Enabler Port map
        --(GCK=>GCK, STP=>CLK_to_STP, NXT_FLAG=>NXT_FLAG_sig);
        
        Microstep_Fetch: Microstep_Fetcher Port map
        (GCK=>GCK, STP=>STP, DIR=>DIR, EN=>EN, UD_OUT=>UD_sig, STPEN_OUT=>STPEN_sig,
        SETUP_TRIG=>SETUP_TRIG_sig, SETUP_TYPE=>SETUP_TYPE_sig);
        
        Sequencer_A: Microstep_Sequencer Port map
        (GCK=>GCK, STP=>STP, EN=>EN, PCH=>PCH_OUT(3), NCH=>NCH_OUT(3),
        UD=>UD_sig(3), STP_EN=>STPEN_sig(3), SETUP_TRIG=>SETUP_TRIG_sig,
        SETUP_TYPE=>SETUP_TYPE_sig(3));
        
        Sequencer_C: Microstep_Sequencer Port map
        (GCK=>GCK, STP=>STP, EN=>EN, PCH=>PCH_OUT(2), NCH=>NCH_OUT(2),
        UD=>UD_sig(2), STP_EN=>STPEN_sig(2), SETUP_TRIG=>SETUP_TRIG_sig,
        SETUP_TYPE=>SETUP_TYPE_sig(2));
        
        Sequencer_B: Microstep_Sequencer Port map
        (GCK=>GCK, STP=>STP, EN=>EN, PCH=>PCH_OUT(1), NCH=>NCH_OUT(1),
        UD=>UD_sig(1), STP_EN=>STPEN_sig(1), SETUP_TRIG=>SETUP_TRIG_sig,
        SETUP_TYPE=>SETUP_TYPE_sig(1));
        
        Sequencer_D: Microstep_Sequencer Port map
        (GCK=>GCK, STP=>STP, EN=>EN, PCH=>PCH_OUT(0), NCH=>NCH_OUT(0),
        UD=>UD_sig(0), STP_EN=>STPEN_sig(0), SETUP_TRIG=>SETUP_TRIG_sig,
        SETUP_TYPE=>SETUP_TYPE_sig(0));

end Architectural;