import Cantantes.*
import Generos.*

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
		return if (cantante.EsJoven()) 10 else - 5 }
}

object tradicional{
	
	method votoSegunTipoDeJurado(cantante) {
		return if (cantante.generoCantado().esGeneroTradicional()) 10 else - 5 }
}
