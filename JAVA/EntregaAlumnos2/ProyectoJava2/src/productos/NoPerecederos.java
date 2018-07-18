package productos;

public abstract class NoPerecederos extends  Producto implements IEnviable {

    private  String categoria;

    public NoPerecederos() {
    }

    public NoPerecederos(int codigo, String nombre, double precio, int cantidad, double peso, String categoria) {
        super(codigo, nombre, precio, cantidad, peso);
        this.categoria = categoria;

    }


    public NoPerecederos(String nombre, double precio, int cantidad, double peso, String categoria) {
        super(nombre, precio, cantidad, peso);
        this.categoria = categoria;
    }

    public String getCategoria() {
        return categoria;
    }


}
