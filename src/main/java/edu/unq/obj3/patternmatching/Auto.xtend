package edu.unq.obj3.patternmatching

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
		switch (otro) {
			Auto: this.cargaNeta + otro.cargaNeta + CARGA_ACOPLADO_COMPARTIDO
			default: super.cargaCompartidaCon(otro)			
		}
	}
}