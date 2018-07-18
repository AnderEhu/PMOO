import java.util.ArrayList;

public class main {


    public static void main(String[] args) {
        figura[] F = new figura[2];
        circulo C = new circulo(2,2,2);
        circulo C2 = new circulo(2,3,4);


        F[0] = C;
        F[1] = C2;

        for (figura i: F) {
            System.out.println(i.area());
        }


    }
}
