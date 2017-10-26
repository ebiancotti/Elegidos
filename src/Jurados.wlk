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
		return if (cantante.EsJoven()) 10 else - 5 }
}

object tradicional{
	
	method votoSegunTipoDeJurado(cantante) {
		return if (listasDeGeneros.esGeneroTradicional(cantante.generoCantado())) 10 else - 5 }
}


object listasDeGeneros{
	
	var tradicionales = ["tango", "folclore"]
	
	method esGeneroTradicional(genero) = tradicionales.contains(genero)
}