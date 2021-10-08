 object farolito {
 	method peso() { return 0.5 } // en Kg
 	method carga() { return 0 }
 	method esLuminoso() { return true }
 }
 
  object canasto {
  	var property volumen
  	
 	method peso() { return volumen/10 } 
 	method carga() { return volumen * 2 }
 	method esLuminoso() { return false }
 }
 
  object morralDeBici {
  	var property largo
  	var property tieneOjoDeGato
  	
 	method peso() { return 1.2 } // en Kg
 	method carga() { return largo/3 }
 	method esLuminoso() { return tieneOjoDeGato }
 }
 
 