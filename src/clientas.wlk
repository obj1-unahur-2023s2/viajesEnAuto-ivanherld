object ludmila {
	
	method precioPorKm(){
		return 18
	}
	
}

object anaMaria {
	var estable = true 
	
	method precioPorKm()=
	if(estable){30}else{25}
	
	method estable() {
		return
		estable
	}
	
	method cambiarSituacionEco(){
		estable = !estable
	}
}

object teresa {
	var property precioPorKm = 22
}

object melina {
	var clientaParaLaQueTrabaja
	
	method clientaParaLaQueTrabaja(unaClienta){
		clientaParaLaQueTrabaja = unaClienta
	}
	
	method precioPorKm(){
		return 
		clientaParaLaQueTrabaja.precioPorKm()-3
	}
}