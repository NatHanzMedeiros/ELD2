 library ieee;
 use ieee.std_logic_1164.all;
 entity ContadorArb is
 port(
 
 clk: in std_logic;
 reset: in std_logic;
 d: in std_logic_vector(2 downto 0);
 q: out std_logic_vector(2 downto 0)
 );
 end entity;

 architecture ifsc_v1 of ContadorArb is
	signal r_reg: std_logic_vector (2 downto 0);
	signal r_next: std_logic_vector (2 downto 0);
	
 begin
 process(clk,reset)
 begin
 
 if (reset='1') then
 r_reg <=(others=>'0');
 elsif (clk'event and clk='1') then
 r_reg <= r_next;
 end if;
 end process;
 
 with r_reg select
 
 r_next <= "011" when "000" ,
			  "100" when "011" ,
			  "101" when "100" ,
			  "111" when "101" ,
			  "000" when "111" ,
			  "000" when others;
			  
 q <= r_reg ;			
				
 end architecture;