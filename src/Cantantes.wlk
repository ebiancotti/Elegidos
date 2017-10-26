import Jurados.*
import Generos.*

class Cantante {
	
	var edad
	var cancion
	var indumentaria = []
	var afinacion
	var formaDeBailar
	var puntuacion = 0
	
	constructor(_edad, _cancion, _indumentaria, _afinacion, _formaDeBailar){
		edad=_edad	
		cancion= _cancion
		indumentaria = _indumentaria
		afinacion =_afinacion
		formaDeBailar=_formaDeBailar
	}

	method EsJoven(){
		return edad < 30
	}
	
	method obtenerCancion() = cancion
	
	method mayorDe50(){
		return edad>50
	}
	
	method modificarPuntuacion(valor){
		puntuacion=+valor
	}
	
	method obtenerPuntuacion() = puntuacion
	
	method obtenerAfinacion() = afinacion
	
	method obtenerGenero(){
		return cancion.obtenerGenero()
	}
	
	method obtenerFormaDeBailar() = formaDeBailar
	
	method obtenerIndumentaria() = indumentaria
	
	
}

class Cancion{
	var autor
	var genero
	
	constructor(_autor,_genero){
		autor = _autor
		genero = _genero

		
	}

	method obtenerGenero()= genero
	
}

