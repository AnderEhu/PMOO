public class Soprano extends Cantante {
    private int sueldo = 1000;
    private boolean esInternacional;
    public Soprano(String pNombre, String pSexo,boolean esInternacional) {
        super(pNombre, "", pSexo);
        this.esInternacional=esInternacional;
        setSueldo();
    }


    @Override
    public String interpretar() {
        return "Li-li-li-liiiiii";
    }

    @Override
    public int getSUELDO()
    {
        return this.sueldo;
    }

    public void setSueldo(){
        if (esInternacional){
            this.sueldo = this.sueldo + (int)(sueldo * 0.33);
        }

    }
}
