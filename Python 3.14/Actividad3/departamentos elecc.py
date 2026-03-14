import json
datos_elecciones = [
    {"Departamento": "Antioquia", "Cantidad_Votantes_Hombres": 1250000, "Cantidad_Votantes_Mujeres": 1300000},
    {"Departamento": "Bogotá D.C.", "Cantidad_Votantes_Hombres": 2800000, "Cantidad_Votantes_Mujeres": 3000000},
    {"Departamento": "Valle del Cauca", "Cantidad_Votantes_Hombres": 950000, "Cantidad_Votantes_Mujeres": 1050000},
    {"Departamento": "Atlántico", "Cantidad_Votantes_Hombres": 580000, "Cantidad_Votantes_Mujeres": 620000},
    {"Departamento": "Santander", "Cantidad_Votantes_Hombres": 510000, "Cantidad_Votantes_Mujeres": 540000},
    {"Departamento": "Bolívar", "Cantidad_Votantes_Hombres": 450000, "Cantidad_Votantes_Mujeres": 470000},
    {"Departamento": "Cundinamarca", "Cantidad_Votantes_Hombres": 700000, "Cantidad_Votantes_Mujeres": 750000},
    {"Departamento": "Nariño", "Cantidad_Votantes_Hombres": 320000, "Cantidad_Votantes_Mujeres": 340000},
    {"Departamento": "Huila", "Cantidad_Votantes_Hombres": 210000, "Cantidad_Votantes_Mujeres": 220000},
    {"Departamento": "Quindío", "Cantidad_Votantes_Hombres": 150000, "Cantidad_Votantes_Mujeres": 165000}
]
with open('elecciones.json', 'w', encoding='utf-8') as archivo:
    json.dump(datos_elecciones,archivo, indent=4,ensure_ascii=False)

print("archivo'Elecciones.json' creado con exito")