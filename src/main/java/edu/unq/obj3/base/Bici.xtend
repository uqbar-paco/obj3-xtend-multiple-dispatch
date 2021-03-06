package edu.unq.obj3.base

import java.util.List
import org.eclipse.xtend.lib.annotations.Data

import static extension edu.unq.obj3.base.ListExtensions.*

@Data
class Accesorio {
	int cargaAdicional
	
	def static parrilla() { new Accesorio(15) }
	def static canasto() { new Accesorio(5) }
	def static parrillaConCajonLaSerenisima() { new Accesorio(25) }
}

@Data
class Bici implements Vehiculo {
	int rodado
	List<Accesorio> accesorios
	
	private static int KILOS_POR_RODADO = 2
	
	override cargaNeta() {
		rodado * KILOS_POR_RODADO + accesorios.sum[cargaAdicional]
	}
}