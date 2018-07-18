
package Puntos is
   type Punto is private;

   procedure Crear_Punto(P: out Punto; X, Y: Float);
   -- post: crea el punto P con los valores de las coordenadas: abcisa X y ordenada Y.

   procedure Escribir_Punto(P: Punto);
   -- Salida: el punto P (SE)
   -- post: escribe la información del punto P como "(x, y)"

   function Distancia(P1, P2: Punto) return Float;
   -- post: devuelve la distancia entre los puntos P1 y P2.

   function Get_X(P: Punto) return Float;
   -- post: devuelve el valor de la coordenada X o abcisa del punto P

   function Get_Y(P: Punto) return Float;
   -- post: devuelve el valor de la coordenada Y u ordenada del punto P

   private
   type Punto is record
      X, Y: Float;
   end record;
end Puntos;

