package productos;

import java.io.PrintWriter;

public abstract class Herramientas extends NoPerecederos implements IEnviable{
    public Herramientas() {
    }

    public Herramientas(int codigo, String nombre, double precio, int cantidad, double peso, String categoria) {
        super(codigo, nombre, precio, cantidad, peso, categoria);
    }

    public Herramientas(String nombre, double precio, int cantidad, double peso, String categoria) {
        super(nombre, precio, cantidad, peso, categoria);
    }
    @Override
    public String toString() {
        return getCodigo() + " " + getNombre() + " " + getPrecio() + " " + getCantidad() + " "
                + getPeso() + " " + getCategoria()  + " " + getClass().getSimpleName() + " ";
    }

    @Override
    public double tarifaEnvio() {
        return 3.71;
    }

    @Override
    public boolean esFragil() {
        return false;
    }

    @Override
    public void  imprimirEnviable(PrintWriter pw){
        if (esFragil()) {
            pw.printf("%5d %26s %12.2f %14.2f %15.2f","%10s",getCodigo(),getNombre(),getPeso(),getPrecio(),getPrecio(),tarifaEnvio(),"Fragil!!");
        }
        else{
            pw.printf("%5d %26s %12.2f %14.2f %15.2f","%10s",getCodigo(),getNombre(),getPeso(),getPrecio(),getPrecio(),tarifaEnvio(),"  ");
        }

    }
}
