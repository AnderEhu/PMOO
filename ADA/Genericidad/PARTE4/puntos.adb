with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada.Float_Text_IO;
with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;
package body Puntos is

      procedure Crear_Punto(P: out Punto; X, Y: Float) is
      begin
          P.x:=x;
          P.y:=y;
      end crear_punto;

      procedure Escribir_Punto(P: Punto) is

      begin
          put("x: ");
          put(P.x,0,2,0);
          put("  Y: ");
          put(p.y,0,2,0);
      end Escribir_Punto;

      function Distancia(P1, P2: Punto) return Float is

      begin
        return sqrt((get_x(p1)-get_x(p2))**2+(get_y(p1)-get_y(p2))**2);
      end Distancia;

      function Get_X(P: Punto) return Float is

      begin

      return P.x;
      end get_x;


      function Get_Y(P: Punto) return Float is

      begin
      return p.y;
      end get_y;



end Puntos;
