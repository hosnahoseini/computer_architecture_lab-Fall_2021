----------------------------------------------------------------------------------
-- Module Name:    RCA - RTL 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RCA is
	port (
		A, B: in std_logic_vector (3 downto 0);
		S: out std_logic_vector (3 downto 0);
		Cout: out std_logic
	);
end RCA;

architecture RTL of RCA is
	component HA is
		port (
			A, B: in std_logic;
			S, Cout: out std_logic
		);
	end component;
	component FA is
		port (
			A, B, Cin: in std_logic;
			S, Cout: out std_logic
		);
	end component;
	signal C0,C1,C2: std_logic;
begin
	HA_instance0 : HA port map(A(0), B(0), S(0), C0);
	FA_instance0 : FA port map(A(1), B(1), C0, S(1), C1);
	FA_instance1 : FA port map(A(2), B(2), C1, S(2), C2);
	FA_instance2 : FA port map(A(3), B(3), C2, S(3), Cout);
end RTL;
