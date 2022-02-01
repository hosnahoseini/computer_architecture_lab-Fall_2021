----------------------------------------------------------------------------------
-- Module Name:    TestBench - Behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TestBench is
end TestBench;

architecture Behavioral of TestBench is
	component ArrayMultiplier is
		port (
			A, B: in std_logic_vector (3 downto 0);
			P: out std_logic_vector (7 downto 0)
		);
	end component;
	signal A, B: std_logic_vector (3 downto 0);
	signal P: std_logic_vector (7 downto 0);

begin
	ArrayMultiplier_instance : ArrayMultiplier port map(A, B, P);
	tb:
	process begin
		A <= "0000";
		B <= "1101";
		wait for 5 ns;
		A <= "0010";
		B <= "1101";
		wait for 5 ns;
		A <= "1001";
		B <= "0000";
		wait for 5 ns;
		A <= "1111";
		B <= "1111";
		wait for 5 ns;
		assert false report "Test: OK" severity failure;
	end process;
end Behavioral;
