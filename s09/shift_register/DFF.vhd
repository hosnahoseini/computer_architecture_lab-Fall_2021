----------------------------------------------------------------------------------
-- Designer Name:  Pouya Mohammadi	
-- Module Name:    DFF
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF is
	port(
		Data : in std_logic;  --  input data 
		Clk  : in std_logic;  --  clock
      Reset: in std_logic;  --  active-low asynchronous reset
		Q    : out std_logic --  output (saved data)
	);
end DFF;

architecture Behavioral of DFF is
begin
	process(Clk, Reset)
	begin
		if(Reset = '0') then
		   Q <= '0';
		else
			Q <= Data;
		end if;
	end process;
end Behavioral;
