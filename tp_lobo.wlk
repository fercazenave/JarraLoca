object lobo {
	var calorias = 100
	method come(algo) {
		calorias = calorias + algo.calorias()
	}
	method estaGordo() {
		return calorias > 200
	}
	method saludable() {
		return calorias > 20 && calorias < 150
	}
	method correr(lugar) {
		calorias = calorias - lugar.tiempo()*2
	}
	method tirarCasa(casa){
		calorias = calorias - casa.resistencia() - casa.pesoOcupantes() 
	}
	method calorias() {
		return calorias
	}
}

object casaLadrillo {
	var resistencia = 2
	var ocupantes = []
	var tiempo = 50
	method tiempo() {
		return tiempo
	}
	method pesoOcupantes(){
		return (ocupantes.sum{ocupantes->ocupantes.peso()})
		}
	method resistencia(){
		return resistencia
	}
	method ocupantes(){
		return ocupantes
	}
}

object casaMadera {
	var resistencia = 5
	var ocupantes = []
	var tiempo = 50
	method tiempo() {
		return tiempo
	}
	method pesoOcupantes(){
		return (ocupantes.sum{ocupantes->ocupantes.peso()})
	}
	method agregarChancho(chancho){
		ocupantes = ocupantes + chancho
	}
	method resistencia(){
		return resistencia
	}
	method ocupantes(){
		return ocupantes
	}
}

object casaPaja {
	var resistencia = 0
	const chanchito1 = new Chanchito()
    var ocupantes = [chanchito1]
	var tiempo = 50
	method tiempo() {
		return tiempo
	}
	method agregarChancho(chancho){
		ocupantes.add(chancho)
	}	
	method pesoOcupantes(){
		return ocupantes.sum{x => x.peso()}
	}
	method resistencia(){
		return resistencia
	}
	method ocupantes(){
		return ocupantes
	}	
}

class Chanchito {
	var peso = 100
	method calorias() {
		return peso / 10
	}
	method correr(lugar) {
	peso = peso - lugar.tiempo()*20
	}
	method peso(){
		return peso
	}
}

object caperucita { 
	var peso = 400
	var canasta = 4
	method peso() {
		return peso
		}
	method calorias() {
		return peso + canasta*2
	}
}

object vaca {
	var peso = 30
	var edad = 4
	method peso() {
		return peso
	}
	method calorias() {
		return peso + edad*4
	}
}

object abuela {
	var peso = 80
	method peso() {
		return peso
	}
	method calorias() { 
		return 0
	}
}

object bosque {
	var tiempo = 40
	method tiempo() {
		return tiempo
	}
}

object casaDeLaAbuela {
	var tiempo = 50
	method tiempo() {
		return tiempo
	}
}
