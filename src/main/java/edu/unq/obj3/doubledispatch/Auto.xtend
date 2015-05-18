package edu.unq.obj3.doubledispatch

import org.eclipse.xtend.lib.annotations.Data

@Data
class Auto extends Vehiculo {
	int cargaInicial
	boolean tieneGNC
	
	static int CARGA_ACOPLADO_COMPARTIDO = 150
	
	override cargaNeta() {
		cargaInicial * if (tieneGNC) 3 else 1
	}
	
	override cargaCompartidaCon(Vehiculo otro) {
		otro.cargaCompartidaConAuto(this)
	}	
	
	override cargaCompartidaConAuto(Auto otro) {
		this.cargaNeta + otro.cargaNeta + CARGA_ACOPLADO_COMPARTIDO
	}
	
	override cargaCompartidaConBici(Bici otro) {
		this.cargaNeta
	}
}