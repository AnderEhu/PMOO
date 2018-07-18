package productos;

import java.io.PrintWriter;

public abstract class Perecederos extends  Producto implements IEnviable {

    private String fechaDeCaducidad;

    public Perecederos() {
    }

    public Perecederos(int codigo, String nombre, double precio, int cantidad, double peso, String fechadDeCaducidad) {
        super(codigo, nombre, precio, cantidad, peso);
        this.fechaDeCaducidad = fechadDeCaducidad;
    }

    public Perecederos(String nombre, double precio, int cantidad, double peso, String fechadDeCaducidad) {
        super(nombre, precio, cantidad, peso);
        this.fechaDeCaducidad = fechadDeCaducidad;
    }

    public String getFechaDeCaducidad() {
        return fechaDeCaducidad;
    }

    @Override
    public double tarifaEnvio() {
        return 2.15;
    }

}
