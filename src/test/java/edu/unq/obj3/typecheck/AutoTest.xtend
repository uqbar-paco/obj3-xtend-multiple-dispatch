package edu.unq.obj3.typecheck

import static extension org.junit.Assert.*
import org.junit.Test

class AutoTest {
	@Test 
	def void laCargaNetaDeUnAutoSinGNCEsLaInicial() {
		150.assertEquals(new Auto(150, false).cargaNeta)
	}
	
		@Test 
	def void laCargaNetaDeUnAutoConGNCEsElTripleDeLaInicial() {
		450.assertEquals(new Auto(150, true).cargaNeta)
	}
}
