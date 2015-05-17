package edu.unq.obj3.base

import edu.unq.obj3.base.Vehiculo
import org.eclipse.xtend.lib.annotations.Data

@Data
class Auto implements Vehiculo {
	int cargaInicial
	boolean tieneGNC
	
	override cargaNeta() {
		cargaInicial * if (tieneGNC) 3 else 1
	}
}