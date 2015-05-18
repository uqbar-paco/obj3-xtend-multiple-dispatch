package edu.unq.obj3.doubledispatch

import static extension org.junit.Assert.*
import org.junit.Test

class CamionTest {
	@Test 
	def void combinadoConOtroCamionLaCargaEsUnaCuentaRara() {
		val camionDe2550 = new Camion(1)
		val camionDe5050 = new Camion(2)
		
		// 2550 + 5050 * 2
		15200.assertEquals(camionDe2550.cargaCompartidaCon(camionDe5050))
	}
	
	@Test 
	def void combinadoConOtroVehiculoLaCargaEsLaSuma() {
		val camionDe2550 = new Camion(1)
		val autoDe50 = new Auto(50, false)
		
		2600.assertEquals(camionDe2550.cargaCompartidaCon(autoDe50))
	}
}
