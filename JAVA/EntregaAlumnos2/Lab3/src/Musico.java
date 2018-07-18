public abstract class Musico {

	private String nombre;
	private String instrumento;
	private String sexo;

	private final int SUELDO = 500;
	private boolean contratado = false;

	@SuppressWarnings("serial")
	public static class MusicoYaContratado extends Exception {
	}

	public Musico(String pNombre, String pInstrumento, String pSexo) {
		nombre = pNombre;
		instrumento = pInstrumento;
		sexo = pSexo;
	}

	public String getNombre() {
		return nombre;
	}

	public String getInstrumento() {
		return instrumento;
	}

	public int getSUELDO() {
		return this.SUELDO;
	}

	public boolean esHombre() {
		return sexo.equalsIgnoreCase("Hombre");
	}

	public abstract String interpretar();

	public void firmarContrato() {
		System.out.println(this.getNombre()
				+ ", ha firmado un contrato de "+ this.getClass().getName()+" por " + this.getSUELDO()
				+ " euros.");
	}

	public boolean estaContratado() {
		return contratado;
	}

	public void contratar() throws MusicoYaContratado{
		if (contratado) throw new MusicoYaContratado();
		contratado = true;
	}



}
