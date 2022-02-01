----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Hosna Oyarhoseini - 9823010
-- 
-- Create Date:    18:42:35 09/29/2021 
-- Design Name: 
-- Module Name:    full_adder - structural 
-- Project Name: 	 full_adder - structural 
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

--------------full_adder------------------
entity full_adder is
port(
		I0, I1, Cin: in std_logic;
		S, Cout: out std_logic
);
end full_adder;

architecture struct of full_adder is

	signal internal_signal0 : std_logic;
	signal internal_signal1 : std_logic;
	signal internal_signal2 : std_logic;
	
	component half_adder is
	port(
			in1, in2: in std_logic;
			out1, out2: out std_logic
	);
	end component half_adder;
	
	component or_gate is
	port(
			A, B: in std_logic;
			C: out std_logic
	);
	end component or_gate;

begin

	half_adder_instace0:half_adder port map(in1=>I1, in2=>I0, out1=>internal_signal0, out2=>internal_signal1);
	half_adder_instace1:half_adder port map(in1=>internal_signal0, in2=>Cin, out1=>S, out2=>internal_signal2);
	or_gate_instance0:or_gate port map(A=>internal_signal1, B=>internal_signal2, C=>Cout);

end struct;

-------------half_adder------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
port(
		in1, in2: in std_logic;
		out1, out2: out std_logic
);
end half_adder;

architecture struct of half_adder is
	component xor_gate is
	port(
		A, B: in std_logic;
		C: out std_logic
	);
	end component xor_gate;
	
	component and_gate is
	port(
		A, B: in std_logic;
		C: out std_logic
	);
	end component and_gate;
	
begin
		xor_gate_instance0: xor_gate port map(A=>in1, B=>in2, C=>out1);
		and_gate_instance0: and_gate port map(A=>in1, B=>in2, C=>out2);
end struct;

------------------xor--------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
port(
		A, B: in std_logic;
		C: out std_logic
);
end xor_gate;

architecture gatelevel of xor_gate is

begin

	C <= A xor B;
	
end gatelevel;

------------------and--------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
port(
		A, B: in std_logic;
		C: out std_logic
);
end and_gate;

architecture gatelevel of and_gate is

begin

	C <= A and B;
	
end gatelevel;

------------------or---------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
port(
		A, B: in std_logic;
		C: out std_logic
);
end or_gate;

architecture gatelevel of or_gate is

begin

	C <= A or B;
	
end gatelevel;

