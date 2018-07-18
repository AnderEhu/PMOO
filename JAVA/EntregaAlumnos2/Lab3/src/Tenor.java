public class Tenor extends Cantante {

    public Tenor(String pNombre,  String pSexo) {
        super(pNombre, "", pSexo);
    }

    @Override
    public String interpretar() {
        return "La-la-la-laaaaa";
    }
}
