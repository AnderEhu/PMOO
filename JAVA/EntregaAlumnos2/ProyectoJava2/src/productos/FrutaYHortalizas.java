package productos;

import java.io.PrintWriter;

public abstract class FrutaYHortalizas extends Perecederos {
    private double iva = 0.04;
    private String origen;
    public FrutaYHortalizas() {
    }

    public FrutaYHortalizas(int codigo, String nombre, double precio, int cantidad, double peso, String fechadDeCaducidad,String origen) {
        super(codigo, nombre, precio, cantidad, peso, fechadDeCaducidad);
        this.origen = origen;
    }

    public FrutaYHortalizas(String nombre, double precio, int cantidad, double peso, String fechadDeCaducidad, String origen) {
        super(nombre, precio, cantidad, peso, fechadDeCaducidad);
        this.origen = origen;
    }



    @Override
    public double getIva() {
        return iva;
    }
    @Override
    public String toString() {
        return getCodigo() + " " + getNombre() + " " + getPrecio() + " " + getCantidad() + " "
                + getPeso() + " " + getFechaDeCaducidad() + " " + origen + " " + getClass().getSimpleName() + " ";
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
