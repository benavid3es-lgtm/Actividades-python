Algoritmo calculo_total_producto
	Definir nombre_producto como cadena 
	Definir precio,contenido,valor_total,descuento,valor_neto Como Real
	
	Escribir "ingrese nombre del producto"
	leer nombre_producto
	Escribir "ingrese la cantidad a comprar"
	leer cantidad 
	Escribir "ingrese el valor del producto"
	leer precio 
	
	
	valor_total = precio*cantidad 
	
	si cantidad >= 3 Entonces 
		descuento =valor_total*0.20 
	SiNo
		si cantidad = 2 Entonces
			descuento= valor_total*0.10
		SiNo
			si cantidad = 1 Entonces
				descuento = valor_total*0.5
				
			FinSi
			
			
		FinSi
		
		
	FinSi
	
	valor_neto = valor_total-descuento
	
	Escribir "Producto: ", nombre_producto
	Escribir "Precio del producto: ", precio
	Escribir "Cantidad comprada: ", cantidad
	Escribir "Valor total: ", valor_total
	Escribir "Descuento aplicado: ", descuento
	Escribir "valor neto a pagar:" , valor_neto

	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
