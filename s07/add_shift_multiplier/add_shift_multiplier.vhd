----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:13:57 11/17/2021 
-- Design Name: 
-- Module Name:    add_shift_multiplier - Behavioral 
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

entity add_shift_multiplier is
	port(A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		Clk  : in std_logic;  --  clock
		Q: out std_logic_vector(7 downto 0) );
end add_shift_multiplier;

architecture Behavioral of add_shift_multiplier is

	component shift_reg is
		 port(
		 clk : in std_logic;
		 D: in std_logic_vector(3 downto 0);
		 Q: out std_logic_vector(3 downto 0)
		 );
	end component;
	
		
	component mux_2x1_4bit is
		port ( SEL : in  STD_LOGIC;
				  A   : in  STD_LOGIC_VECTOR (3 downto 0);
				  B   : in  STD_LOGIC_VECTOR (3 downto 0);
				  C   : out STD_LOGIC_VECTOR (3 downto 0));
	end component mux_2x1_4bit;

	component RCA is
		port(
			A : in std_logic_vector (3 downto 0);
			B : in std_logic_vector (3 downto 0);
			Cin: in std_logic;
			S : out std_logic_vector (3 downto 0);
			Cout : out std_logic
		);	
	end component RCA;
	
	component counter is
		port(
			C, CLR : in std_logic;
			Q : out std_logic_vector(3 downto 0));
	end component counter;
	
	signal A_out : std_logic_vector (3 downto 0);
	signal B_reg : std_logic_vector (3 downto 0);
	signal Q_reg : std_logic_vector (3 downto 0);
	signal shifted : std_logic_vector (8 downto 0);	
	signal cnt : integer;
	signal E : std_logic;
	signal clear : std_logic;

begin

	B_reg <= B;
	process (Clk, clear)
			begin
				if (clear='1') then
					cnt := 0;
				elsif (Clk'event and Clk='1' and cnt < 15) then
						mux_instance_0: mux_2x1_4bit port map ("0000", A , A_out, B_reg(0));
						RCA_instance_0: RCA port map (A_out, Q_reg, '0', Q_reg, E);
						shifted <= ("0" & Q_reg & B_reg(3) & B_reg(2) & B_reg(1));
						E <= shifted(8);
						Q_reg <= (shifted(7) & shifted(6) & shifted(5) & shifted(4));
						B_reg <= (shifted(3) & shifted(2) & shifted(1) & shifted(0));

						cnt <= cnt - 1;
				end if;
	end process;
						
end Behavioral;

