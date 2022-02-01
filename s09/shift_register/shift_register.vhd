----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:24 12/11/2021 
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

entity shift_register is
	port(
	 Clk : in std_logic;
	 D: in std_logic_vector(3 downto 0);
	 Q: out std_logic;
	 select_mode: in std_logic_vector(1 downto 0)
	 );

end shift_register;

architecture Behavioral of shift_register is

	component mux4x1 is
	port(
			A, B: in std_logic;	--select
			D : in std_logic_vector( 3 downto 0);
			Q_out: out std_logic
	);
	end component mux4x1;

	component DFF is
		port(
			Data : in std_logic;  --  input data 
			Clk  : in std_logic;  --  clock
			Reset: in std_logic;  --  active-low asynchronous reset
			Q    : out std_logic --  output (saved data)
		);
		end component DFF;

	signal mux_out : std_logic_vector (3 downto 0);
	signal FF_out : std_logic_vector (3 downto 0);

	signal data_for_right_shift : std_logic;
	signal data_for_left_shift : std_logic;

	signal Reset : std_logic;


begin

	data_for_right_shift <= '0';
	data_for_left_shift <= '0';
	Reset <= '1';

	mux_instance3 : mux4x1 port map(select_mode(1), select_mode(0), (D(3) & FF_out(2)				  & data_for_right_shift & FF_out(3)) , mux_out(3));
	mux_instance2 : mux4x1 port map(select_mode(1), select_mode(0), (D(2) & FF_out(1)				  & FF_out(3)			  	 & FF_out(2)) , mux_out(2));
	mux_instance1 : mux4x1 port map(select_mode(1), select_mode(0), (D(1) & FF_out(0)				  & FF_out(2)			  	 & FF_out(1)) , mux_out(1));
	mux_instance0 : mux4x1 port map(select_mode(1), select_mode(0), (D(0) & data_for_left_shift 	  & FF_out(1) 				 & FF_out(0)) , mux_out(0));

	DFF_instance3 : DFF port map(mux_out(3), Clk, Reset, FF_out(3));
	DFF_instance2 : DFF port map(mux_out(2), Clk, Reset, FF_out(2));
	DFF_instance1 : DFF port map(mux_out(1), Clk, Reset, FF_out(1));
	DFF_instance0 : DFF port map(mux_out(0), Clk, Reset, FF_out(0));

	process (Clk)
	begin
		if (select_mode = "01") then
			Q <=  FF_out(0);
		else
			Q <=  FF_out(3);
		end if;
	end process;


end Behavioral;

