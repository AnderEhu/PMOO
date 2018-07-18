with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
package body Listas is

   procedure Crear_Vacia (
         L :    out Lista) is
   begin
      L := null;
   end Crear_Vacia;

   procedure Colocar (
         L : in out Lista;
         E : in     elemento) is
      -- Algoritmo recursivo
   begin

   if L = null or else antes_que(E,L.info) then
         L := new Nodo'(E, L);  -- Colocar al comienzo
      else
         Colocar (L.Sig, E);
      end if;
   end Colocar;

   procedure Obtener_Primero (
         L : in     Lista;
         P :    out elemento) is
   begin
      if L = null then
         Put_Line("Lista_Vacia");
      else
         P:= L.Info;
      end if;
   end Obtener_Primero;

   procedure Obtener_dos_Primeros (
         L : in     Lista;
         P1 :    out elemento;
         P2: out elemento) is
   begin
      if L = null then
         Put_Line("Lista_Vacia");
      else
         P1:= L.Info;
         p2:=L.Sig.info;
      end if;
   end Obtener_dos_Primeros;

   function Esta (
         L : in     Lista;
         N : in     elemento)
         return Boolean is
      -- Algoritmo iterativo
      Auxi : Lista := L;
   begin
      while Auxi/=null and then not antes_que(N,Auxi.info) loop
         Auxi:= Auxi.Sig;
      end loop;
      return Auxi/=null and then N= Auxi.Info;
   end Esta;

   procedure Borrar_Primero (
         L : in out Lista) is
   begin
      if L = null then
         Put_Line("Lista_Vacia");
      else
         L := L.Sig;
      end if;
   end Borrar_Primero;


   procedure Crear_Sublista(
            L : in     Lista;
            P: elemento;
            D: float;
            Sl: out Lista) is
      -- Algoritmo iterativo
      Cont: Natural:=0;
      AuxL: Lista:= L;
      AuxSl: Lista:= null;
   begin
      Sl:=null;
      while AuxL/= null and Cont<cuantos loop
         if filtro(p,AuxL.Info,d) then
            Cont:= Cont+1;
            if Sl=null then
               Sl:= new Nodo'(AuxL.Info, null);
               AuxSl:= Sl;
            else
               AuxSl.Sig:= new Nodo'(AuxL.Info, null);
               AuxSl:= AuxSl.Sig;
            end if;
         end if;
         AuxL:= Auxl.Sig;
      end loop;
   end Crear_Sublista;

   function Es_Vacia (
         L : in     Lista)
         return Boolean is
   begin
      return L = null;
   end Es_Vacia;

   function Igual (
         L1,
         L2 : in     Lista)
         return Boolean is
      -- Algoritmo recursivo
   begin
      if L1 = null and L2 = null then
         return True;
      elsif L1 = null or L2 = null then
         return False;
      else
         return L1.Info=L2.Info and then
            Igual(L1.Sig, L2.Sig); -- Llamada recursiva!
      end if;
   end Igual;

   procedure Copiar (
         L1 :    out Lista;
         L2 : in     Lista) is
      -- Algoritmo recursivo
   begin
      if L2 = null then
         L1 := null;
      else
         Copiar(L1, L2.Sig);
         L1 := new Nodo'(L2.Info, L1);
      end if;
   end Copiar;

end Listas;
