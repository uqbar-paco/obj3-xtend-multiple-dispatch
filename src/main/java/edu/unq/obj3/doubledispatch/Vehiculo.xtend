package edu.unq.obj3.doubledispatch

abstract class Vehiculo {
	def int cargaNeta()
	def int cargaCompartidaCon(Vehiculo otro)
	
	def int cargaCompartidaConAuto(Auto otro) { cargaCompartidaDefault(otro) }
	def int cargaCompartidaConBici(Bici otro) { cargaCompartidaDefault(otro) }
	def int cargaCompartidaConCamion(Camion otro) { cargaCompartidaDefault(otro) }
	
	private def int cargaCompartidaDefault(Vehiculo otro) { 
		try {
			otro.cargaCompartidaCon(this)		
		} catch (StackOverflowError e) {
			this.cargaNeta + otro.cargaNeta
		}		
	}
}