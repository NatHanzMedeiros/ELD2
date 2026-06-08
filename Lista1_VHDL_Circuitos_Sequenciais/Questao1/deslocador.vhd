 library ieee;
 use ieee.std_logic_1164.all;
 entity deslocador is
 port(
 
 clk: in std_logic;
 reset: in std_logic;
 ctrl: in std_logic_vector(1 downto 0);
 d: in std_logic_vector(3 downto 0);
 q: out std_logic_vector(3 downto 0)
 );
 end entity;

 architecture ifsc_v1 of deslocador is
	signal r_reg: std_logic_vector (3 downto 0);
	signal r_next: std_logic_vector (3 downto 0);
	
 begin
 process(clk,reset)
 begin
 
 if (reset='1') then
 r_reg <=(others=>'0');
 elsif (clk'event and clk='1') then
 r_reg <= r_next;
 end if;
 end process;
 
 with ctrl select
 
	r_next <= r_reg when "00" ,
				 d(3) & r_reg(3 downto 1) when "01" ,
			    r_reg(2 downto 0) & d(0) when "10" ,
				 d when "11" ,
				 r_reg when others;
				 
q <= r_reg;
				
 end architecture;