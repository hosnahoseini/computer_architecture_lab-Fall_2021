----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:28:35 11/04/2021 
-- Design Name: 
-- Module Name:    mux_4bit - Behavioral 
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

entity mux_2x1_4bit is
	Port ( SEL : in  STD_LOGIC;
				  A   : in  STD_LOGIC_VECTOR (3 downto 0);
				  B   : in  STD_LOGIC_VECTOR (3 downto 0);
				  C   : out STD_LOGIC_VECTOR (3 downto 0));
end mux_2x1_4bit;

architecture Behavioral of mux_2x1_4bit is
	component mux_2x1_1bit is
		 Port ( SEL : in  STD_LOGIC;
				  A   : in  STD_LOGIC;
				  B   : in  STD_LOGIC;
				  C   : out STD_LOGIC);
	end component mux_2x1_1bit;

begin
	C <= A when (SEL = '0') else B;

end Behavioral;

