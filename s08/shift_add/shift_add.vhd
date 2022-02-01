----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:14 11/25/2021 
-- Design Name: 
-- Module Name:    shift_add - Behavioral 
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

entity shift_add is
  port (
        A_in  : in  std_logic_vector(3 downto 0 );
        B_in  : in  std_logic_vector(3 downto 0 );
        clk   : in  std_logic;
        reset : in  std_logic;
        START : in  std_logic;
        RC    : out std_logic_vector(7 downto 0 );
        STOP  : out std_logic);
end shift_add;
use work.all;
architecture rtl of shift_add is
  signal ADD_cmd   : std_logic;
  signal Add_out   : std_logic_vector(3 downto 0 );
  signal C_out     : std_logic;
  signal LOAD_cmd  : std_logic;
  signal LSB       : std_logic;
  signal RA        : std_logic_vector(3 downto 0 );
  signal RB        : std_logic_vector(3 downto 0 );
  signal SHIFT_cmd : std_logic;
  component RCA
      port (
            RA      : in  std_logic_vector(3 downto 0 );
            RB      : in  std_logic_vector(3 downto 0 );
            C_out   : out std_logic;
            Add_out : out std_logic_vector(3 downto 0 )
            );
  end component;
  component Controller
      port (
            reset     : in  std_logic;
            clk       : in  std_logic;
            START     : in  std_logic;
            LSB       : in  std_logic;
            ADD_cmd   : out std_logic;
            SHIFT_cmd : out std_logic;
            LOAD_cmd  : out std_logic;
            STOP      : out std_logic
            );
  end component;
  component Multiplicand
      port (
            reset    : in  std_logic;
            A_in     : in  std_logic_vector(3 downto 0 );
            LOAD_cmd : in  std_logic;
            RA       : out std_logic_vector(3 downto 0 )
            );
  end component;
  component Multiplier_Result
      port (
            reset     : in  std_logic;
            clk       : in  std_logic;
            B_in      : in  std_logic_vector(3 downto 0 );
            LOAD_cmd  : in  std_logic;
            SHIFT_cmd : in  std_logic;
            ADD_cmd   : in  std_logic;
            Add_out   : in  std_logic_vector(3 downto 0 );
            C_out     : in  std_logic;
            RC        : out std_logic_vector(7 downto 0 );
            LSB       : out std_logic;
            RB        : out std_logic_vector(3 downto 0 )
            );
  end component;
begin
  inst_RCA: RCA
    port map (
              RA => RA(3 downto 0),
              RB => RB(3 downto 0),
              C_out => C_out,
              Add_out => Add_out(3 downto 0)
              );
  inst_Controller: Controller
    port map (
              reset => reset,
              clk => clk,
              START => START,
              LSB => LSB,
              ADD_cmd => ADD_cmd,
              SHIFT_cmd => SHIFT_cmd,
              LOAD_cmd => LOAD_cmd,
              STOP => STOP
              );
  inst_Multiplicand: Multiplicand
    port map (
              reset => reset,
              A_in => A_in(3 downto 0),
              LOAD_cmd => LOAD_cmd,
              RA => RA(3 downto 0)
              );
  inst_Multiplier_Result: Multiplier_Result
    port map (
              reset => reset,
              clk => clk,
              B_in => B_in(3 downto 0),
              LOAD_cmd => LOAD_cmd,
              SHIFT_cmd => SHIFT_cmd,
              ADD_cmd => ADD_cmd,
              Add_out => Add_out(3 downto 0),
              C_out => C_out,
              RC => RC(7 downto 0),
              LSB => LSB,
              RB => RB(3 downto 0)
              );
end rtl;
