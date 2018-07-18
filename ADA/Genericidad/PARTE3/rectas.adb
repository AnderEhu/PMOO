WITH Puntos;
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

package body Rectas is


      procedure Crear_Recta(R: out Recta; M, N: Float) is

      begin
        R.M:=M;
        R.N:=N;
      end crear_recta;


      procedure Escribir_Recta(R: Recta) is

      begin
        put("y = "); put(R.M,0,1,0); put("x"); put(" + "); put(R.N,0,1,0);
      end Escribir_Recta;


      FUNCTION Crear_Recta(P1, P2: Puntos.Punto) RETURN Recta is
          r: recta;
      begin

      r.M:=(puntos.get_y(P2)-puntos.get_y(P1)/(puntos.get_x(P2)-puntos.get_x(P1)));
      r.N:= r.M*(-puntos.get_x(P1))+puntos.get_y(P1);

      return r;

      end crear_recta;

      function Get_M(R: Recta) return Float is

      begin
        return R.M;
      end get_m;


      function Get_N(R: Recta) return Float is

      begin
        return R.N;
      end get_n;




end Rectas;
