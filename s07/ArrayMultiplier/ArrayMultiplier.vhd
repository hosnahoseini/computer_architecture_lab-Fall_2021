----------------------------------------------------------------------------------
-- Module Name:    ArrayMultiplier - RTL 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArrayMultiplier is
	port (
		A, B: in std_logic_vector (3 downto 0);
		P: out std_logic_vector (7 downto 0)
	);
end ArrayMultiplier;

architecture RTL of ArrayMultiplier is
	component RCA is
		port (
			A, B: in std_logic_vector (3 downto 0);
			S: out std_logic_vector (3 downto 0);
			Cout: out std_logic
		);
	end component;
	signal Prdc0, Prdc1, Prdc2, Prdc3 : std_logic_vector (3 downto 0);
	signal wire0, wire1 : std_logic_vector (3 downto 0);
	signal Sum0, Sum1, Sum2 : std_logic_vector (3 downto 0);
	signal C0, C1: std_logic;
begin
	P(0) <= A(0) and B(0);
	
	Prdc0 <= ('0' & (A(3) and B(0)) & (A(2) and B(0)) & (A(1) and B(0)));
	Prdc1 <= ((A(3) and B(1)) & (A(2) and B(1)) & (A(1) and B(1)) & (A(0) and B(1)));
	Prdc2 <= ((A(3) and B(2)) & (A(2) and B(2)) & (A(1) and B(2)) & (A(0) and B(2)));
	Prdc3 <= ((A(3) and B(3)) & (A(2) and B(3)) & (A(1) and B(3)) & (A(0) and B(3)));

	RCA_instance0 : RCA port map(Prdc0, Prdc1, Sum0, C0);
	P(1) <= Sum0(0);
	wire0 <= (C0 & Sum0(3) & Sum0(2) & Sum0(1));
	RCA_instance1 : RCA port map(wire0, Prdc2, Sum1, C1);
	P(2) <= Sum1(0);
	wire1 <= (C1 & Sum1(3) & Sum1(2) & Sum1(1));
	RCA_instance2 : RCA port map(wire1, Prdc3, Sum2, P(7));
	P(3) <= Sum2(0);
	P(4) <= Sum2(1);
	P(5) <= Sum2(2);
	P(6) <= Sum2(3);
end RTL;
