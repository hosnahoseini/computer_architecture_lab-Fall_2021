----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:14:28 11/17/2021 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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

entity register is
	port(
		D: in std_logic_vector(3 downto 0);
		Clk  : in std_logic;  --  clock
      Reset: in std_logic;  --  active-low asynchronous reset
		Q: out std_logic_vector(3 downto 0)
		Qbar : out std_logic  -- ~output
	);
end register;

architecture Behavioral of register is
begin
	process(Clk, Reset)
	begin
		if(Reset = '0') then
		   Q <= "0000";
		else
			Q <= Data;
		end if;
	end process;
end Behavioral;
