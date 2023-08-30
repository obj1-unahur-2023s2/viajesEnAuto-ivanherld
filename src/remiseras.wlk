import clientas.*

object roxana {
	
	method precioViaje(unCliente, km){
		return
		unCliente.precioPorKm()*km
	}
	
}

object gabriela {
	
	method precioViaje(unCliente, km){
		return
		(unCliente.precioPorKm()*km)*1.20 
	}
}

object mariela {
	
	method precioViaje(unCliente, km){
		return
		50.max(unCliente.precioPorKm()*km)
	}
	
}

object juana {
	
	method precioViaje(_ , km){
		if (km <= 8) {
			return 
			    km*10
			}
			else {
				return 
				km*20
			}
		} 
}

object lucia {
	var remiseraQueReemplaza
	
	method remiseraQueReemplaza() = remiseraQueReemplaza
	
	method remiseraQueReemplaza(unaRemisera){
		if (self == unaRemisera)
		 self.error("No se puede reemplazar a si mismo") //No hace falta el else porque es un error y queda ahí
		remiseraQueReemplaza = unaRemisera
	}
	
	method precioViaje(unCliente, km){
		return
		remiseraQueReemplaza.precioViaje(unCliente, km)
	}
}
/*
 * definir remiseras y clientes.
 */

