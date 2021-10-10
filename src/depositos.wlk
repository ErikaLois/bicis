class Depositos {
	var property bicicletas = #{}
	
	method bicisRapidas() { return bicicletas.filter({ bicis => bicis.velocidadDeCrucero() > 25 }) }
	
	method marca() { return bicicletas.map({ bicis => bicis.marca() }).asSet() }
	
	method esNocturno() { return bicicletas.all({ bicis => bicis.tieneLuz() }) }
	
	method tieneBicicletaParaLlevar(carga) { return bicicletas.any({ bici => bici.carga() > carga }) }
	
	
}
