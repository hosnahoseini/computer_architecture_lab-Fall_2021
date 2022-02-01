----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:01:00 11/03/2021 
-- Design Name: 
-- Module Name:    ripple_adder - Behavioral 
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
use IEEE.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RCA is
	port(
		A : in std_logic_vector (3 downto 0);
		B : in std_logic_vector (3 downto 0);
		Cin: in std_logic;
		S : out std_logic_vector (3 downto 0);
		Cout : out std_logic
	);	
end RCA;

architecture GateLevel of RCA is
	component FA is
		port(
			A : in std_logic;
			B : in std_logic;
			Cin : in std_logic;
			S : out std_logic;
			Cout: out std_logic
		);
	end component FA;
	signal internal_signal_0 : std_logic;
	signal internal_signal_1 : std_logic;
	signal internal_signal_2 : std_logic;
begin
	FA_instance_0 : FA port map (A=>A(0), B=>B(0), Cin=>Cin, S=>S(0), Cout=>internal_signal_0);
	FA_instance_1 : FA port map (A=>A(1), B=>B(1), Cin=>internal_signal_0, S=>S(1), Cout=>internal_signal_1);
	FA_instance_2 : FA port map (A=>A(2), B=>B(2), Cin=>internal_signal_1, S=>S(2), Cout=>internal_signal_2);
	FA_instance_3 : FA port map (A=>A(3), B=>B(3), Cin=>internal_signal_2, S=>S(3), Cout=>Cout);
end GateLevel;
