import Cantantes.*

class Jurado {
	var tipo

	constructor(_tipo) {
		tipo = _tipo
	}

	method obtenerTipoDeJurado() = tipo
	
	method votar(cantante){
		return tipo.votoSegunTipoDeJurado(cantante)
	}
}
object baboso {
	method votoSegunTipoDeJurado(cantante) {
		return if (cantante.EsJovenYLinda()) 10 else - 5 }
}