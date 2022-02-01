----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:33:44 11/03/2021 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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
entity FA is
	 Port ( A : in std_logic;
				 B : in std_logic;
				 Cin : in std_logic;
				 S : out std_logic;
				 Cout : out std_logic);
end FA;

architecture gate_level of FA is

begin

 S <= A xor B xor Cin ;
 Cout <= (A and B) or (Cin and A) or (Cin and B) ;

end gate_level;

