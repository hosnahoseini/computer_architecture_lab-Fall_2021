----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:10:26 10/20/2021 
-- Design Name: 
-- Module Name:    TFF - Behavioral 
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

entity TFF is
	port(t, reset, clk: in std_logic;
			q, q_not: out std_logic);
end TFF;

architecture rtl of TFF is
begin
    process(clk, reset) 
	 	 variable temp:std_logic;

		 begin
			  if (reset = '1') then
					temp := '0';
			  elsif (rising_edge(clk)) then
					if (t = '1') then
						 temp := not temp;
					end if;
			  end if;
			  	 q <= temp;
			  	 q_not <= not temp;

    end process;


end rtl;
---------------test_bench-----------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tff_tb is
end tff_tb;

architecture test of tff_tb is
	component TFF is
	port(t, reset, clk: in std_logic;
			q, q_not: out std_logic);
	end component TFF;
	
	signal t : std_logic:= '0';
	signal reset : std_logic:= '0';
	signal clk : std_logic := '0';	
	signal q: std_logic:= '0';
	signal q_not: std_logic:= '0';



begin
	TFF_instance : TFF port map (t=>t, reset=>reset, clk=>clk, q=>q, q_not=>q_not);
	tb:
	clk <= not clk after 5 ns;

	process begin 
		reset <= '1';
		wait for 5 ns;
		
		reset <= '0';
		t <= '1';
		wait for 50 ns;
		
		t <= '0';
		wait for 50 ns;
		
		reset <= '1';
		wait for 5 ns;

	report "simulation finished successfully" severity FAILURE;
	end process tb;
end architecture test;


