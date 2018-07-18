WITH Salas;
WITH Ada.Text_IO;
USE Ada.Text_IO;
with ada.Integer_Text_IO;
use ada.Integer_Text_IO;
PACKAGE BODY Cines IS


    procedure Crear_Cine(Nom_cine: String; C: out cine) is

    begin
        C.nombre_cine:=nom_cine;
    end Crear_cine;

    Function Nombre_Cine(C: cine) return String is

    begin

        return c.nombre_cine;

    end nombre_cine;


    procedure anadir_sala(c: in out cine; s: salas.sala) is

    begin

        if c.cont/=c.Sala_lista'last then

            c.cont:=c.cont+1;
            salas.copiar_sala(c.sala_lista(c.cont),s);

        end if;

    end anadir_sala;

    PROCEDURE Vender_Localidades_Contiguas (c: in out cine; nom_pelicula: string; N_Entradas: integer) is

    begin

        for i in 1..c.cont loop
            if Salas.la_pelicula(c.sala_lista(i)) = nom_pelicula THEN
                if salas.hay_localidades_contiguas(C.sala_lista(i),N_entradas) then

                    salas.Vender_Localidades_Contiguas(c.sala_lista(i),n_entradas);
                    return;
                end if;
            end if;

        end loop;
        put_line("=====================================================================");
        put("No hay disponibles ");Put(N_entradas,0);Put(" entradas contiguas en ninguna de las salas");
        new_line(1);


    end Vender_Localidades_Contiguas;

    procedure Escribir_Cartelera(C: cine) is


    begin
        put_line("CARTELERA " & C.nombre_cine);
        for i in 1..c.cont loop
            put_line("Sala "&
            salas.nombre_sala(c.sala_lista(i))&
            ", "&
            salas.la_pelicula(c.sala_lista(i)));
        end loop;


    end Escribir_cartelera;

    procedure Cambiar_pelicula(C: in out cine; iden_viejo: string; iden_nuevo: string) is


    begin

        for i in 1..c.cont loop

            if salas.la_pelicula(c.sala_lista(i)) = iden_viejo then
                salas.modificar_pelicula(c.sala_lista(i),iden_nuevo);

            end if;

        end loop;

        put("No se han podido vender las entradas");

    end cambiar_pelicula;

    procedure Mostrar_Salas(C: cine) is


    begin

        for i in 1..c.cont loop

            put_line("Sala "&salas.nombre_sala(c.sala_lista(i)));
            salas.mostrar_sala(c.sala_lista(i));

        end loop;

    end mostrar_salas;


END Cines;
