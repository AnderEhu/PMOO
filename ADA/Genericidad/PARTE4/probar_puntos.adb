with Ada.Text_IO, ADa.Float_Text_IO; use Ada.Text_IO, ADa.Float_Text_IO;

with Puntos;

procedure Probar_Puntos is
   P1, P2, P3, P4, P5: Puntos.Punto;

begin
   Puntos.Crear_Punto(P1, 1.0, 14.0);
   Puntos.Crear_Punto(P2, 4.0, 12.0);
   Puntos.Crear_Punto(P3, 2.0, 10.0);
   Puntos.Crear_Punto(P4, 6.0, 9.0);
   Puntos.Crear_Punto(P5, 5.0, 8.0);

   Put_Line("Los puntos ...");
   put("==> P1= "); Puntos.Escribir_Punto(P1);
   Put("==> P2= "); Puntos.Escribir_Punto(P2);
   Put("==> y la distancia entre ambos es "); Put(Puntos.Distancia(P1, P2), 2, 4, 0);
   new_line; new_Line;

   Put_Line("Los puntos ...");
   put("==> P3= "); Puntos.Escribir_Punto(P3);
   Put("==> P4= "); Puntos.Escribir_Punto(P4);
   Put("==> y la distancia entre ambos es "); Put(Puntos.Distancia(P3, P4), 2, 4, 0);
   new_line; new_Line;

   Put_Line("Los puntos ...");
   put("==> P5= "); Puntos.Escribir_Punto(P5);
   Put("==> P1= "); Puntos.Escribir_Punto(P1);
   Put("==> y la distancia entre ambos es "); Put(Puntos.Distancia(P5, P1), 2, 4, 0);
   new_line; new_Line;

end Probar_Puntos;