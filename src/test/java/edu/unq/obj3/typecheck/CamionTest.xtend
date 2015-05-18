package edu.unq.obj3.typecheck

import static extension org.junit.Assert.*
import org.junit.Test

class CamionTest {
	@Test 
	def void unCamionSinAcopladosPuedeLlevar50Kilos() {
		50.assertEquals(new Camion(0).cargaNeta)
	}
	
	@Test 
	def void losAcopladosAgregan2500KilosDeCarga() {
		5050.assertEquals(new Camion(2).cargaNeta)
	}	
}
