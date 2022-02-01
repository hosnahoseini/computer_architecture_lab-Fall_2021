----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:42:34 11/17/2021 
-- Design Name: 
-- Module Name:    counter - Behavioral 
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


entity counter is
	port(C, CLR : in std_logic;
	Q : out std_logic_vector(3 downto 0));
end counter;

architecture behavioral of counter is
	signal tmp: std_logic_vector(3 downto 0);
	begin
	process (C, CLR)
		begin
			if (CLR='1') then
				tmp <= "0000";
			elsif (C’event and C='1') then
				tmp <= tmp + 1;
			end if;
		end process;
		Q <= tmp;
end behavioral;


