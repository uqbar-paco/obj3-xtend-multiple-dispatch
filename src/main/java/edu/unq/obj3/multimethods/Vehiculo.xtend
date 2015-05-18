package edu.unq.obj3.multimethods

abstract class Vehiculo {
	def int cargaNeta()
	
	dispatch def int cargaCompartidaCon(Vehiculo otro) {
		try {
			otro.cargaCompartidaCon(this)		
		} catch (StackOverflowError e) {
			this.cargaNeta + otro.cargaNeta	
		}
	}
}