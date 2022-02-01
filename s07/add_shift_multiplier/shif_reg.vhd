----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:18:01 11/17/2021 
-- Design Name: 
-- Module Name:    shift_register - Behavioral 
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
entity shift_reg is
	 port(
	 clk : in std_logic;
	 D: in std_logic_vector(3 downto 0);
	 Q: out std_logic_vector(3 downto 0)
	 );
end shift_reg;
 
architecture behavioral of shift_reg is
 
begin
 
 process (clk)
	 begin
	 if clear = '1' then
		 Q <= "0000";
	  elsif (CLK'event and CLK='1') then
		 Q(3 downto 1) <= Q(2 downto 0);
		 Q(0) <= Input_Data;
	 end if;
 end process;


end shift_reg
