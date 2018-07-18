public class Pianista extends Musico {

    public Pianista(String pnombre, String pSexo) {
	super(pnombre,"Piano", pSexo);
    }
  
    public  String interpretar(){
	return  "Ding-ting-dang-ding-tang-ting";
    }
  
    public int getSUELDO(){
    	return super.getSUELDO()+700;
    }
}
