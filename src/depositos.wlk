
class Depositos {
	var property bicicletas = []
	
	method agregarBicicleta(bici) { bicicletas.add(bici) }
	
	method eliminarBicicleta(bici) { bicicletas.remove(bici) }
	
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
	
	method sonCompanieras(bicicleta) { 
		return bicicletas.filter({ bicis => bicis.marca() == bicicleta.marca() and 
			(bicis.largo() - bicicleta.largo()).abs() < 10 and
			bicis != bicicleta
		})
	}
	
	//Desafíos
	method hayCompanieras() { return bicicletas.map({ bici => self.sonCompanieras(bici)}).size() > 0 }
}

/*Para agregar un nuevo accesorio es necesario mantener el polimorfismo para que se pueda utilizar al igual que los accesarios ya existentes.
 * Es decir, se deben utilizar los mismos métodos que en los otros accesorios. 
 */
 

 