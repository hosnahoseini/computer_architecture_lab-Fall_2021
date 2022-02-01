----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:26:42 11/03/2021 
-- Design Name: 
-- Module Name:    carry_select_adder - Behavioral 
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

entity CSA is
	Port ( 
		A : in std_logic_vector (3 downto 0);
		B : in std_logic_vector (3 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector (3 downto 0);
		Cout: out std_logic
	);
end CSA;

architecture GateLevel of CSA is

	component RCA is
		port(
			A : in std_logic_vector (3 downto 0);
			B : in std_logic_vector (3 downto 0);
			Cin: in std_logic;
			S : out std_logic_vector (3 downto 0);
			Cout : out std_logic
		);	
	end component RCA;
	
	component mux_2x1_4bit is
		Port ( SEL : in  STD_LOGIC;
					  A   : in  STD_LOGIC_VECTOR (3 downto 0);
					  B   : in  STD_LOGIC_VECTOR (3 downto 0);
					  C   : out STD_LOGIC_VECTOR (3 downto 0));
	end component mux_2x1_4bit;


	component mux_2x1_1bit is
		 Port ( SEL : in  STD_LOGIC;
				  A   : in  STD_LOGIC;
				  B   : in  STD_LOGIC;
				  C   : out STD_LOGIC);
	end component mux_2x1_1bit;
	
	signal internal_signal_0 : std_logic_vector (3 downto 0);
	signal internal_signal_1 : std_logic_vector (3 downto 0);
	signal internal_signal_2 : std_logic;
	signal internal_signal_3 : std_logic;
	
begin

	four_bit_adder_instance_0 : RCA port map (A=>A, B=>B, Cin=>'0', S=>internal_signal_0, Cout=>internal_signal_2);
	four_bit_adder_instance_1 : RCA port map (A=>A, B=>B, Cin=>'1', S=>internal_signal_1, Cout=>internal_signal_3);
	mux_2x1_1bit_instance : mux_2x1_1bit port map(Cin, internal_signal_2, internal_signal_3, Cout);
	mux_2x1_4bit_instance : mux_2x1_4bit port map(Cin, internal_signal_0, internal_signal_1, S);

end GateLevel;
