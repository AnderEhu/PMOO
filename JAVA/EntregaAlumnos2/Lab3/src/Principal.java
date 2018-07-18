public class Principal {

	public static void main(String[] args) {
		Orquesta orquesta = Orquesta.getInstance("The JavaJazz Hierarchy");
		Director rafa = new Director("Rafael Zurbano", "Hombre");
		Pianista moni = new Pianista("Monica Segovia", "Mujer");

		Tenor chris = new Tenor("Chris Black","Hombre");
		Soprano edur = new Soprano("Edurne Berasaluze","Hombre",false); // Soprano NO de talla internacional
		Trompeta ines = new Trompeta("Ines Barrutieta", "Mujer");
		Trompeta jon = new Trompeta("Jon Kaperotxipi", "Hombre");
		Soprano carol = new Soprano("Caroline Linecarol","Hombre", true); // Soprano de talla internacional
		//Bajo carlo = new Bajo("Carlos Algo");
		//Saxo carla = new Saxo("Carla Onsigue", "Mujer");

		orquesta.contratar(rafa);
		orquesta.contratar(moni);
		orquesta.contratar(chris);
		orquesta.contratar(edur);
		orquesta.contratar(ines);
		orquesta.contratar(moni);
		orquesta.contratar(chris);
		orquesta.contratar(jon);
		orquesta.contratar(carol);



		orquesta.actuar();

		System.out.println();
		System.out.println("El presupuesto de la Orquesta para el pago de sueldos es "
		+ orquesta.getPresupuestoContratacion() + " euros");

		int mujeres = orquesta.getMujeres(), hombres = orquesta.getHombres();
		System.out.println();
		System.out.println("La Orquesta est� formada por "
		+ mujeres + " mujeres y " + hombres + " hombres.");


	}
}