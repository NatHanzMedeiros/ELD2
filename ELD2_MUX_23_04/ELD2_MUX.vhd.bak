library std;
use std.standard.all;

entity mux4x1 is
	port
	(
		-- Input ports
		X: in  bit_vector (3 downto 0);
                Sel : in bit_vector (1 downto 0);
		-- Output ports
		Y : out bit
	);
end entity;

-- Implementação com lógica pura
architecture v_logica_pura of mux4x1 is

begin
 Y <= (X(0) and (not Sel(1)) and (not Sel(0))) or
   (X(1) and (not Sel(1)) and (Sel(0))) or
   (X(2) and (Sel(1)) and (not Sel(0))) or
   (X(3) and (Sel(1)) and (Sel(0))) ;
    
end architecture;



architecture v_WHEN_ELSE of mux4x1 is
begin
 Y <= X(0) when Sel = "00" else
      X(1) when Sel = "01" else
      X(2) when Sel = "10" else
      X(3);
end architecture;


architecture v_WITH_SELECT of mux4x1 is
begin
 with Sel select
 Y <= X(0) when "00",    -- note o uso da ,
      X(1) when "01",
      X(2) when "10",
      X(3) when others;  -- note o uso de others, para todos os demais valores.  
                         -- Não pode ser substituido por "11" mesmo que o signal seja bit_vector.
end architecture;



CONFIGURATION cfg_ifsc OF mux4x1 IS
--	FOR v_logica_pura END FOR;
--	FOR v_WHEN_ELSE END FOR;
	FOR v_WITH_SELECT END FOR;
END CONFIGURATION;





