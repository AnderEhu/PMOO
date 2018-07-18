with Ada.Text_IO;
use Ada.Text_IO;
with suma_divisores_propio;

function es_primo(I:Integer) return boolean is
begin

  if suma_divisores_propio(I) = 1 then
    return true;
  end if;
  return false;

end es_primo;
