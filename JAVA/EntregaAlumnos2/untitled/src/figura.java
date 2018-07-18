public abstract class figura {
    private double lado;
    private double radio;
    private double perimetro;

    public figura(double lado, double radio, double perimetro) {
        this.lado = lado;
        this.radio = radio;
        this.perimetro = perimetro;
    }

    public figura (){

    }

    public double getLado() {
        return lado;
    }

    public void setLado(double lado) {
        this.lado = lado;
    }

    public double getRadio() {
        return radio;
    }

    public void setRadio(double radio) {
        this.radio = radio;
    }

    public double getPerimetro() {
        return perimetro;
    }

    public void setPerimetro(double perimetro) {
        this.perimetro = perimetro;
    }

    public abstract double area();

    @Override
    public String toString() {
        return "figura{" +
                "lado=" + lado +
                ", radio=" + radio +
                ", perimetro=" + perimetro +
                '}';
    }
}
