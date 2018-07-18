with Ada.Text_IO;
use Ada.Text_IO;
with puntos;


function distancia_menor (P1,P2: puntos.punto; D: float) return boolean is
begin

  if puntos.distancia(P1,P2) < D then
  return true;
end if;
return false;


end distancia_menor;
