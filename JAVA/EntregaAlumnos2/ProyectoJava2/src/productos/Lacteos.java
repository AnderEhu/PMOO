package productos;

import java.io.PrintWriter;

public abstract class Lacteos extends Perecederos {
    private double iva = 0.04;
    private String lote;
    public Lacteos() {
    }

    public Lacteos(int codigo, String nombre, double precio, int cantidad, double peso, String fechadDeCaducidad, String lote) {
        super(codigo, nombre, precio, cantidad, peso, fechadDeCaducidad);
        this.lote = lote;
    }

    public Lacteos(String nombre, double precio, int cantidad, double peso, String fechadDeCaducidad,String lote) {
        super(nombre, precio, cantidad, peso, fechadDeCaducidad);
        this.lote = lote;
    }



    @Override
    public double getIva() {
        return iva;
    }

    @Override
    public String toString() {
        return getCodigo() + " " + getNombre() + " " + getPrecio() + " " + getCantidad() + " "
                + getPeso() + " " + getFechaDeCaducidad() + " " + lote + " " + getClass().getSimpleName() + " ";
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
