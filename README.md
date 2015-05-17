# Carga compartida entre vehículos

En este (in)útil programa, queremos calcular la carga que pueden llevar 2 vehículos en conjunto. 

Para esto, lo primero que necesitamos es la _carga neta_ de cada uno de ellos, que se calcula de la siguiente manera:
- Una **Bici** soporta 2 kilos por rodado y puede tener otros accesorios que le aumentan su carga: parilla (15 kilos), canasto (5 kilos), parrilla con cajón de la Serenísima (25 kilos).
- De un **Auto** sabemos su carga inicial, y su carga neta es simplemente ese valor. A menos que tenga GNC, en cuyo caso la carga neta es el triple de la inicial.
- Por último, la carga neta de un **Camion** se define como 50 (lo que puede llevar en la cabina) más 2500 por cada acoplado que tenga.