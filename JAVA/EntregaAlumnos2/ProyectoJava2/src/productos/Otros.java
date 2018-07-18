package productos;

import java.io.PrintWriter;

public abstract class Otros extends NoPerecederos {
    public Otros () {
    }

    public Otros (int codigo, String nombre, double precio, int cantidad, double peso, String categoria) {
        super(codigo, nombre, precio, cantidad, peso, categoria);
    }

    public Otros (String nombre, double precio, int cantidad, double peso, String categoria) {
        super(nombre, precio, cantidad, peso, categoria);
    }
    @Override
    public String toString() {
        return getCodigo() + " " + getNombre() + " " + getPrecio() + " " + getCantidad() + " "
                + getPeso() + " " + getCategoria()  + " " + getClass().getSimpleName() + " ";
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
