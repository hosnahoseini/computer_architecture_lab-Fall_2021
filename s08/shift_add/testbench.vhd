----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:54:20 11/25/2021 
-- Design Name: 
-- Module Name:    testbench - Behavioral 
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

use ieee.numeric_std.all;
use std.textio.all;             --required for file I/O
use ieee.std_logic_textio.all;  --required for file I/O
entity  TESTBENCH  is
end TESTBENCH;
architecture BEHAVIORAL of TESTBENCH is
component shift_add
 port (
        A_in  : in  std_logic_vector(3 downto 0 );
        B_in  : in  std_logic_vector(3 downto 0 );
        clk   : in  std_logic;
        RC    : out std_logic_vector(7 downto 0 );
        reset : in  std_logic;
        START : in  std_logic;
        STOP  : out std_logic
        );
end component;
signal A_in_TB, B_in_TB : std_logic_vector(3 downto 0 );
signal clk_TB, reset_TB, START_TB : std_logic;
signal STOP_TB : std_logic;
signal RC_TB: std_logic_vector(7 downto 0);
begin
-- instantiate the Device Under Test
inst_DUT : shift_add
  port map (
    A_in => A_in_TB,
    B_in => B_in_TB,
    clk => clk_TB,
    reset => reset_TB,
    RC => RC_TB,
    START => START_TB,
    STOP => STOP_TB);
-- Generate clock stimulus
STIMULUS_CLK : process
begin
  clk_TB <= '0';
  wait for 10 ns;
  clk_TB <= '1';
    wait for 10 ns;
end process STIMULUS_CLK;
-- Generate reset stimulus
STIMULUS_RST : process
begin
  reset_TB <= '0';
  wait for 50 ns;
  reset_TB <= '1';
  wait;
end process STIMULUS_RST;
-- Generate multiplication requests
STIMULUS_START : process
file logFile : text is out "bus_log.txt";  -- set output file name
variable L: line;
variable A_temp, B_temp, i : integer;
begin
  write(L, string'("A  B  Result"));  -- include heading in file
  writeline(logFile,L);
  A_temp := 0;    -- start A at 0
  B_temp := 15;  -- start B at 15
  i := 1;
  for i in 1 to 16 loop
    A_in_TB <= STD_LOGIC_VECTOR(to_unsigned(A_temp,4));
    B_in_TB <= STD_LOGIC_VECTOR(to_unsigned(B_temp,4));
    START_TB <= '0';
    wait for 100 ns;
    START_TB <= '1';  -- request the multiplier to start
    wait for 100 ns;
    START_TB <= '0';
    wait until STOP_TB = '1';  -- wait for the multiplier to finish
    hwrite(L, A_in_TB);        -- insert hex value of A in file
    write(L, string'(" "));
    hwrite(L, B_in_TB);        -- insert hex value of B in file
    write(L, string'(" "));
    hwrite(L, RC_TB);          -- insert hex value of result in file
    writeline(logFile,L);
    A_temp := A_temp + 1;      -- increment value of A (Multiplicand)
    B_temp := B_temp - 1;      -- decrement value of B (Multiplier)
  end loop;
  wait;
end process STIMULUS_START;
end BEHAVIORAL;

