Algoritmo propiedad_pago
	
    Definir area, valor_m2, precio_venta, cuota_inicial, cuota_final Como Real
    Definir forma_pago Como Entero
	
    Escribir "Ingrese el área en metros cuadrados:"
    Leer area
	
    Escribir "Ingrese el valor del metro cuadrado:"
    Leer valor_m2
	
    Escribir "Ingrese la forma de pago (1 = descuento 10%, 2 = recargo 8%):"
    Leer forma_pago
	
    precio_venta = area * valor_m2
    cuota_inicial = precio_venta * 0.20
	
    Si forma_pago = 1 Entonces
        cuota_final = cuota_inicial - (cuota_inicial * 0.10)
    SiNo
        Si forma_pago = 2 Entonces
            cuota_final = cuota_inicial + (cuota_inicial * 0.08)
        SiNo
            Escribir "Forma de pago inválida."

FinSi
FinSi

Escribir "El precio de venta es: ", precio_venta
Escribir "El valor de la cuota inicial es: ", cuota_final

FinAlgoritmo
