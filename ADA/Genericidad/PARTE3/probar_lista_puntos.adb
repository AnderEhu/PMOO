with puntos;
with lista_puntos;
with rectas;
with listas_puntosED;
with ada.Text_IO; use ada.Text_IO;
with ada.Float_Text_IO; use ada.Float_Text_IO;
procedure probar_lista_puntos is

  p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p1_aux,p2_aux: puntos.punto;
  i: integer:=1;

begin

puntos.crear_punto(p1,6.0,9.0);
puntos.crear_punto(p2,9.0,4.0);
puntos.crear_punto(p3,5.0,8.0);
puntos.crear_punto(p4,11.0,3.0);
puntos.crear_punto(p5,2.0,10.0);
puntos.crear_punto(p6,1.0,14.0);
puntos.crear_punto(p7,6.0,6.0);
puntos.crear_punto(p8,4.0,12.0);
puntos.crear_punto(p9, 12.0,1.0);
puntos.crear_punto(p10,8.0,3.0);
lista_puntos.crear_lista_vacia;
lista_puntos.poner_punto(p1);
lista_puntos.poner_punto(p2);
lista_puntos.poner_punto(p3);
lista_puntos.poner_punto(p4);
lista_puntos.poner_punto(p5);
lista_puntos.poner_punto(p6);
lista_puntos.poner_punto(p7);
lista_puntos.poner_punto(p8);
lista_puntos.poner_punto(p9);
lista_puntos.poner_punto(p10);
lista_puntos.Calculo_AMC;




while i<=10 loop
  p1_aux:=lista_puntos.obtener_primero;
  lista_puntos.borrar_primero;
  p2_aux:=lista_puntos.obtener_primero;
  lista_puntos.borrar_primero;
  new_line(1);
  Put_Line("Los puntos ...");
  put("==> P"&integer'image(i)&"= "); Puntos.Escribir_Punto(P1_aux);
  new_line(1);
  Put("==> P"&integer'image(i+1)&"= "); Puntos.Escribir_Punto(P2_aux);
  new_line(1);
  Put("==> y la distancia entre ambos es "); Put(Puntos.Distancia(P1_aux, P2_aux), 0, 1, 0);
  new_line(1);
  put("==> y la recta entre amos es ");
  rectas.Escribir_Recta(rectas.crear_recta(p1_aux,p2_aux));
  new_line; new_Line;
  i:=i+2;
end loop;





end probar_lista_puntos;
