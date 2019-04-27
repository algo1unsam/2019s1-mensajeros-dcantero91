object camion {
	var acoplados=1
	
	method peso(){
		return acoplados*500
	}
	method agregarAcoplado (){
		acoplados=acoplados+1
	}
}

object bicicleta {
	method peso () {
		return 8
	}
}