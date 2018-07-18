with Ada.Text_IO;
use Ada.Text_IO;


function Es_par(I:Integer) return boolean is
  --Post: true si I es par
begin

  if I mod 2 = 0 then
    return true;
  end if;
    return false;
end Es_par;
