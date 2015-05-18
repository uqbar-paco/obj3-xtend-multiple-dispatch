# Carga compartida entre vehículos [![Build Status](https://travis-ci.org/uqbar-paco/obj3-xtend-multiple-dispatch.svg?branch=master)](https://travis-ci.org/uqbar-paco/obj3-xtend-multiple-dispatch)
> Un ejemplo de multimethods en Xtend

### Dominio

En este (in)útil programa, queremos calcular la carga que pueden llevar 2 vehículos en conjunto. 

Para esto, lo primero que necesitamos es la _carga neta_ de cada uno de ellos, que se calcula de la siguiente manera:
- Una **Bici** soporta 2 kilos por rodado y puede tener otros accesorios que le aumentan su carga: parilla (15 kilos), canasto (5 kilos), parrilla con cajón de la Serenísima (25 kilos).
- De un **Auto** sabemos su carga inicial, y su carga neta es simplemente ese valor. A menos que tenga GNC, en cuyo caso la carga neta es el triple de la inicial.
- Por último, la carga neta de un **Camion** se define como 50 (lo que puede llevar en la cabina) más 2500 por cada acoplado que tenga.

Una vez que tenemos eso, podemos calcular la carga compartida según las siguientes reglas:
- Si se juntan una **Bici** con otra **Bici**, pueden llevar un cajón de 50 kilos sostenido entre las 2. Con cualquier otro vehículo la bici no lleva nada, por lo tanto queda la carga del otro.
- Un **Camion** con otro **Camion** suman sus cargas y las multiplican por la cantidad de acoplados que sea mayor (nosotros tampoco le vemos sentido a esto, pero el experto en logística nos dijo que ese era el cálculo).
- Un **Auto** y otro **Auto** pueden llevar un pequeño acoplado entre los dos, por lo que su carga se incrementa en 150 kilos.
- En cualquier otro caso, el cálculo es simplemente la suma entre las 2 cargas netas.

### Soluciones propuestas

Explotando al máximo las posibilidades de Xtend, proponemos 4 implementaciones diferentes:
- [**double dispatch**](https://github.com/uqbar-paco/obj3-xtend-multiple-dispatch/tree/master/src/main/java/edu/unq/obj3/doubledispatch), la opción más conservadora y OOP-purista-compliant
- [**type check**](https://github.com/uqbar-paco/obj3-xtend-multiple-dispatch/tree/master/src/main/java/edu/unq/obj3/typecheck), más conocido como `instanceof`
- [**pattern matching**](https://github.com/uqbar-paco/obj3-xtend-multiple-dispatch/tree/master/src/main/java/edu/unq/obj3/patternmatching), implementado con el `switch` con vitaminas que trae Xtend
- [**multimethods**](https://github.com/uqbar-paco/obj3-xtend-multiple-dispatch/tree/master/src/main/java/edu/unq/obj3/multimethods), o la evolución dinámica de la sobrecarga

Dejamos al lector la tarea de analizar las ventajas y desventajas de cada una de estas opciones :smile:
