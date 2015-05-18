package edu.unq.obj3.typecheck

import org.eclipse.xtend.lib.annotations.Data

import static extension java.lang.Math.*

@Data
class Camion implements Vehiculo {
	int cantidadAcoplados
	
	static int CARGA_CABINA = 50
	static int CARGA_ACOPLADO = 2500
	
	override cargaNeta() {
		CARGA_CABINA + cantidadAcoplados * CARGA_ACOPLADO
	}
	
	def cargaCombinadaCon(Vehiculo otro) {
		if (otro instanceof Camion) {
			(this.cargaNeta + otro.cargaNeta) * this.cantidadAcoplados.max((otro as Camion).cantidadAcoplados)
		} else {
			this.cargaNeta + otro.cargaNeta
		}
	}
}