package edu.unq.obj3.base

import static extension org.junit.Assert.*
import org.junit.Test

class BiciTest {
	@Test 
	def void unaBiciPeladaSoporta2KilosPorRodado() {
		30.assertEquals(new Bici(15, #[]).cargaNeta)
	}

	@Test 
	def void laParrillaAgrega15Kilos() {
		55.assertEquals(new Bici(20, #[Accesorio.parrilla]).cargaNeta)
	}
	
	@Test 
	def void elCanastoAgrega5Kilos() {
		45.assertEquals(new Bici(20, #[Accesorio.canasto]).cargaNeta)
	}	
	
	@Test 
	def void laParrillaConCajonDeLaSerenisimaAgrega25Kilos() {
		65.assertEquals(new Bici(20, #[Accesorio.parrillaConCajonLaSerenisima]).cargaNeta)
	}
	
	@Test 
	def void sePuedenCombinarAccesorios() {
		// 40 por el rodado + 25 del cajon + 5 del canasto
		70.assertEquals(new Bici(20, #[Accesorio.parrillaConCajonLaSerenisima, Accesorio.canasto]).cargaNeta)
	}
}
