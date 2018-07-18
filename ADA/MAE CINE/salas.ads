PACKAGE Salas IS

   TYPE Sala IS LIMITED PRIVATE;
   Max_filas: positive:=25;
   Max_col: positive:=25;

   PROCEDURE Crear_Sala (
         Nombre_Sala :        String;
         N_Filas     :        Positive;
         N_Locs_Fila :        Positive;
         S           :    OUT Sala);
   --Post: crea/inicializa una Sala con todas las localidades vacías.
   FUNCTION Nombre_Sala (
         S : IN     Sala)
     RETURN String;
    -- Post: Devuelve el nombre de la sala S
   FUNCTION Plazas_Libres (
         S : IN     Sala)
     RETURN Integer;
    -- Post: Devuelve cuantas plazas libres hay en la sala S
   FUNCTION Aforo (
         S : Sala)
     RETURN Integer;
    -- Post: Devuelve el Aforo de la sala S
   FUNCTION La_Pelicula (
         S : IN     Sala)
     RETURN String;
    --Post: Devulve el nombre de la pelicula de la sala S
   PROCEDURE Modificar_Pelicula (
         S                  : IN OUT Sala;
         Identificador_Sala :        String);
    -- Post: Dado un identificador sala modifica la pelicula de la sala S
   PROCEDURE Vender_Localidades_Contiguas (
         S : IN OUT Sala;
         N :        Integer);
   -- Post: Vende N localidades contiguas de la sala S, en el caso de no haber se mostrara un mensaje por pantalla
   PROCEDURE Mostrar_Sala (
         S : IN     Sala);
   -- Post: Muestra por pantalla la sala S.

   procedure Copiar_sala(v: out sala; e: in sala);
   --Post:
   function hay_localidades_contiguas(S: salas.sala;N: integer) return boolean;
   --Post:

PRIVATE

   TYPE Matriz_Sala IS ARRAY (1 .. Max_filas, 1 .. Max_col) OF Boolean;
   TYPE Sala IS
      RECORD
         Nombre_Sala        : String (1 .. 7);
         Identificador_Sala : String (1 .. 10);
         Loc_Libres         : Natural;
         N_Filas            : Positive;
         N_Locs_Fila        : Positive;
         M_Sala             : Matriz_Sala;
      END RECORD;

END Salas;
