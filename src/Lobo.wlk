object lobo {
	var peso = 10
	
	method esSaludable() {
		return peso >= 20 || peso <= 150
	}
	
	method comerCaperucita(){
		peso = peso + (caperucita.peso() * 0.1)
		cazador.victimasComidas()
	}
	
	method comerAbuela(){
		peso = peso + (abuela.peso() * 0.1)
		cazador.victimasComidas()
	}
	
	method comerCanasta(manzanas){
		peso = peso + (canasta.peso(manzanas) * 0.1)
	}
	
	method soplarPaja(){
		peso = peso - casaPaja.resistencia()
	}
	
	method soplarMadera(){
		peso = peso - casaMadera.resistencia()
	}
	
	method soplarLadrillo(ladrillos){
		peso = peso - casaLadrillo.resistencia(ladrillos)
	}
	
	method crisis(){
		peso = 10
	}
	
	method comerCazador(){
		if (!cazador.estaEnojado()){
			cazador.enojado()
		} else{
			peso = peso + (caperucita.peso() * 0.1)
		}
	}
	
	method correr(){
		peso = peso - 1
	}
}

object caperucita{
	
	method peso() {
		return 60
	}
}


object abuela {
	
	method peso(){
		return 50
	}
}

object canasta{
	
	method peso(manzanas){
		return 0.2 * manzanas
	}
}

object casaPaja{
	
	method resistencia(){
		return 0
	}
}

object casaMadera{
	
	method resistencia(){
		return 5
	}
}

object casaLadrillo{
	
	method resistencia(ladrillos){
		return 2 * ladrillos
	}
}

object cazador{
	
	var victimas = 0
	
	method peso(){
		return 80
	}
	
	method victimasComidas(){
		victimas = victimas +1
	}
	
	method estaEnojado(){
		return victimas >= 1
		
	}
	
	method enojado(){
		lobo.crisis()
	}
	
}
