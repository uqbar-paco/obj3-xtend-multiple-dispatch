package edu.unq.obj3.typecheck

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
		if (otro instanceof Camion) {
			(this.cargaNeta + otro.cargaNeta) * this.cantidadAcoplados.max(otro.cantidadAcoplados) 
			//NOTA: Xtend me regala el casteo de *otro* a Camion, lo cual no quiere decir que no exista, 
			//se puede ver el Java generado para comprobarlo.
		} else {
			super.cargaCompartidaCon(otro)
		}
	}
}