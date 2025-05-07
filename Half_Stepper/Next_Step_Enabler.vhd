-- NXT_FLAG: used for telling the PS when it can advance to the next step
-- this is needed because practical tests showed that 1ms between steps is
-- necessary to maintain step integrity and avoid skipping

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Next_Step_Enabler is
    Generic (COOLDOWN_TIME : integer := 800_020); -- clock cycles
    Port ( GCK, STP : in STD_LOGIC;
           NXT_FLAG : out STD_LOGIC
    );
end Next_Step_Enabler;

architecture Behavioral of Next_Step_Enabler is
    
    signal counter : unsigned(20 downto 0) := (others => '0');  -- used to count to the desired time
    signal stp_prev : STD_LOGIC := '0';         -- used to store the STP input value
    -- this is needed to counteract the error stated by VHDL due to nested clocks
    signal timer_active : STD_LOGIC := '0';     -- signal used to start and stop the cooldown timer
    signal nxt_flag_int : STD_LOGIC := '1';     -- internal output flag representation

	begin
		Next_Step_Process: process(GCK) is
			begin
				if rising_edge(GCK) then
					stp_prev <= STP;

					-- Detect rising edge on STP
					if STP = '1' and stp_prev = '0' then
					    -- reset output flag, zero out the counter value and start timer
						timer_active <= '1';
						nxt_flag_int <= '0';
						counter <= (others => '0');
					end if;

					-- Timer logic
					if timer_active = '1' then
						if counter < ( COOLDOWN_TIME - 1 ) then
						    -- increment the counter
							counter <= counter + 1;
						else
						    -- stop the counter and set output flag
							timer_active <= '0';
							nxt_flag_int <= '1';
						end if;
					end if;
				end if;
		end process Next_Step_Process;

		NXT_FLAG <= nxt_flag_int;
end Behavioral;