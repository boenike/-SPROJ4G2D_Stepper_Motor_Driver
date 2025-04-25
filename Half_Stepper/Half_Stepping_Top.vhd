Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- DIR : Direction -> 0 = Backwards | 1 = Forwards
-- STP : Stepping trigger
-- EN : Enable

Entity Half_Stepping_Top is
    Port ( DIR , GCK , EN : in STD_LOGIC;
           NXT_FLAG : out STD_LOGIC;
           OUTPUT : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Half_Stepping_Top;

Architecture Structural of Half_Stepping_Top is

    Component Clock_Divider is
        Port ( CLK_IN , EN : in STD_LOGIC; -- Input Clock and Reset Signal
               CLK_OUT : out STD_LOGIC -- Divided Clock Output
        );
    end Component;
    
    Component Next_Step_Enabler is
        Port ( GCK, STP : in STD_LOGIC;
               NXT_FLAG : out STD_LOGIC
        );
    end Component;
    
    Component Half_Step_State_Machine is
        Port ( DIR , STP , EN : in STD_LOGIC;
               OUTPUT : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end Component;
    
    Signal CLK_to_STP : STD_LOGIC;

    begin
        Test_Step_Input: Clock_Divider Port map
        (CLK_IN=>GCK, EN=>EN, CLK_OUT=>CLK_to_STP);
        
        Next_Step_Cooldown: Next_Step_Enabler Port map
        (GCK=>GCK, STP=>CLK_to_STP, NXT_FLAG=>NXT_FLAG);

        Half_Stepper_Generator: Half_Step_State_Machine Port map
        (DIR=>DIR, STP=>CLK_to_STP, EN=>EN, OUTPUT=>OUTPUT);

end Structural;