package productos;

import java.io.PrintWriter;

public interface IEnviable {

    double peso();

    double tarifaEnvio();

    boolean esFragil();

    void imprimirEnviable(PrintWriter pw);

}
