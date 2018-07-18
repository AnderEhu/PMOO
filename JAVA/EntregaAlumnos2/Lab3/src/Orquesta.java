import com.sun.org.apache.xpath.internal.operations.Or;

import java.util.ArrayList;

public class Orquesta {

    private String nombre;
    private int presupuestoContratacion = 0;
    private int hombres,mujeres = 0;
    ArrayList<Musico> orquesta;
    private static Orquesta instance;


    public void contratar (Musico M){

        try {
            M.contratar();
            M.firmarContrato();
            orquesta.add(M);
        }catch (Musico.MusicoYaContratado E){

            System.out.println("El musico ya esta contratado");
        }

    }



    private Orquesta(String nombre){
        this.nombre = nombre;
        orquesta = new ArrayList<>();

    }
    public static Orquesta getInstance(String nombre){
        if (instance==null)return new Orquesta(nombre);
        else return instance;
    }

    public void actuar (){

        System.out.println("Esta actuando la orquesta"+this.nombre);
        for (Musico musico: orquesta) {
            System.out.println("-"+musico.getNombre()+", "+musico.getClass().getName()+"  "+musico.interpretar());

        }


    }



    public int getPresupuestoContratacion(){
        for (Musico musico: orquesta){
            presupuestoContratacion = presupuestoContratacion + musico.getSUELDO();
        }
        return presupuestoContratacion;
    }

    public int getHombres(){
        for (Musico musico: orquesta){
            if (musico.esHombre()){
                hombres++;
            }
        }
        return hombres;
    }

    public int getMujeres(){
        for (Musico musico: orquesta){
            if (!musico.esHombre()){
                mujeres++;
            }
        }
        return mujeres;
    }


}
