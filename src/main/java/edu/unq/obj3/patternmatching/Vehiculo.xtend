package edu.unq.obj3.patternmatching

abstract class Vehiculo {
	def int cargaNeta()
	
	def int cargaCompartidaCon(Vehiculo otro) {
		try {
			otro.cargaCompartidaCon(this)		
		} catch (StackOverflowError e) {
			this.cargaNeta + otro.cargaNeta	
		}
	}
}