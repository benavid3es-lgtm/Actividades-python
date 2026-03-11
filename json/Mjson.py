import json

def procesarInventario():
    try:
        # 1. Leer el archivo JSON
        with open('productos.json', 'r', encoding='utf-8') as archivo:
            productos = json.load(archivo)
        
        valor_total_inventario = 0
        productos_bajo_stock = []

        print("\n" + "="*75)
        print(f"{'PRODUCTO':<35} | {'CANTIDAD':<8} | {'SUBTOTAL':<20}")
        print("="*75)

        # 2. Procesar cada producto para cálculos y filtrado
        for p in productos:
            # Cálculo del valor por producto [cite: 236]
            valor_por_producto = p['precio'] * p['cantidad']
            valor_total_inventario += valor_por_producto

            # Imprimir fila del producto
            print(f"{p['producto']:<35} | {p['cantidad']:<8} | ${valor_por_producto:>19,}")

            # Lógica de Bajo Stock: menor a 5 unidades [cite: 238]
            if p['cantidad'] < 5:
                productos_bajo_stock.append(p)

        # 3. Mostrar el Gran Total [cite: 237]
        print("-" * 75)
        print(f"{'VALOR TOTAL DEL INVENTARIO:':<46} ${valor_total_inventario:>19,}")
        print("="*75)

        # 4. Exportar el archivo de bajo stock (Stoker) [cite: 238]
        # Esta parte DEBE estar fuera del ciclo 'for' anterior
        if productos_bajo_stock:
            with open('bajo_stock.json', 'w', encoding='utf-8') as archivo_salida:
                json.dump(productos_bajo_stock, archivo_salida, indent=4, ensure_ascii=False)
            print(f"\n ¡Éxito! Se generó 'bajo_stock.json' con {len(productos_bajo_stock)} productos.")
        else:
            print("\nℹNo se generó el archivo porque todos los productos tienen stock suficiente (>= 5).")

    except FileNotFoundError:
        print(" Error: No se encontró 'productos.json'. Verifica la ubicación del archivo.")
    except Exception as e:
        print(f" Ocurrió un error inesperado: {e}")

if __name__ == "__main__":
    procesarInventario()

