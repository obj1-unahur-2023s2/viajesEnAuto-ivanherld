import remiseras.*
import clientas.*
object oficina {
	var remiseraUno
	var remiseraDos
	
	method asignarRemiseras(remisera1,remisera2){
		remiseraUno = remisera1
	    remiseraDos = remisera2
	}
	
	method cambiarPrimeraRemiseraPor(remisera){
		remiseraUno = remisera
	}
	
	method cambiarSegundaRemiseraPor(remisera){
		remiseraDos = remisera
	}
	
	method intercambiarRemiseras(){
		self.asignarRemiseras(remiseraDos,remiseraUno)
	}
	
	method remiseraElegidaParaViaje(cliente, kms){
		if (remiseraDos.precioViaje(cliente,kms) + 30 < remiseraUno.precioViaje(cliente,kms)){
			return remiseraDos
		} else {
			return remiseraUno
		}
	}
}
