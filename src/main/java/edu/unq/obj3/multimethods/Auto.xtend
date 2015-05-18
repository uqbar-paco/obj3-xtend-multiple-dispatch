package edu.unq.obj3.multimethods

import org.eclipse.xtend.lib.annotations.Data

@Data
class Auto extends Vehiculo {
	int cargaInicial
	boolean tieneGNC
	
	static int CARGA_ACOPLADO_COMPARTIDO = 150
	
	override cargaNeta() {
		cargaInicial * if (tieneGNC) 3 else 1
	}
	
	dispatch def cargaCompartidaCon(Auto otro) {
		this.cargaNeta + otro.cargaNeta + CARGA_ACOPLADO_COMPARTIDO
	}
}