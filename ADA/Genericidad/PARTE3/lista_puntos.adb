with puntos;
with rectas;
with listas;
with mayor_que;
with listas_puntosED;
with Ada.Text_IO, ADa.Float_Text_IO;
use Ada.Text_IO, ADa.Float_Text_IO;

package body  lista_puntos is
    listas_puntos: listas_puntosED.lista;
    cont: integer;
    procedure crear_lista_vacia is

    begin
      listas_puntosED.Crear_Vacia(listas_puntos);
      cont:=0;
    end crear_lista_vacia;

    procedure Calculo_AMC is
      sX,sY,sXX,sXY: float:=0.0;
      rM,rN: float;
      r: rectas.recta;
      L: listas_puntosED.lista;
      L_primero: puntos.punto;
    begin
      listas_puntosED.copiar(L,listas_puntos);
    for i in 1..10 loop
      listas_puntosED.obtener_primero(L,L_primero);
      sX := sX + puntos.get_X(L_primero);
      sY := sY + puntos.get_y(L_primero);
      sXX := sXX + puntos.get_X(L_primero) * puntos.get_X(L_primero);
      sXY := sXY + puntos.get_X(L_primero) * puntos.get_y(L_primero);
      listas_puntosED.borrar_primero(L);

    end loop;

      rM:=(10.0*sXY-sX*sY)/(10.0*sXX-(sX)**2);
      rN:=(sXX*sY-sX*sXY)/(10.0*sXX-(sX)**2);
      rectas.crear_recta(r,rM,rN);

      rectas.Escribir_Recta(r);
    end Calculo_AMC;

    function obtener_primero return puntos.punto is
      p: puntos.punto;
    begin
      listas_puntosED.obtener_primero(listas_puntos,p);
      return P;
    end obtener_primero;

    procedure borrar_primero is
    begin
      listas_puntosED.borrar_primero(listas_puntos);
      cont:=cont-1;
    end borrar_primero;


    function Esta_vacia return boolean is
    begin
      return listas_puntosED.Es_vacia(listas_puntos);
    end Esta_vacia;

    procedure poner_punto (p: puntos.punto) is

    begin
      listas_puntosED.Colocar(listas_puntos,p);
      cont:=cont+1;
    end Poner_punto;



end lista_puntos;
