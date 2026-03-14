import json

try:
    with open('elecciones.json', 'r', encoding='utf-8') as archivo:
        datos_elecciones = json.load(archivo)

    
    departamentos_mayoria_mujeres = [
        dep for dep in datos_elecciones
        if dep['Cantidad_Votantes_Mujeres'] > dep['Cantidad_Votantes_Hombres']
    ]

    with open('mayoria_mujeres_departamento.json', 'w', encoding='utf-8') as archivo_nuevo:
        json.dump(departamentos_mayoria_mujeres, archivo_nuevo, indent=4, ensure_ascii=False)

    print(" Proceso completado")
    print(f"Se encontraron {len(departamentos_mayoria_mujeres)} departamentos con mayoría femenina.")
    print("Archivo 'mayoria_mujeres_departamento.json' generado con éxito.")

except FileNotFoundError:
    print(" Error: No se encontró 'elecciones.json'. Verifica la ubicación.")
except KeyError as e:
    print(f"Error: La llave {e} no existe. Revisa mayúsculas, minúsculas y guiones bajos.")