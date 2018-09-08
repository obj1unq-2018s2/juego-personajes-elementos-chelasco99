object luisa {
	var personajeActivo = floki
	 method aparece(elemento) {
	 	personajeActivo.encontrar(elemento)
	 }
}


object floki {
	var arma = ballesta
	
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

object ballesta {
	var flechas = 10
	var property potencia = 4
	method registrarUso() {
		flechas -= 1
	}
	method estaCargada() {
	   return flechas >= 1
	}
	
}

object jabalina {
	var naceCargada = true
	var property potencia = 30
	method registrarUso() {
		naceCargada = false
	}
	method estaCargada() {
	  return naceCargada
	}
}

object castillo {
	var property defensa = 150
	method altura() = 20
	
	method valorQueOtorga() {
		return defensa /5
	}
	
	method recibirTrabajo() {
		defensa = (defensa + 20).min(200)
	}
	
	method recibirAtaque(potencia) {
		defensa -= potencia
	}
}

object aurora {
	var property estaViva = true
	method altura() = 1	
	
	method recibirTrabajo() {}
	
	method valorQueOtorga() {
		return 15	
	}
	method recibirAtaque(potencia) {
		if ( potencia >= 10 ) {
			estaViva = false
		}
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
	method recibirAtaque(potencia) {}
}

object noHayPersonaje {
	// no hace falta ponerle ningún método, es solamente para marcarle a Luisa que no tiene ningún personaje activo
}