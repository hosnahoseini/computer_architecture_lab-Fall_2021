----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:05:10 11/03/2021 
-- Design Name: 
-- Module Name:    carry_look_ahead_adder_adder - Behavioral 
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
--use UNISIM.Vcomponents.all;
------------------test_bench-------------------
library IEEE;
use IEEE.std_logic_1164.ALL;
use ieee.numeric_std.all;


entity carry_look_ahead_adder is
		port ( A : in std_logic_vector (3 downto 0);
				B : in std_logic_vector (3 downto 0);
				Cin : in std_logic;
				S : out std_logic_vector (3 downto 0);
				Cout : out std_logic);
end carry_look_ahead_adder;
 
architecture Behavioral of carry_look_ahead_adder is
 
component partial_full_adder
		port ( A : in std_logic;
				B : in std_logic;
				Cin : in std_logic;
				S : out std_logic;
				P : out std_logic;
				G : out std_logic);
	end component;
 
	signal c: std_logic_vector (3 downto 0);
	signal P,G: std_logic_vector(3 downto 0);
	
	begin

		c(1) <= G(0) or (P(0) and Cin);
		c(2) <= G(1) or (P(1) and G(0)) or (P(1) and P(0) and Cin);
		c(3) <= G(2) or (P(2) and G(1)) or (P(2) and P(1) and G(0)) or (P(2) and P(1) and P(0) and Cin);
		Cout <= G(3) or (P(3) and G(2)) or (P(3) and P(2) and G(1)) or (P(3) and P(2) and P(1) and G(0)) or (P(3) and P(2) and P(1) and P(0) and Cin);
		 
		PFA_instance_1: partial_full_adder port map( A(0), B(0), Cin, S(0), P(0), G(0));
		PFA_instance_2: partial_full_adder port map( A(1), B(1), c(1), S(1), P(1), G(1));
		PFA_instance_3: partial_full_adder port map( A(2), B(2), c(2), S(2), P(2), G(2));
		PFA_instance_4: partial_full_adder port map( A(3), B(3), c(3), S(3), P(3), G(3));
		 
end Behavioral;
