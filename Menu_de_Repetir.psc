SubProceso opcion<-menu 
	Definir opcion Como Entero;
	Escribir "----------------------------------------------------";
	Escribir "[1] Validación de rango";
	Escribir "[2] Validación de nombre";
	Escribir "[3] Validando más rangos de números";
	Escribir "[4] Nombre no debe de estar vacio";
	Escribir "[5] Es vocal";
	Escribir "[6] Salir";
	Escribir "---------------------------------------------------";
	Escribir "¿Cuál opción requiere?";
	Leer opcion;
	Limpiar Pantalla;
	Segun opcion Hacer
		1:
			Escribir "Se debe de ingresar un valor comprendido entre el rango";
			Escribir "[18, 100]";
			Escribir "-------------------------------------------------------";
			Definir num Como Entero;
			Repetir
				Escribir "Ingresa un número";
				leer num;
			Hasta Que num>=18 y num <= 100
			Escribir "MUY BIEN";
			Esperar Tecla;
		2:
			Escribir "El nombre ingresado tiene que estar entre";
			Escribir "3 y 50 caracteres";
			Escribir "-----------------------------------------";
			Definir nom Como Caracter;
			Repetir
				Escribir "Ingresa un nombre";
				Leer nom;
			Hasta Que Longitud(nom)>=3 y Longitud(nom)<=50
			Escribir "Nombre correcto";
			Esperar Tecla;
		3:
			Escribir "Ahora el número puede estar en dos rangos distinto";
			Escribir "Rango 1: [1, 10]";
			Escribir "Rango 2: [40, 50]";
			Escribir "Puede estar en cualquiera de esos dos rangos";
			Escribir "-------------------------------------------------";
			Definir num Como Entero;
			Repetir
				Escribir "Ingresa un número";
				Leer num;
			Hasta Que (num>=1 y num <= 10) o (num>=40 y num<=50)
			Escribir "Numero correcto";
			Esperar Tecla;
		4:
			Escribir "El nombre no debe de tener 0 caracteres";
			Escribir "---------------------------------------";
			Definir nom Como Caracter;
			Repetir
				Escribir "Ingresa tu nombre";
				Leer nom;
			Hasta Que Longitud(nom)>=1
			Escribir "El nombre ya no está vacio";
			Esperar Tecla;
		5:
			Escribir "Detecta si la letra ingresada es una vocal o no";
			Escribir "-----------------------------------------------";
			Definir v Como Caracter;
			Repetir
				Escribir "Ingresa una vocal";
				Leer v;
			Hasta Que v="a" o v="e" o v="i" o v="o" o v="u" o v="á" o v="é" o v="í" o v="ó" o v="ú"
			Escribir "Has ingresado la letra correcta";
			Esperar Tecla;
	FinSegun
FinSubProceso
Proceso Menu_de_Repetir
	Limpiar Pantalla;
	definir c Como Entero;
	Repetir 
		Limpiar Pantalla;
		escribir menu;
		c<-menu;
	Hasta Que c=6 
	Escribir "Nos vemos";
FinProceso