with Ada.Text_IO;
use Ada.Text_IO;

function suma_divisores_propio(I:Integer) return integer is

suma: integer:=0;

begin

  for J in 1..I-1  loop
    if i mod j = 0 then
      suma:=suma+j;
    end if;
  end loop;
return suma;
end suma_divisores_propio;
