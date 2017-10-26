import Cantantes.*
import Generos.*

class Jurado {	
	
	
	method votoSegunTipoDeJurado(cantante)
	
	method votar(cantante){
		return if (self.votoSegunTipoDeJurado(cantante)) cantante.modificarPuntuacion(10) else cantante.modificarPuntuacion(-5)
	}
}
class Baboso inherits Jurado {
	override method votoSegunTipoDeJurado(cantante) {
		return cantante.EsJoven()}
}

class Tradicional inherits Jurado{
	
	override method votoSegunTipoDeJurado(cantante) {
		return generoTradicional.esGeneroTradicional(cantante.obtenerGenero())}
}

class Tecnico inherits Jurado{
	
	override method votoSegunTipoDeJurado(cantante) {
		return cantante.obtenerGenero().performanceEsperada(cantante)
	}
	}
	
class Invitado inherits Jurado{
	
	var influencia
	
	constructor(_influencia){
		influencia = _influencia
		
	}
	override method votoSegunTipoDeJurado(cantante){
	}
	
	method influenciado(){
		return (!(influencia == null))
	}
	
	
	method votarSegunInfluencia(cantante){
		return if (self.influenciado()) (influencia.votoSegunTipoDeJurado(cantante)) else true
		
	}
	
	override method votar(cantante){
		return if (self.votarSegunInfluencia(cantante)) cantante.modificarPuntuacion(2) else cantante.modificarPuntuacion(-1)
	}
	

}

object generoTradicional{
	
	var tradicionales=[tango,folclore]
	
	method esGeneroTradicional(genero){
		return tradicionales.contains(genero)
		
		
	}
}
