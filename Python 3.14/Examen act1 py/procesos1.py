import csv 
gran_total_inventario = 0 

print(f"{'Producto':<25} | {'cantidad':<5} | {'Valor total':<15}")
print("-" * 45)
with open('almacen1.csv', 'r', encoding='utf-8') as archivo:
    lector = csv.DictReader(archivo)

    for fila in lector:
        precio = int(fila['precio'])
        cantidad = int(fila['cantidad'])
        nombre = fila['nombre']
    
        subtotal_productos = precio * cantidad 
        gran_total_inventario += subtotal_productos

        print(f"{nombre:<25} | {cantidad:<5} | ${subtotal_productos:>12,}")

print("-" * 45)
print(f"VALOR TOTAL INVENTARIO: ${gran_total_inventario:,.2f}")
