package edu.unq.obj3.doubledispatch

import org.eclipse.xtend.lib.annotations.Data

import static extension java.lang.Math.*

@Data
class Camion extends Vehiculo {
	int cantidadAcoplados
	
	static int CARGA_CABINA = 50
	static int CARGA_ACOPLADO = 2500
	
	override cargaNeta() {
		CARGA_CABINA + cantidadAcoplados * CARGA_ACOPLADO
	}
	
	override cargaCompartidaCon(Vehiculo otro) {
		otro.cargaCompartidaConCamion(this)
	}
	
	override cargaCompartidaConCamion(Camion otro) {
		(this.cargaNeta + otro.cargaNeta) * this.cantidadAcoplados.max(otro.cantidadAcoplados) 
	}
	
	override cargaCompartidaConBici(Bici otro) {
		this.cargaNeta
	}	
}