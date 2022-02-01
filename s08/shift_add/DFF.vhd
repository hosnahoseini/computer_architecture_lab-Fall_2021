----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:16:57 11/25/2021 
-- Design Name: 
-- Module Name:    DFF - Behavioral 
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
entity  DFF  is
port (reset    : in  std_logic ;
      clk      : in  std_logic ;
      D        : in  std_logic ;
      Q        : out std_logic);
end;
------------------------------------------------------
architecture  behav  of  DFF  is
begin
  process (clk, reset)
  begin
    if reset='0' then
      Q <= '0';    -- clear register
    elsif (clk'event and clk='1') then
        Q <= D;    -- load register
    end if;
  end process;
end behav;