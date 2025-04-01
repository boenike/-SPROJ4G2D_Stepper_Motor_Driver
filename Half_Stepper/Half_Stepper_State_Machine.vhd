Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- DIR : Direction -> 0 = Backwards | 1 = Forwards
-- STP : Stepping trigger
-- EN : Enable

Entity Half_Step_State_Machine is
    Port ( DIR , STP , EN : in STD_LOGIC;
           OUTPUT : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Half_Step_State_Machine;

Architecture Behavioral of Half_Step_State_Machine is

    Type step is (A , B , C , D , E , F , G , H);
    Signal present_state, next_state : step;

    begin

        Trigger: process (STP, EN) is
            begin
                if rising_edge(STP) and EN = '1' then
                    present_state <= next_state;
                end if;
        end process Trigger;

        Next_Step: process (DIR,present_state) is
            begin
                case present_state is
                    when A =>
                        if DIR = '0' then
                            next_state <= H;
                        elsif DIR = '1' then
                            next_state <= B;
                        end if;
                    when B =>
                        if DIR = '0' then
                            next_state <= A;
                        elsif DIR = '1' then
                            next_state <= C;
                        end if;
                    when C =>
                        if DIR = '0' then
                            next_state <= B;
                        elsif DIR = '1' then
                            next_state <= D;
                        end if;
                    when D =>
                        if DIR = '0' then
                            next_state <= C;
                        elsif DIR = '1' then
                            next_state <= E;
                        end if;
                    when E =>
                        if DIR = '0' then
                            next_state <= D;
                        elsif DIR = '1' then
                            next_state <= F;
                        end if;
                    when F =>
                        if DIR = '0' then
                            next_state <= E;
                        elsif DIR = '1' then
                            next_state <= G;
                        end if;
                    when G =>
                        if DIR = '0' then
                            next_state <= F;
                        elsif DIR = '1' then
                            next_state <= H;
                        end if;
                    when H =>
                        if DIR = '0' then
                            next_state <= G;
                        elsif DIR = '1' then
                            next_state <= A;
                        end if;
                    when others => null;
                end case;
        end process Next_Step;

        Output_Windings: process (present_state) is
            begin
                case present_state is
                    when A =>
                        OUTPUT <= "10011001";
                    when B =>
                        OUTPUT <= "10001000";
                    when C =>
                        OUTPUT <= "11001100";
                    when D =>
                        OUTPUT <= "01000100";
                    when E =>
                        OUTPUT <= "01100110";
                    when F =>
                        OUTPUT <= "00100010";
                    when G =>
                        OUTPUT <= "00110011";
                    when H =>
                        OUTPUT <= "00010001";
                    when others =>
                        null;
                end case;
        end process Output_Windings;
end Behavioral;