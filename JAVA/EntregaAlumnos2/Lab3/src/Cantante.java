public abstract class Cantante extends Musico {

    private final int SUELDO = 1000;
    public Cantante(String pNombre, String pInstrumento, String pSexo) {
        super(pNombre, pInstrumento, pSexo);
    }




    @Override
    public int getSUELDO()
    {
        return this.SUELDO;
    }
}
