Algoritmo descuento_compra 
	//definir variables 
	Definir totalCompra,descuento,totalpagar Como Real
	//Leer datos
	
	Escribir "ingresar el totalcompra"
	Leer totalCompra
	Escribir "ingresa el descuento" "(%)"
	Leer descuento 
	
	//descubrir valor del descuento 
	
	descuento= totalCompra * 0.15
	totalpagar=totalCompra - descuento
	
	//solucion de problema 
	
	Escribir "el descuento dado es de: $", descuento
	Escribir "el totalpagar es de: $", totalpagar
	
	
	
FinAlgoritmo
