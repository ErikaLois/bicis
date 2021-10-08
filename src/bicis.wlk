class Bicicletas {
	var property rodado
	var property largo
	var property marca
	var property accesorios
	
	method altura(){ return rodado * 2.5 + 15 }
	
	method velocidadDecrucero() {
		return
		if (rodado > 120) { rodado + 6 } else { rodado + 2 }
	}
	
	method carga() {
		return accesorios.sum({ acc => acc.carga() })
	}
	
}