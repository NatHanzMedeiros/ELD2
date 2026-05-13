library ieee;
use ieee.std_logic_1164.all;

entity for_xor_gerador is
	port
	(
		-- Input ports
		A : in std_logic_vector (7 downto 0); 

		-- Output ports
		B : out std_logic

	);
end entity;

architecture ifsc_v1 of for_xor_gerador is

constant WIDTH: integer := 8;

signal P : std_logic_vector(7 downto 0);

begin

	process(A , P)
begin
	P(0) <= A(0);
	
	for i in 1 to (WIDTH-1) loop
		P(i) <= P(i-1) xor A(i);
	end loop;
	
	B <= P(WIDTH-1);
	
end process;

end architecture;