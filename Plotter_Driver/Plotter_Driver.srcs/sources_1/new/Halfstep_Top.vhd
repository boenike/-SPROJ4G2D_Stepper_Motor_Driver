Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- DIR : Direction -> 0 = Backwards | 1 = Forwards
-- STP : Stepping trigger
-- EN : Enable

Entity Half_Stepping_Top is
    Port ( DIR , GCK , EN, STP : in STD_LOGIC;
           NXT_FLAG : out STD_LOGIC;
           OUTPUT : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Half_Stepping_Top;

Architecture Structural of Half_Stepping_Top is
    
    Component half_step_rom is
        Port ( clk, en : in  STD_LOGIC;
               addr : in  STD_LOGIC_VECTOR(2 downto 0);
               data : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end Component;
    
    Component Next_Step_Enabler_Halfstep is
        Port ( GCK, STP : in STD_LOGIC;
               NXT_FLAG : out STD_LOGIC
        );
    end Component;
    
    Component Half_Step_State_Machine is
        Port ( DIR , STP : in STD_LOGIC;
               addr : out STD_LOGIC_VECTOR (2 downto 0)
        );
    end Component;
    
    Signal state_machine_to_rom_addr : STD_LOGIC_VECTOR(2 downto 0);

    begin
        
        Next_Step_Cooldown: Next_Step_Enabler_Halfstep Port map
        (GCK=>GCK, STP=>STP, NXT_FLAG=>NXT_FLAG);

        Half_Stepper_Generator: Half_Step_State_Machine Port map
        (DIR=>DIR, STP=>STP, addr=>state_machine_to_rom_addr);
        
        rom_inst: half_step_rom Port map
		(clk=>GCK, en=>EN, addr=>state_machine_to_rom_addr, data=>OUTPUT);

end Structural;