package productos;

import java.text.DecimalFormat;
import java.util.ArrayList;

public class Producto {
    // 1. COMPLETA: atributos/campos
    //...
    private int codigo;
    private String nombre;
    private double precio;
    private int cantidad;
    private double peso;
    private  double  iva = 0.21;





    // 2. COMPLETA: constructoras
    // ...

    public Producto (){

    }

    public Producto (int codigo,String nombre,double precio,int cantidad, double peso){
        this.cantidad=cantidad;
        this.codigo=codigo;
        this.nombre=nombre;
        this.precio=precio;
        this.peso=peso;
    }

    public Producto (String nombre, double precio, int cantidad, double peso){
        this.cantidad=cantidad;
        this.nombre=nombre;
        this.precio=precio;
        this.peso=peso;
    }



    // 3. COMPLETA: Getters y Setters (no crees setIVA())
    // ...

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public double getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPeso() {
        return peso;
    }

    public void setPeso(double peso) {
        this.peso = peso;
    }

    public double getIva() {
        return iva;
    }

    public void setIva(double iva){
        this.iva = iva;
    }

    // 4. COMPLETA: los otros m�todos solicitados
    // ...


    /**
     * Devuelve el precio con el iva incluido
     * @return precioConIva
     */
    public double precioConIva(){
        return (cantidad+iva);
    }

    public ArrayList<String> deProductoAListaString () {
        DecimalFormat df = new DecimalFormat("0.00");
        ArrayList<String> lista= new ArrayList<String>();
        lista.add(Integer.toString(this.codigo));
        lista.add(this.nombre);
        lista.add(df.format(this.precio) ); //convierte a String con dos decimales
        return lista;
    }


}
