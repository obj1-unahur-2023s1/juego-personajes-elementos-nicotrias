object floki {
	var property arma = ballesta
	
	method encontrarElemento(elemento){
		if (arma.estaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.registrarUso()	
		}
	}
}

object ballesta {
	var flechas = 10
	
	method estaCargada(){
		return flechas > 0
	}
	
	method potencia() = 4	
	
		
	method registrarUso(){
		flechas -= 1
	}
}


object jabalina {
	var estaCargada = true
	
	method estaCargada(){
		return estaCargada
	}
	
	method registrarUso(){
		estaCargada = false
	}
	
	method potencia(){
		return 30
	}
}



object mario {
	var valorRecolectado = 0
	var ultimoElementoEncontrado
	
	method encontrarElemento(elemento){
		valorRecolectado += elemento.valorQueEntrega()
		elemento.recibirTrabajo()	
		ultimoElementoEncontrado = elemento
	}
	
	method valorRecolectado() = valorRecolectado
	
	method esFeliz(){
		return valorRecolectado >= 50 or ultimoElementoEncontrado.altura() >= 10
	}
	
}

object castillo {
	var defensa = 150
	
	method altura(){
		return 20
	}
	
	method defensa() = defensa
	
	method recibirTrabajo(){
		defensa = 200.min(defensa+20)
		
	}
	
	method recibirAtaque(potencia){
		defensa = 0.max(defensa - potencia)
	}
	
	method valorQueEntrega(){
		return defensa / 5
	}
	
}


object aurora{
	var estaViva = true
	
	method altura(){
		return 1
	}
	
	method estaViva() = estaViva
	
	method recibirTrabajo(){
		
	}
	
	method recibirAtaque(potencia){
		estaViva = not (potencia >= 10)
	}
		
	method valorQueEntrega(){
		return 15
	}
		
	
}

object tipa{
	var altura = 8
	
	method recibirTrabajo(){
		altura += 1
	}
	
	method altura() = altura
	
	method recibirAtaque(potencia){
		
	} 
	
	method valorQueEntrega(){
		return altura*2
	}
	
}

object luisa {
	var property personajeActivo
	
	method aparece(elemento){
		personajeActivo.encontrarElemento(elemento)
	}
	
}




