package edu.unq.obj3.patternmatching

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
		switch (otro) {
			Camion: (this.cargaNeta + otro.cargaNeta) * this.cantidadAcoplados.max(otro.cantidadAcoplados)
			default: super.cargaCompartidaCon(otro)
		}
	}
}