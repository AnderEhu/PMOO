WITH Ada.Text_IO, Ada.Integer_Text_IO;
USE Ada.Text_IO, Ada.Integer_Text_IO;

WITH Salas, Cines; USE Salas, Cines;

PROCEDURE Probar_Cines IS
   S1, S2, S3, S4, S5: Sala;
   C: Cines.Cine;
BEGIN
   Crear_Sala("  Ava  ", 12,18, S1);
   Modificar_Pelicula(S1,"FormaDAgua");

   Crear_Sala("Marilyn", 12,18, S2);
   Modificar_Pelicula(S2,"BlackPanth");

   Crear_Sala("Audrey ", 11,10, S3);
   Modificar_Pelicula(S3,"HiloInvisi");

   Crear_Sala("Hepburn", 11,10, S4);
   Modificar_Pelicula(S4,"CuaderSara");

   Crear_Sala("  Rita ", 11,10, S5);
   Modificar_Pelicula(S5,"HiloInvisi");

   Crear_Cine("Golem", C);
   Anadir_Sala(C, S1);
   Anadir_Sala(C, S2);
   Anadir_Sala(C, S3);
   Anadir_Sala(C, S4);
   Anadir_Sala(C, S5);
   Mostrar_Salas(C);

   Escribir_Cartelera(C);
   New_Line; New_Line;

   Vender_Localidades_Contiguas(C,"HiloInvisi", 20);
   Vender_Localidades_Contiguas(C, "HiloInvisi" ,8);
   Vender_Localidades_Contiguas(C, "HiloInvisi", 7);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 6);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 5);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 10);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 6);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 3);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 10);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 10);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 10);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 10);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 6);
   Vender_Localidades_Contiguas(C,"HiloInvisi", 6);

   Mostrar_Salas(C);

   Cambiar_Pelicula(C, "HiloInvisi", "SinPelicul");
   Escribir_Cartelera(C);


end Probar_Cines;
