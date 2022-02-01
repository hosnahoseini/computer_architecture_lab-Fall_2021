----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:34:20 11/03/2021 
-- Design Name: 
-- Module Name:    test_bench - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

use ieee.numeric_std.all;

entity test is
end test;
 
architecture behavior of test is

	component bcd_adder is
		port(
				A : in std_logic_vector (3 downto 0);
				B : in std_logic_vector (3 downto 0);
				Cin: in std_logic;
				S : out std_logic_vector (3 downto 0);
				Cout : out std_logic
			);
	end component;
	 
	signal A : std_logic_vector(3 downto 0) := (others => '0');
	signal B : std_logic_vector(3 downto 0) := (others => '0');
	signal Cin : std_logic := '0';
	signal S : std_logic_vector(3 downto 0);
	signal Cout : std_logic;
 
	begin
	 
	BCD_instance: bcd_adder port map (
			A => A,
			B => B,
			Cin => Cin,
			S => S,
			Cout => Cout
	);
 

	process begin 
	   Cin <= '1';
		A <= "0101";
			for n in 0 to 9 loop -- 256 augend values
				B <= std_logic_vector(to_UNSIGNED(n,4)); -- apply n to B
				wait for 10 ns;
			end loop;
	   Cin <= '0';
		A <= "1001";
			for n in 0 to 9 loop -- 256 augend values
				B <= std_logic_vector(to_UNSIGNED(n,4)); -- apply n to B
				wait for 10 ns;
			end loop;
	 report "simulation finished successfully" severity FAILURE;
	 end process;
	 
end architecture;



