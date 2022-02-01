----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:48:56 11/19/2021 
-- Design Name: 
-- Module Name:    sa - Behavioral 
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
entity MULT is
	port(A_Port,
	B_Port: in bit_vector(3 downto 0);
	M_Out: out bit_vector(7 downto 0);
	CLK: in CLOCK;
	START: in BIT;
	DONE: out BIT
	);
end MULT;
architecture Shift_Mult of MULT is
	begin
		process
			variable A, B, M: BIT_VECTOR;
			variable COUNT: INTEGER;
			begin
				wait until (START = 1);
					A := A_Port; COUNT := 0;
					B := B_Port; DONE <='0';
					M := B"0000";
					while (COUNT < 4) loop
					if (A(0) = '1'= then
						M := m + B;
					end if;
					A := SHR(A, M(0));
					B := SHR(M, '0');
					COUNT := COUNT + 1;
				end loop;
				M_Out <= M & A;
				DONE <= '1';
		end process;
	end SHIFT_MULT;
