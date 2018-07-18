with puntos;
with rectas;
with listas;
with mayor_que;
with listas_puntosED;
with lista_puntos;
with distancia_menor;
with Ada.Text_IO, ADa.Float_Text_IO;
use Ada.Text_IO, ADa.Float_Text_IO;

package body  nube_puntos is

    procedure crear_lista_vacia(N: in out nubes_puntos) is


    begin
      n.cont:=n.cont+1;
      listas_puntosED.Crear_Vacia(N.nube_puntos(n.cont));
    end crear_lista_vacia;

    procedure Calculo_AMC(N: in  nubes_puntos) is
      sX,sY,sXX,sXY: float:=0.0;
      rM,rN: float;
      r: rectas.recta;
      L_aux: listas_puntosED.lista;
      L_aux_primero: puntos.punto;
    begin
      listas_puntosED.copiar(L_aux,n.nube_puntos(n.cont));
    for i in 1..10 loop
      listas_puntosED.obtener_primero(L_aux,L_aux_primero);
      sX := sX + puntos.get_X(L_aux_primero);
      sY := sY + puntos.get_y(L_aux_primero);
      sXX := sXX + puntos.get_X(L_aux_primero) * puntos.get_X(L_aux_primero);
      sXY := sXY + puntos.get_X(L_aux_primero) * puntos.get_y(L_aux_primero);
      listas_puntosED.borrar_primero(L_aux);

    end loop;

      rM:=(10.0*sXY-sX*sY)/(10.0*sXX-(sX)**2);
      rN:=(sXX*sY-sX*sXY)/(10.0*sXX-(sX)**2);
      rectas.crear_recta(r,rM,rN);

      rectas.Escribir_Recta(r);
    end Calculo_AMC;

    function obtener_primero(N: in nubes_puntos) return puntos.punto is
      p: puntos.punto;
    begin
      listas_puntosED.obtener_primero(N.nube_puntos(n.cont),p);
      return P;
    end obtener_primero;

    procedure borrar_primero(N: in out nubes_puntos) is
    begin
      listas_puntosED.borrar_primero(N.nube_puntos(n.cont));

    end borrar_primero;

    function Esta_vacia(N: in  nubes_puntos) return boolean is
    begin
      return listas_puntosED.Es_vacia(N.nube_puntos(n.cont));
    end Esta_vacia;

    procedure poner_punto (N: in out nubes_puntos; p: puntos.punto) is

    begin
      listas_puntosED.Colocar(N.nube_puntos(n.cont),p);

    end Poner_punto;

  procedure Obtener_Sublista(N: in out  nubes_puntos; p: puntos.punto; D: float; C: integer) is
    procedure crear_sublistaed_puntos is new listas_puntosED.Crear_Sublista(C,distancia_menor);


  begin

    crear_sublistaed_puntos(N.nube_puntos(n.cont),P,D,N.nube_puntos(n.cont));


  end Obtener_Sublista;








end nube_puntos;
