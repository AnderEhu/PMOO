with salas;
PACKAGE Cines IS

  type cine is limited private;

  procedure Crear_Cine(Nom_cine: String; C: out cine);
  --Post: crear un cine C

  Function Nombre_Cine(C: cine) return String;
  --Post: devuelve el nombre del cine C

  procedure anadir_sala(c: in out cine; s: salas.sala);
   --Post: devuelve el cine C con la nueva sala S con todas las localiades vacias

  PROCEDURE Vender_Localidades_Contiguas (c: in out cine; nom_pelicula: string; N_Entradas: integer);
  --Post: Vende  las entradas solicitadas para la primera sala disponible de nom_pelicula

  procedure Escribir_Cartelera(C: cine);
  --Post: escribe por pantalla un resumen de las salas y las peliculas que se proyectan

  procedure Cambiar_pelicula(C: in out cine; iden_viejo: string; iden_nuevo: string);
  --Post: dados dos identificadores de pelicula (String), ponga la segunda pel�cula en cada sala en la que se proyecte la primera.

  procedure Mostrar_Salas(C: cine);
  -- Post:  devulve un esquema del estado de ventas de las salas del cine


  private

    TYPE T_salas IS ARRAY (1 .. 10) OF salas.sala;
    TYPE cine is record
        Sala_Lista  : T_Salas;
        Nombre_Cine : String (1 .. 5);
        Cont        : Integer:= 0;
    end record;
end cines;
