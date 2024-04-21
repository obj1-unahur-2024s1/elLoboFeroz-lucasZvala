import Lobo.lobo
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
