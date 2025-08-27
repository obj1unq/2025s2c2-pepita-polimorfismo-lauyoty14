object pepita {
	var energia = 100
	var cenas = 0

	method cenas() = cenas
	method cenas(_cenas) {
		cenas = _cenas
	}
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object pepon {
  var energia = 30
  var cenas = 0
  const gastoAlVolar = 20

  method cenas() = cenas

  method cenas(_cenas) {
	cenas = _cenas
  }

  method comer(comida) {
		energia = energia + (comida.energiaQueAporta() / 2)
	}
	
	method volar(distancia) {
		energia = energia - (gastoAlVolar + distancia * 2)
	}
	
	method energia() {
		return energia
	}
}

object roque {
  var ave = pepita

  method ave() = ave

  method ave(_ave) {
	ave = _ave
	ave.cenas(0)
  }

  method alimentar(comida) {
    ave.comer(comida)
	ave.cenas(ave.cenas() + 1)
  } 
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}