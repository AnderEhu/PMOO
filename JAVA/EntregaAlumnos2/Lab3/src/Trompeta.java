public class Trompeta extends Instrumentistas {

    private final int SUELDO = 900;
    private static final String INSTRUMENTO = "trompeta";

    public Trompeta(String pNombre,  String pSexo) {
        super(pNombre, INSTRUMENTO, pSexo);
    }

    @Override
    public String interpretar() {
        return "Tu-ru-ru-tu-ruru";
    }

    @Override
    public int getSUELDO()
    {
        return this.SUELDO;
    }

}
