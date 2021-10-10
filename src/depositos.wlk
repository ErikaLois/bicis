
class Depositos {
	var property bicicletas = #{}
	
	method bicisRapidas() { return bicicletas.filter({ bicis => bicis.velocidadDeCrucero() > 25 }) }
	
	method marca() { return bicicletas.map({ bicis => bicis.marca() }).asSet() }
	
	method esNocturno() { return bicicletas.all({ bicis => bicis.tieneLuz() }) }
	
	method tieneBicicletaParaLlevar(carga) { return bicicletas.any({ bici => bici.carga() > carga }) }
	
	method marcaDeLaBiciMasRapida() { return bicicletas.max({ bici => bici.velocidadDeCrucero()}).marca() }
	
	method cargaTotalDeLasBicisLargas() { 
		return bicicletas.filter({ bicis => bicis.largo() > 170}).sum({bicis => bicis.carga() })
	}
	
	method cantidadDeBicisSinAccesorios() { 
		return bicicletas.count({ bicis => bicis.accesorios().isEmpty()})
	}
}
