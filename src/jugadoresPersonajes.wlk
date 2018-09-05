object luisa {
	var personajeActivo
}


object floki {
	var arma
	
	method encontrar(elemento) {
	    if (arma.estaCargada()) {
	        elemento.recibirAtaque(arma.potencia()) 
	        arma.registrarUso()
	    }
	}
}


object mario {
	var valorRecolectado = 0
    var ultimoElementoEncontrado = null
	method encontrar(elemento) {
	    valorRecolectado += elemento.valorQueOtorga()
	    elemento.recibirTrabajo()
	    // ... acá hay que agregar una línea ...
	    ultimoElementoEncontrado = elemento

	}
	method esFeliz() {
	 return valorRecolectado >= 50 or ultimoElementoEncontrado.altura() >= 10 
  }
	   	 	 	
}

object castillo {
	var property defensa = 150
	method altura() = 20
	
	method valorQueOtorga() {
		return defensa /5
	}
	
	method recibirTrabajo() {
		if ( defensa + 20 >= 200 ) {
			defensa += 20 - ( defensa +20 - 200 )
		}
		else defensa += 20
	}
}

object aurora {
	var estaViva = true
	method altura() = 1	
	
	method recibirTrabajo() {}
	
	method valorQueOtorga() {
		return 15	
	}

}

object tipa {
	var altura = 8
	method alturaActual() = altura
	method valorQueOtorga() {
		return altura * 2
	}
	method recibirTrabajo() {
		altura += 1
	}
}

object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}