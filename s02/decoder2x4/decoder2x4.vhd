----------------------------------------------------------------------------------
-- Create Date:    08:15:21 10/01/2021 
-- Designer Name:  Pouya Mohammadi	
-- Module Name:    Decoder 2x4
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder2x4 is
port(
		A : in  std_logic_vector (1 downto 0); -- this is a 2 bit input (A0 and A1)
		O : out std_logic_vector (3 downto 0) -- this is a 4 bit out put (O0, O1, O2, O3)
);
end decoder2x4;

architecture gatelevel of decoder2x4 is
begin
	O(3) <= A(0) and A(1);
	O(2) <= not A(0) and A(1);
	O(1) <= A(0) and not A(1);
	O(0) <= not A(0) and not A(1);
end gatelevel;
