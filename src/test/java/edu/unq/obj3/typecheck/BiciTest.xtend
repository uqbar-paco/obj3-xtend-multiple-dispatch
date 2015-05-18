package edu.unq.obj3.typecheck

import static extension org.junit.Assert.*
import org.junit.Test

class BiciTest {
	@Test 
	def void unaBiciCombinadaConOtraLlevan50KilosMas() {
		val biciDe55 = new Bici(20, #[Accesorio.parrilla])
		val biciDe30 = new Bici(15, #[])
		
		135.assertEquals(biciDe55.cargaCombinadaCon(biciDe30))
	}
	
	@Test 
	def void unaBiciCombinadaConOtroVehiculoLlevaLaCargaDelOtro() {
		val biciDe55 = new Bici(20, #[Accesorio.parrilla])
		val autoDe80 = new Auto(80, false)
		
		80.assertEquals(biciDe55.cargaCombinadaCon(autoDe80))
	}
}
