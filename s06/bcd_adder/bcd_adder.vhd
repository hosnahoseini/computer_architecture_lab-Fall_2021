----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:32:11 11/10/2021 
-- Design Name: 
-- Module Name:    bcd_adder - Behavioral 
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

entity bcd_adder is
	port(
			A : in std_logic_vector (3 downto 0);
			B : in std_logic_vector (3 downto 0);
			Cin: in std_logic;
			S : out std_logic_vector (3 downto 0);
			Cout : out std_logic
		);
end bcd_adder;

architecture Behavioral of bcd_adder is
		component RCA is
		port(
			A : in std_logic_vector (3 downto 0);
			B : in std_logic_vector (3 downto 0);
			Cin: in std_logic;
			S : out std_logic_vector (3 downto 0);
			Cout : out std_logic
		);	
	end component RCA;
	signal internal_signal_sum : std_logic_vector (3 downto 0);
	signal internal_signal_input : std_logic_vector (3 downto 0);
	signal internal_signal_cout_0 : std_logic;
	signal internal_signal_cout_1 : std_logic;
	signal internal_signal_0 : std_logic;


begin

	RCA_instance_0 : RCA port map(A, B, Cin, internal_signal_sum, internal_signal_cout_0);
	internal_signal_0 <= ((internal_signal_sum(3) and internal_signal_sum(2)) or
								(internal_signal_sum(3) and internal_signal_sum(1)) or
								internal_signal_cout_0);
	Cout <= internal_signal_0;			
	internal_signal_input <= ("0" & internal_signal_0 & internal_signal_0 & "0");
	
	RCA_instance_1 : RCA port map(internal_signal_sum, internal_signal_input, '0', S, internal_signal_cout_1);


end Behavioral;

