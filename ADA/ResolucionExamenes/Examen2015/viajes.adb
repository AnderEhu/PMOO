package body viajes is

  procedure crear(codigo: integer; C1,C2: String; precio: float; V: out viaje);

  procedure asignar_autobus (V: in out viaje; matricula: String; plazas: integer);

  procedure ocupar_plazas(V: in out viaje; Plazas_ocupar: integer) is

begin

    V.plazas:=V.plazas-Plazas_ocupar;

end ocupar_plazas;




end viajes;
