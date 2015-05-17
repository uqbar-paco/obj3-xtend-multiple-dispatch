package edu.unq.obj3.base

import org.eclipse.xtend.lib.annotations.Data

@Data
class Camion implements Vehiculo {
	int cantidadAcoplados
	
	static int CARGA_CABINA = 50
	static int CARGA_ACOPLADO = 2500
	
	override cargaNeta() {
		CARGA_CABINA + cantidadAcoplados * CARGA_ACOPLADO
	}
}