with Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;
with Crear_Sublista_4Primos, suma_divisores_propio,Listas, es_par,es_primo;
use Listas;

procedure Probar_Listas is
   procedure Escribir_Contenido(L: in out Listas.Lista; Lista: String) is
      N: Integer;
   begin
      -- Contenido de L1 con los 10 primeros enteros
      Put_Line("El contenido de la Lista "&Lista&" es:");
      Put("===> ");
      while not Listas.Es_Vacia(L) loop
         Listas.Obtener_Primero(L, N);
         Put(N,2);
         Put(" ");
         Listas.Borrar_Primero(L);
      end loop;
      New_Line; New_Line;
   end Escribir_Contenido;

   procedure Escribir_Contenidos(L1: in out Listas.Lista; L1s: String; L2: in out Listas.Lista; L2s: String) is
      N1, N2: Integer;

   begin
      Put_Line("===> El contenido de las Listas "&L1s&" y "&L2s&" es:");
      while not Listas.Es_Vacia(L1) loop
         Listas.Obtener_Primero(L1, N1);
         Listas.Obtener_Primero(L2, N2);
         Put(N1, 4);
         Put("  --  ");
         Put(N2, 4);
         New_Line;
         Listas.Borrar_Primero(L1);
         Listas.Borrar_Primero(L2);
      end loop;
   end Escribir_Contenidos;

 Function Es_abundante(I:integer) return boolean is

 begin

   if suma_divisores_propio(I) > I then
      return true;
    end if;
    return false;

 end Es_abundante;

 PROCEDURE Crear_Sublista_3Abundantes is new listas.Crear_Sublista(Cuantos=>3,Filtro=>Es_abundante);
 PROCEDURE Crear_Sublista_3Pares is new listas.Crear_Sublista(Cuantos=>5,Filtro=>Es_par);
   L1,
      L1p,
      L2,
      L2p,
      Lp1,
      Lp2,
      L3,
      L3p,
      Lp3,
      L4,
      L4P,
      LP4: Listas.Lista;
   N,
      N1,
      N2  : Integer;



begin
   -- Crear lista de enteros L1 con los 10 primeros enteros
   Put("===> Creando L1 ...");
   Listas.Crear_Vacia(L1);

   for I in 1..10 loop
      Listas.Colocar(L1, I);
      if Listas.Esta(L1, I) then
         Put(I, 0);
         Put(" ");
      else
         Put("NO");
         Put(I, 0);
         Put(" ");
      end if;
   end loop;
  Crear_Sublista_3pares(L1, L1p); -- Los pares de L1
   New_Line; New_Line;

   -- Crear lista de enteros L2 con los enteros desde el 11 al 23
   Put("===> Creando L2 ...");
   Listas.Crear_Vacia(L2);
   for I in 11..23 loop
      Listas.Colocar(L2, I);
      if Listas.Esta(L2, I) then
         Put(I, 0);
         Put(" ");
      else
         Put("NO");
         Put(I, 0);
         Put(" ");
      end if;
   end loop;
   Crear_Sublista_3pares(L2, L2p); -- Los pares de L2
   New_Line; New_Line;

   -- Crear lista de enteros L3 con los enteros desde el 23 al 33
   Put("===> Creando L3 ...");
   Listas.Crear_Vacia(L3);
   for I in 23..33 loop
      Listas.Colocar(L3, I);
      if Listas.Esta(L3, I) then
         Put(I, 0);
         Put(" ");
      else
         Put("NO");
         Put(I, 0);
         Put(" ");
      end if;
   end loop;
   Crear_Sublista_4Primos(L3, L3p); -- Los primos de L3
   New_Line; New_Line;

    -- Crear lista de enteros L4 con los enteros desde el 1 al 23
   Put("===> Creando L4 ...");
   Listas.Crear_Vacia(L4);
   for I in 1..23 loop
      Listas.Colocar(L4, I);
      if Listas.Esta(L4, I) then
         Put(I, 0);
         Put(" ");
      else
         Put("NO");
         Put(I, 0);
         Put(" ");
      end if;
   end loop;
   Crear_Sublista_3Abundantes(L4, L4p); -- Los numeros abundantes de L2
   New_Line; New_Line;



   -- Contenido de L1 con los 10 primeros enteros
   Put("===> ");
   Escribir_Contenido(L1, "L1");

   -- Contenido de L2 con los 10 primeros enteros
   Put("===> ");
   Escribir_Contenido(L2, "L2");

   -- Contenido de L3 con los 10 primeros enteros
   Put("===> ");
   Escribir_Contenido(L3, "L3");

   -- Contenido de L4 con los 10 primeros enteros
   Put("===> ");
   Escribir_Contenido(L4, "L4");

   -- Crear lista de enteros pares Lp con los 5 primeros pares del 2 al 8
   Listas.Crear_Vacia(Lp1);
   N:= 2;
   while N<=10 loop
      Listas.Colocar(Lp1, N);
      N:= N+2;
   end loop;

   -- Trataremos las listas de pares L1p y Lp1
   if Listas.Igual(Lp1, L1p) then
      Put_Line("La lista Lp1 y la obtenida como sublista de pares L1p son iguales");
      Escribir_Contenidos(L1p, "L1p", Lp1, "Lp1");
   else
      Put_Line("La lista Lp1 y la obtenida como sublista de pares L1p NO son iguales");
      -- Contenido de L1p
      Put("===> ");
      Escribir_Contenido(L1p, "L1p");
   end if;
   New_Line; New_Line;


   -- Trataremos las listas de pares L2p y Lp2
   Listas.Copiar(Lp2, L2p);
   if Listas.Igual(Lp2, L2p) then
      Put_Line("La lista Lp2 y la obtenida como copia L2p son iguales");
      Escribir_Contenidos(L2p, "L2p", Lp2, "Lp2");
   else
      Put_Line("La lista Lp2 y la obtenida como copia L2p NO son iguales");
      -- Contenido de L2p
      Put("===> ");
      Escribir_Contenido(L2p, "L2p");
   end if;
   --Creando lista de primos
   for I in 23..33 loop
     if es_primo(I) THEN
       listas.colocar(Lp3,I);
     end if;
   end loop;

   -- Trataremos las listas de pares L3p y Lp3
   if Listas.Igual(Lp3, L3p) then
      Put_Line("La lista Lp3 y la obtenida como sublista de primos L3p son iguales");
      Escribir_Contenidos(L3p, "L3p", Lp3, "Lp3");
   else
      Put_Line("La lista Lp3 y la obtenida como sublista de primos L3p NO son iguales");
      -- Contenido de L3p
      Put("===> ");
      Escribir_Contenido(L3p, "L3p");
   end if;
   New_Line; New_Line;

--Creando lista abundantes
  for I in 1..23 loop
    if Es_abundante(I) THEN
      listas.colocar(Lp4,I);
    end if;
  end loop;

  -- Trataremos las listas de pares L4p y Lp4
  if Listas.Igual(Lp4, L4p) then
     Put_Line("La lista Lp4 y la obtenida como sublista de abundantes L4p son iguales");
     Escribir_Contenidos(L4p, "L4p", Lp4, "Lp4");
  else
     Put_Line("La lista Lp4 y la obtenida como sublista de abundantes L4p NO son iguales");
     -- Contenido de L4p
     Put("===> ");
     Escribir_Contenido(L4p, "L4p");

  end if;
  New_Line; New_Line;



end Probar_Listas;
