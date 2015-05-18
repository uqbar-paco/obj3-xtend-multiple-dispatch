package edu.unq.obj3.patternmatching

import static extension org.junit.Assert.*
import org.junit.Test

class AutoTest {
	@Test 
	def void combinadoConOtroAutoLleva150KilosMas() {
		val autoDe75 = new Auto(25, true)
		val autoDe25 = new Auto(25, false)
		
		250.assertEquals(autoDe75.cargaCompartidaCon(autoDe25))
	}
	
	@Test 
	def void combinadoConOtroVehiculoSeSumanLasCargas() {
		val autoDe50 = new Auto(50, false)
		val camionDe2550 = new Camion(1)
		
		2600.assertEquals(autoDe50.cargaCompartidaCon(camionDe2550))
	}
}
