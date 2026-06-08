 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 entity ContadorUP is
 port(
 
 clk: in std_logic;
 reset: in std_logic;
 up: in std_logic;
 saida: out std_logic_vector(7 downto 0)
 );
 end entity;

 architecture ifsc_v1 of ContadorUP is
	signal r_reg:  unsigned (7 downto 0);
	signal r_next: unsigned (7 downto 0);
	
 begin
 process(clk,reset)
 begin
 
 if (reset='1') then
 r_reg <=(others=>'0');
 elsif (clk'event and clk='1') then
 r_reg <= r_next;
 end if;
 end process;
 
 with up select
 
 r_next <= r_reg + 1 when '1',
			  r_reg - 1 when '0' ,
			  r_reg when others ;
	
 saida <= std_logic_vector(r_reg) ;
 
					
 end architecture;