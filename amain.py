from aclases import Empresa, Departamento, Administrativo, Operativo

def ejecutar_sistema():
    # 1. Instancias
    mi_empresa = Empresa("Sena Tech", "800.123", "Calle 52", "300123")
    it = Departamento("Sistemas", "SIS-01")

    # 2. Empleados (Beatriz con 8 datos y Juan con 7)
    admin = Administrativo("Beatriz Soler", "A1", "Gerente", "b@mail.com", 5000, "Sistemas", "Nivel 10", "Ext 101")
    oper = Operativo("Juan Paez", "O1", "Tecnico", "j@mail.com", 2500, "Mantenimiento", "Noche")

    # 3. Acciones (TODO EN MINÚSCULAS)
    oper.registrar_horas_extras(10) 
    it.agregar_empleado(admin)
    it.agregar_empleado(oper)
    mi_empresa.agregar_departamento(it)

    # 4. Resultados
    print(f"\n--- NOMINA {mi_empresa.nombre.upper()} ---")
    for empleado in it.lista_empleados:
        # Polimorfismo en acción
        print(f"ID: {empleado.id_empleado} | Nombre: {empleado.nombre} | Pago: ${empleado.calcular_pago()}")

if __name__ == "__main__":
    ejecutar_sistema()