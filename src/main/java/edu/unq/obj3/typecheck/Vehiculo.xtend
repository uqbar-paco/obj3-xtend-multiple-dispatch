package edu.unq.obj3.typecheck

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