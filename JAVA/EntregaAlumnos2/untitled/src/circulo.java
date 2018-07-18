public class circulo extends figura {

    public circulo(double lado, double radio, double perimetro) {
        super(lado, radio, perimetro);
    }

    public  double area() {
        return super.getLado()*super.getPerimetro();
    }
    public circulo(){
        super();
    }
    public String toString(){
        return super.toString()+"el area es"+area();

    }
}
