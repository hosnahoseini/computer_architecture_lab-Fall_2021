----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:05:18 10/20/2021 
-- Design Name: 
-- Module Name:    ripple_counter - Behavioral 
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

------------------TFF--------------------
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

---------------ripple_counter-----------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity ripple_counter is
port(
		clk, reset : in std_logic;
		cnt_out : out std_logic_vector( 3 downto 0)
		);
end ripple_counter;

architecture Behavioral of ripple_counter is

	signal q_not : std_logic_vector( 3 downto 0);

	component TFF is
	
		port(t, reset, clk: in std_logic;
					q, q_not: out std_logic
					);
	end component TFF;

begin
	tff_instance_0:TFF port map(t=>'1', reset=>reset, clk=>clk, q=>cnt_out(0), q_not=>q_not(0));
	tff_instance_1:TFF port map(t=>'1', reset=>reset, clk=>q_not(0), q=>cnt_out(1), q_not=>q_not(1));
	tff_instance_2:TFF port map(t=>'1', reset=>reset, clk=>q_not(1), q=>cnt_out(2), q_not=>q_not(2));
	tff_instance_3:TFF port map(t=>'1', reset=>reset, clk=>q_not(2), q=>cnt_out(3), q_not=>q_not(3));


end Behavioral;

---------------test_bench-----------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_tb is
end counter_tb;

architecture test of counter_tb is
component ripple_counter is
	port(
		clk, reset : in std_logic;
		cnt_out : out std_logic_vector( 3 downto 0)
		);
end component ripple_counter;
	
signal reset : std_logic:= '0';
signal clk : std_logic := '0';	
signal cnt_out : std_logic_vector( 3 downto 0);


	begin
		ripple_counter_instance : ripple_counter port map (clk=>clk, reset=>reset, cnt_out=>cnt_out);
		
		clk <= not clk after 5 ns;

		process begin 
			reset <= '1';
			wait for 5 ns;
			
			reset <= '0';
			wait for 165 ns;
			 
			reset <= '1';
			wait for 5 ns;

		report "simulation finished successfully" severity FAILURE;
	end process;
end architecture test;


