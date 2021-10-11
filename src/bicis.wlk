import accesorios.*

class Bicicletas {
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method agregarAccesorio(acc) { accesorios.add(acc) }
	
	method eliminarAccesorio(acc) { accesorios.remove(acc) }
	
	method altura(){ return rodado * 2.5 + 15 }
	
	method velocidadDeCrucero() {
		return
		if (largo > 120) { rodado + 6 } else { rodado + 2 }
	}
	
	method carga() {
		return accesorios.sum({ acc => acc.carga() })
	}
	
	method peso() {
		return rodado/2 + accesorios.sum({ acc => acc.peso()})
	}
	
	method tieneLuz() {
		return accesorios.any({ acc => acc.esLuminoso() })
	}
	
	method cantidadDeAccesoriosLivianos() {
		return accesorios.count({ acc => acc.peso() < 1})
	}
	
	method esCompaniera(otraBici) { 
		return (self.marca() == otraBici.marca() and (self.largo() - otraBici.largo()).abs() < 10) and self != otraBici
	}
}