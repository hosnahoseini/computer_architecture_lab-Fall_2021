--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:42:11 12/11/2021
-- Design Name:   
-- Module Name:   C:/Users/RAI/Desktop/university/term 5/CALab/s09/shift_register/testbench.vhd
-- Project Name:  shift_register
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: shift_register
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testbench IS
END testbench;
 
ARCHITECTURE behavior OF testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_register
    PORT(
         Clk : IN  std_logic;
         D : IN  std_logic_vector(3 downto 0);
         Q: OUT std_logic;
         select_mode : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal D : std_logic_vector(3 downto 0) := (others => '0');
   signal select_mode : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic:= '0';

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_register PORT MAP (
          Clk => Clk,
          D => D,
          Q => Q,
          select_mode => select_mode
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		-- load
		D <= "1010";
		select_mode <= "11";
      wait for Clk_period*1;
		
		--shift right
		select_mode <= "01";
      wait for Clk_period*3;

		-- load
		D <= "1011";
		select_mode <= "11";
      wait for Clk_period*1;
		
		--shift left
		select_mode <= "10";
      wait for Clk_period*3;

		-- load
		D <= "1110";
		select_mode <= "11";
      wait for Clk_period*1;
		
		--hold
		select_mode <= "00";
      wait for Clk_period*3;

      assert false report "Test: OK" severity failure;
   end process;

END;
