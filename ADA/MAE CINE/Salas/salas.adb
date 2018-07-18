WITH Ada.Text_IO;
USE Ada.Text_IO;
WITH Ada.Integer_Text_IO;
USE Ada.Integer_Text_IO;
PACKAGE BODY Salas IS

   PROCEDURE Crear_Sala (
         Nombre_Sala :        String;
         N_Filas     :        Positive;
         N_Locs_Fila :        Positive;
         S           :    OUT Sala) IS
   BEGIN
      S.M_Sala:=(OTHERS=>(OTHERS=>False));
      S.Nombre_Sala:=Nombre_Sala;
      S.N_Filas:=N_Filas;
      S.N_Locs_Fila:=N_Locs_Fila;
      S.Loc_Libres:=N_Locs_Fila*N_Filas;
   END Crear_Sala;

   FUNCTION Nombre_Sala (
         S : IN     Sala)
     RETURN String IS
   BEGIN

      RETURN S.Nombre_Sala;
   END Nombre_Sala;


   FUNCTION La_Pelicula (
         S : IN     Sala)
     RETURN String IS
   BEGIN
      RETURN S.Identificador_Sala;
   END La_Pelicula;

   PROCEDURE Modificar_Pelicula (
         S                  : IN OUT Sala;
         Identificador_Sala :        String) IS
   BEGIN
      S.Identificador_Sala:=Identificador_Sala;
   END Modificar_Pelicula;

   PROCEDURE Vender_Localidades_Contiguas (
         S : IN OUT Sala;
         N :        Integer) IS

      Cont,
      Tmp       : Integer;
      Eliminado : Boolean := False;
      I:          integer:=S.n_filas;
      j: integer;
      cont_entradas: integer:=0;

   BEGIN
     
      WHILE I>0 AND THEN NOT Eliminado LOOP
         J:=1;
         WHILE J<=S.N_Locs_Fila-N+1 AND THEN NOT Eliminado LOOP
            Cont:=0;
            IF NOT S.M_Sala(I,J) THEN

               Tmp:=J+N-1;
               FOR K IN J..Tmp LOOP
                  IF NOT S.M_Sala(I,K) THEN
                     Cont:=Cont+1;
                  END IF;
               END LOOP;
               IF Cont = N THEN

                  FOR P IN J..Tmp LOOP
                     S.M_Sala(I,P):=True;
                     new_line(1);
                     cont_entradas := cont_entradas +1;
                     put("Sala: "); put(S.Nombre_sala); put("  Entrada "); put(cont_entradas,0); put("  Fila ");put(I,0);put(" Asiento ");put(P,0);
                     new_line(1);
                  END LOOP;
                  S.loc_libres:=S.loc_libres-N;
                  Eliminado:=True;
               END IF;

            END IF;
            J:=J+1;

         END LOOP;
         I:=I-1;


      END LOOP;
      New_Line(1);
      
      if not eliminado then
        put("No se han podido vender las entradas");
        new_line(1);
      end if;
      
      

   END Vender_Localidades_Contiguas;


   PROCEDURE Mostrar_Sala (
         S : IN     Sala) IS

   BEGIN


      FOR I IN 1..S.N_Filas LOOP

         FOR J IN 1..S.N_Locs_Fila LOOP

            IF S.M_Sala(I,J) THEN
               Put("_");
            ELSE
               Put("&");
            END IF;

         END LOOP;
         New_Line(1);

      END LOOP;
   END Mostrar_Sala;
 ------------------------------
   FUNCTION Aforo (
         S : IN     Sala)
     RETURN Integer IS


   BEGIN
      RETURN S.N_Filas*S.N_Locs_Fila;
   END Aforo;

   FUNCTION Plazas_Libres (
         S : Sala)
     RETURN Integer IS
     
    begin
    
      RETURN s.Loc_libres;
      
   END Plazas_Libres;

END Salas;

