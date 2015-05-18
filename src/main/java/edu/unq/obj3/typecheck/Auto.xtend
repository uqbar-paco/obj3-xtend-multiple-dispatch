package edu.unq.obj3.typecheck

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
		if (otro instanceof Auto) {
			this.cargaNeta + otro.cargaNeta + CARGA_ACOPLADO_COMPARTIDO
		} else {
			super.cargaCompartidaCon(otro)			
		}
	}
}