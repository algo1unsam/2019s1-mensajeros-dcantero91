import mensajeros.*

object puenteDeBrooklin {
	
	method dejarPasar (mensajero) {
		return mensajero.peso() <= 1000 && paquete.estaPago()
	}
	
}
object matrix {
	
	method dejarPasar (mensajero) {
		return mensajero.llamar() && paquete.estaPago()
	}
}
