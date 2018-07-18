package productos;

import java.io.PrintWriter;

public abstract class Bebidas extends Perecederos{
    private double iva = 0.1;
    private int graduacion;
    public Bebidas() {
    }

    public Bebidas(int codigo, String nombre, double precio, int cantidad, double peso, String fechadDeCaducidad) {
        super(codigo, nombre, precio, cantidad, peso, fechadDeCaducidad);
        this.graduacion = graduacion;
    }

    public Bebidas(String nombre, double precio, int cantidad, double peso, String fechadDeCaducidad,int graduacion) {
        super(nombre, precio, cantidad, peso, fechadDeCaducidad);
        this.graduacion = graduacion;
    }



    @Override
    public double getIva() {
        return iva;
    }

    @Override
    public String toString() {
        return getCodigo() + " " + getNombre() + " " + getPrecio() + " " + getCantidad() + " "
                + getPeso() + " " + getFechaDeCaducidad() + " " + graduacion + " " + getClass().getSimpleName() + " ";
    }
    @Override
    public boolean esFragil() {
        return true;
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
