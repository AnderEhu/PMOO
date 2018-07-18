with salas;
PACKAGE Cine IS


  procedure Crear_Cine(Nom_cine: String);
  --Post: crear un cine C

  Function Nom_Cine return String;
  --Post: devuelve el nombre del cine C

  procedure anadir_sala(s: salas.sala);
   --Post: devuelve el cine C con la nueva sala S con todas las localiades vacias

  PROCEDURE Vender_Localidades_Contiguas (nom_pelicula: string; N_Entradas: integer);
  --Post: Vende  las entradas solicitadas para la primera sala disponible de nom_pelicula

  procedure Escribir_Cartelera;
  --Post: escribe por pantalla un resumen de las salas y las peliculas que se proyectan

  procedure Cambiar_pelicula(iden_viejo: string; iden_nuevo: string);
  --Post: dados dos identificadores de pelicula (String), ponga la segunda pel�cula en cada sala en la que se proyecte la primera.

  procedure Mostrar_Salas;
  -- Post:  devulve un esquema del estado de ventas de las salas del cine



end cine;
