import transporte.*
import lugares.*

object mensajeria {
	var mensajeros = #{}
	
	method paquetePuedeEntregarse () {
		return mensajeros.any{mensajero => mensajero.puedeEntregar()}
	}
	method contratar(alguien) {
 		mensajeros.add(alguien)
 	}
 	method mensajeros () {
 		return mensajeros
 	}
}

object paquete {
	var destino=puenteDeBrooklin
	var estaPago=false
	
	method pagar(){
		estaPago=true
	}
	method cargarDestino(nuevoDestino) {
		destino=nuevoDestino
	}
	method estaPago() {return estaPago}
	method destino(_destino){destino=_destino}
	method destino() {return destino}
	
}

object roberto {
	var property transporte=bicicleta
	
	method peso(){
		return 90 + transporte.peso()
	}
	method puedeEntregar () {
		return paquete.destino().dejarPasar(self)
	}
	method llamar() {
		return false
	}	
}

object chuckNorris {
	
	method peso(){
		return 900
	}
	method puedeEntregar () {
		return paquete.destino().dejarPasar(self)
	}
	method llamar(){
		return true
	}
}

object neo {
	var property tieneCredito=true
	
	method peso(){
		return 0
	}
	method puedeEntregar () {
		return paquete.destino().dejarPasar(self)
	}
	method llamar() {
		return tieneCredito
	}
}