----------------------------------------------------------------------------------
-- Module Name:    HA - RTL 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HA is
	port (
		A, B: in std_logic;
		S, Cout: out std_logic
	);
end HA;

architecture RTL of HA is
begin
	S <= A xor B;
	Cout <= A and B;
end RTL;
