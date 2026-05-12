library ieee;
use ieee.std_logic_1164.all;

entity bcdcase is
	port
	(
		-- Input ports
		En	: in  std_logic_vector (3 downto 0);
		-- Output ports
		Ou : out std_logic_vector (6 downto 0)
		
	);
	
end entity;


architecture ifsc_v1 of bcdcase is
begin

	process(En)
	begin
	case En is
	
	when "0000" =>
		Ou <= "0000001";
	when "0001" =>
		Ou <= "1001111";
	when "0010" =>
		Ou <= "0010010";
	when "0011" =>
		Ou <= "0000110";
	when "0100" =>
		Ou <= "1001100";
	when "0101" =>
		Ou <= "0100100";
	when "0110" =>
		Ou <= "0100000";
	when "0111" =>
		Ou <= "0001111";
	when "1000" =>
		Ou <= "0000000";
	when "1001" =>
		Ou <= "0000100";
	when others =>
		Ou <= "1111110";

end case;
end process;

end architecture;
