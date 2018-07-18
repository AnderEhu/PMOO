WITH Salas;
WITH Ada.Text_IO;
USE Ada.Text_IO;
with ada.Integer_Text_IO;
use ada.Integer_Text_IO;
PACKAGE BODY Cine IS
    TYPE T_salas IS ARRAY (1 .. 10) OF salas.sala;
    Sala_Lista  : T_Salas;
    Nombre_Cine : String (1 .. 5);
    Cont        : Integer:= 0;


    procedure Crear_Cine(Nom_cine: String) is

    begin
        nombre_cine:=nom_cine;
    end Crear_cine;

    Function Nom_Cine return String is

    begin

        return nombre_cine;

    end nom_cine;


    procedure anadir_sala(s: salas.sala) is

    begin

        if cont/=Sala_lista'last then

            cont:=cont+1;
            salas.copiar_sala(sala_lista(cont),s);

        end if;

    end anadir_sala;

    PROCEDURE Vender_Localidades_Contiguas ( nom_pelicula: string; N_Entradas: integer) is

    begin

        for i in 1..cont loop
            if Salas.la_pelicula(sala_lista(i)) = nom_pelicula THEN
                if salas.hay_localidades_contiguas(sala_lista(i),N_entradas) then

                    salas.Vender_Localidades_Contiguas(sala_lista(i),n_entradas);
                    return;
                end if;
            end if;

        end loop;
        put_line("=====================================================================");
        put("No hay disponibles ");Put(N_entradas,0);Put(" entradas contiguas en ninguna de las salas");
        new_line(1);


    end Vender_Localidades_Contiguas;

    procedure Escribir_Cartelera is


    begin
        put_line("CARTELERA " & nombre_cine);
        for i in 1..cont loop
            put_line("Sala "&
            salas.nombre_sala(sala_lista(i))&
            ", "&
            salas.la_pelicula(sala_lista(i)));
        end loop;


    end Escribir_cartelera;

    procedure Cambiar_pelicula(iden_viejo: string; iden_nuevo: string) is


    begin

        for i in 1..cont loop

            if salas.la_pelicula(sala_lista(i)) = iden_viejo then
                salas.modificar_pelicula(sala_lista(i),iden_nuevo);
            end if;

        end loop;

        put("No se han podido vender las entradas");

    end cambiar_pelicula;

    procedure Mostrar_Salas is


    begin

        for i in 1..cont loop

            put_line("Sala "&salas.nombre_sala(sala_lista(i)));
            salas.mostrar_sala(sala_lista(i));

        end loop;

    end mostrar_salas;


END Cine;
