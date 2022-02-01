----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:05:44 11/04/2021 
-- Design Name: 
-- Module Name:    partical_full_adder - Behavioral 
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
 entity partial_full_adder is
		port ( A : in std_logic;
				B : in std_logic;
				Cin : in std_logic;
				S : out std_logic;
				P : out std_logic;
				G : out std_logic);
end partial_full_adder;
 
architecture Gatelevel of partial_full_adder is
 
begin
 
	S <= A xor B xor Cin;
	P <= A xor B;
	G <= A and B;
 
end Gatelevel;