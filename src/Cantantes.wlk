import Jurados.*

class Cantante {
	
	var edad
	var generoDelTema
	
	constructor(_edad, _generoDelTema){
		edad=_edad	
		generoDelTema= _generoDelTema
		
	}

	method EsJoven(){
		return edad < 30
	}
	
	method generoCantado() = generoDelTema
	
	


}