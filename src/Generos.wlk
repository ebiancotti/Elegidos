import Cantantes.*
import Jurados.*


object folclore {
	
	method performanceEsperada(cantante){
		
		return (cantante.obtenerIndumentaria().contains("poncho") and ((cantante.obtenerIndumentaria().contains("botas") or cantante.obtenerIndumentaria().contains("alpargatas"))))
}
}

object tango{
	
	method performanceEsperada(cantante){ 
		return (cantante.obtenerIndumentaria().contains("sombrero") and cantante.obtenerAfinacion() and cantante.mayorDe50())
}

}

object cumbia{
	
	method performanceEsperada(cantante){ 
		return cantante.ObtenerFormaDeBailar()
	}
	
	
}

object pop{
	
	method performanceEsperada(cantante)= true

	
}