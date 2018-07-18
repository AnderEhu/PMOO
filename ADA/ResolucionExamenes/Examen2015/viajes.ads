package viajes is
-- Declarar el tipo

type viaje is private limited;

--Metodos

procedure crear(codigo: integer; C1,C2: String; precio: float; V: out viaje);

procedure asignar_autobus (V: in out viaje; matricula: String; plazas: integer);

procedure ocupar_plazas(V: in out viaje; Plazas_ocupar: integer);


--Desarrollo del tipo

private

  type viaje is record
      Codigo: integer;
      C1,C2: string(1..10);
      precio: float;
      N_plazas: integer;
      Matricula_bus: string(1..8);


  end record;





end viajes;
