with puntos;
with listas_puntosED;

package nube_puntos is

  type nubes_puntos is limited private;

  procedure crear_lista_vacia(N: in out nubes_puntos);

  procedure poner_punto(N: in out nubes_puntos;P: puntos.punto);

  procedure Calculo_AMC(N: in  nubes_puntos);

  function Obtener_Primero(N: in  nubes_puntos) return puntos.punto;

  procedure borrar_primero(N: in out nubes_puntos);

  function Esta_vacia(N: in nubes_puntos) return boolean;

  procedure Obtener_Sublista(N: in out nubes_puntos; p: puntos.punto; D: float; C: integer);




  private

    type L_nubes_puntos is array(1..10) of listas_puntosED.lista;

    type nubes_puntos is record
      nube_puntos: L_nubes_puntos;
      cont: integer:=0;
    end record;





end nube_puntos;
