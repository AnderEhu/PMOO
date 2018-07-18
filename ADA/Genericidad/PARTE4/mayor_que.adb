with Ada.Text_IO;
use Ada.Text_IO;
with puntos;

function mayor_que(E1,E2: puntos.punto) return boolean is
begin

  if puntos.get_X(E1) < puntos.get_X(E2) or (puntos.get_X(E1) = puntos.get_X(E2) AND (puntos.get_y(E1)<puntos.get_y(E2))) then
    return true;
  end if;
  return false;
end mayor_que;
