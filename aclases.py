class Empleado:
    def __init__(self, nombre, id_emp, cargo, correo, salario):
        self.nombre = nombre
        self.__id = id_emp  # Encapsulamiento
        self.cargo = cargo
        self.correo = correo
        self._salario_base = salario

    @property
    def id_empleado(self):
        return self.__id

    def calcular_pago(self): # Polimorfismo base
        return self._salario_base

class Administrativo(Empleado):
    def __init__(self, nombre, id_emp, cargo, correo, salario, area, nivel, ext):
        super().__init__(nombre, id_emp, cargo, correo, salario)
        self.area = area
        self.nivel = nivel
        self.ext = ext

    def calcular_pago(self): # Polimorfismo: Bono
        return self._salario_base + 500

class Operativo(Empleado):
    def __init__(self, nombre, id_emp, cargo, correo, salario, area_op, turno):
        super().__init__(nombre, id_emp, cargo, correo, salario)
        self.area_op = area_op
        self.turno = turno
        self.__horas_extra = 0

    def registrar_horas_extras(self, horas):
        self.__horas_extra += horas

    def calcular_pago(self): # Polimorfismo: Horas extra
        return self._salario_base + (self.__horas_extra * 40)

class Departamento:
    def __init__(self, nombre, codigo):
        self.nombre = nombre
        self.codigo = codigo
        self.lista_empleados = []

    def agregar_empleado(self, emp):
        self.lista_empleados.append(emp)

class Empresa:
    def __init__(self, nombre, nit, direccion, tel):
        self.nombre = nombre
        self.__nit = nit # Encapsulamiento
        self.departamentos = []

    def agregar_departamento(self, depto):
        self.departamentos.append(depto)