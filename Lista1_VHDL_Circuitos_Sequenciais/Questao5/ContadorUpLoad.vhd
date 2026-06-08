 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.numeric_std.all;
 entity ContadorUPLoad is
 port(
 
 clk: in std_logic;
 reset: in std_logic;
 up: in std_logic;
 load: in std_logic;
 valorcarregado: in std_logic_vector(7 downto 0);
 saida: out std_logic_vector(7 downto 0)
 );
 end entity;

 architecture ifsc_v1 of ContadorUPLoad is
	signal r_reg:  std_logic_vector (7 downto 0);
	signal r_next: std_logic_vector (7 downto 0);
	signal sinais: std_logic_vector (1 downto 0);
	
 begin
 process(clk,reset)
 begin
 
 if (reset='1') then
 r_reg <=(others=>'0');
 elsif (clk'event and clk='1') then
 r_reg <= r_next;
 end if;
 end process;
 
 
 sinais <= (load & up);
 
 with sinais select
 
 r_next <= 	valorcarregado when "10",
 		valorcarregado when "11",
		std_logic_vector(unsigned(r_reg) + 1)  when "01",
		std_logic_vector(unsigned(r_reg) - 1)  when "00",
		r_reg when others ;
	
 saida <= r_reg ;
 
					
 end architecture;