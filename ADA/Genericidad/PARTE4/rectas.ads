WITH Puntos;

package Rectas is
   type Recta is private;

   procedure Crear_Recta(R: out Recta; M, N: Float);
   -- post: crea la recta R con los valores de la pendiente M y constante N.

   procedure Escribir_Recta(R: Recta);
   -- Salida: La recta R (SE)
   -- post: escribe la información de la recta R como "y= mx + n"

   FUNCTION Crear_Recta(P1, P2: Puntos.Punto) RETURN Recta;
   -- post: devuelve la recta entre los puntos P1 y P2.

   function Get_M(R: Recta) return Float;
   -- post: devuelve el valor de la pendiente de la recta R

   function Get_N(R: Recta) return Float;
   -- post: devuelve el valor de la constante de la recta R


   private
   type Recta is record
      M, N: Float;
   end record;
end Rectas;


