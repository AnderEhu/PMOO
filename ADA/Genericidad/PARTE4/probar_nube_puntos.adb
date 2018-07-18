with puntos;
with nube_puntos;
with rectas;
with nube_puntos;
with listas_puntosED;
with ada.Text_IO; use ada.Text_IO;
with ada.Float_Text_IO; use ada.Float_Text_IO;
procedure probar_nube_puntos is

  p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p1_aux,p2_aux,ps: puntos.punto;
  i,j: integer:=1;
  N: nube_puntos.nubes_puntos;
  d: float;
  c: integer;


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
nube_puntos.crear_lista_vacia(N);
nube_puntos.poner_punto(N,p1);
nube_puntos.poner_punto(N,p2);
nube_puntos.poner_punto(N,p3);
nube_puntos.poner_punto(N,p4);
nube_puntos.poner_punto(N,p5);
nube_puntos.poner_punto(N,p6);
nube_puntos.poner_punto(N,p7);
nube_puntos.poner_punto(N,p8);
nube_puntos.poner_punto(N,p9);
nube_puntos.poner_punto(N,p10);
new_Line(1);
put("La recta que se ajusta a la lista de puntos es: ");
nube_puntos.Calculo_AMC(N);
new_Line(3);


Put_Line("===================p1===============");
  while i<=10 loop
    p1_aux:=nube_puntos.obtener_primero(n);
    nube_puntos.borrar_primero(n);
    p2_aux:=nube_puntos.obtener_primero(n);
    nube_puntos.borrar_primero(n);
    new_line(1);
    Put_Line("Los puntos ...");
    put("==> P"&integer'image(i)&" = "); Puntos.Escribir_Punto(P1_aux);
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
  nube_puntos.crear_lista_vacia(N);
  nube_puntos.poner_punto(N,p1);
  nube_puntos.poner_punto(N,p2);
  nube_puntos.poner_punto(N,p3);
  nube_puntos.poner_punto(N,p4);
  nube_puntos.poner_punto(N,p5);
  nube_puntos.poner_punto(N,p6);
  nube_puntos.poner_punto(N,p7);
  nube_puntos.poner_punto(N,p8);
  nube_puntos.poner_punto(N,p9);
  nube_puntos.poner_punto(N,p10);

  puntos.crear_punto(ps,5.10, 8.10);
  d:=4.5;
  c:=5;
  nube_puntos.Obtener_Sublista(N,ps,d,C);

  Put_Line("===================p2===============");
  Put("Los puntos a distancia "); put(d,0,1,0); put(" o menos de "); Puntos.Escribir_Punto(P1);
    while j<=C loop
      p1_aux:=nube_puntos.obtener_primero(n);
      nube_puntos.borrar_primero(n);
      new_line(1);
      Put_Line("Los puntos ...");
      put("==> P"&integer'image(i)&" = "); Puntos.Escribir_Punto(P1_aux);
      new_line(1);
      Put("==> y la distancia entre ambos es "); Put(Puntos.Distancia(P1_aux, ps), 0, 1, 0);
      new_line(1);
      put("==> y la recta entre ambos es ");
      rectas.Escribir_Recta(rectas.crear_recta(ps,p1_aux));
      new_line; new_Line;
      j:=j+1;
    end loop;












end probar_nube_puntos;
