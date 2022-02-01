----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:17:57 11/25/2021 
-- Design Name: 
-- Module Name:    multiplicant - Behavioral 
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

entity  Multiplicand  is
port (reset    : in  std_logic ;
      A_in     : in  std_logic_vector (3 downto 0);
      LOAD_cmd : in  std_logic ;
      RA       : out std_logic_vector (3 downto 0));
end;
------------------------------------------------------
architecture  struc  of  Multiplicand  is
component DFF
      port (
            reset  : in  std_logic;
            clk    : in  std_logic;
            D      : in  std_logic;
            Q      : out std_logic
            );
end component;
begin
DFFs: for i in 3 downto 0 generate
    DFFReg:DFF port map (reset, LOAD_cmd, A_in(i), RA(i));
end generate;
end struc;
