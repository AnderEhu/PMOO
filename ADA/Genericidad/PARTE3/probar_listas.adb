with Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;
with crear_sublistaed_primos,listased,es_primo;


procedure Probar_listas is
   procedure Escribir_Contenido(L: in out listased.Lista; Lista: String) is
      N: Integer;
   begin
      -- Contenido de L1 con los 10 primeros enteros
      Put_Line("El contenido de la Lista "&Lista&" es:");
      Put("===> ");
      while not listased.Es_Vacia(L) loop
         listased.Obtener_Primero(L, N);
         Put(N,2);
         Put(" ");
         listased.Borrar_Primero(L);
      end loop;
      New_Line; New_Line;
   end Escribir_Contenido;

   procedure Escribir_Contenidos(L1: in out listased.Lista; L1s: String; L2: in out listased.Lista; L2s: String) is
      N1, N2: Integer;

   begin
      Put_Line("===> El contenido de las listased "&L1s&" y "&L2s&" es:");
      while not listased.Es_Vacia(L1) loop
         listased.Obtener_Primero(L1, N1);
         listased.Obtener_Primero(L2, N2);
         Put(N1, 4);
         Put("  --  ");
         Put(N2, 4);
         New_Line;
         listased.Borrar_Primero(L1);
         listased.Borrar_Primero(L2);
      end loop;
   end Escribir_Contenidos;

   L1,
      L1p,
      Lp1: listased.Lista;





begin
   -- Crear lista de enteros L1 con los 10 primeros enteros
   Put("===> Creando L1 ...");
   listased.Crear_Vacia(L1);

   for I in 1..10 loop
      listased.Colocar(L1, I);
      if listased.Esta(L1, I) then
         Put(I, 0);
         Put(" ");
      else
         Put("NO");
         Put(I, 0);
         Put(" ");
      end if;
   end loop;
   crear_sublistaed_primos(L1, L1p); -- Los pares de L1
   New_Line; New_Line;


   -- Contenido de L1 con los 10 primeros enteros
   Put("===> ");
   Escribir_Contenido(L1, "L1");


   -- Crear lista de enteros pares Lp con los 5 primeros pares del 2 al 8
   listased.Crear_Vacia(Lp1);

   for N in reverse 1..10 loop
     if es_primo(N) then
      listased.Colocar(Lp1, N);
    end if;
   end loop;

   -- Trataremos las listas de pares L1p y Lp1
   if listased.Igual(Lp1, L1p) then
      Put_Line("La lista Lp1 y la obtenida como sublista de pares L1p son iguales");
      Escribir_Contenidos(L1p, "L1p", Lp1, "Lp1");
   else
      Put_Line("La lista Lp1 y la obtenida como sublista de pares L1p NO son iguales");
      -- Contenido de L1p
      Put("===> ");
      Escribir_Contenido(L1p, "L1p");

   end if;
   New_Line; New_Line;





end Probar_listas;
