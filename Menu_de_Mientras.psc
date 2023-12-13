SubProceso opcion<-menu
	Definir opcion Como Entero;
	Escribir "----------------------------------------------------";
	Escribir "[1] Saludar 10 veces";
	Escribir "[2] Calificaciones en cadena";
	Escribir "[3] Zanahorias y lechugas";
	Escribir "[4] Cuenta regresiva";
	Escribir "[5] Boleto de lotería";
	Escribir "[6] Correo Electronico";
	Escribir "[7] Todavía no";
	Escribir "[8] Salir";
	Escribir "---------------------------------------------------";
	Escribir "¿Cuál opción requiere?";
	Leer opcion;
	Limpiar Pantalla;
	Segun opcion Hacer
		1:
			Escribir "Se saludará 10 veces";
			Definir cont Como Entero;
			cont<-1;
			Mientras cont<=10 Hacer
				Escribir cont, ".- Hola a todos :D";
				cont<-cont+1;
			FinMientras
			Esperar Tecla;
		2:
			Escribir "Las calificaciones se separarán por clave y calificación";
			Escribir "01=9.1|02=5.4|03=9.3|04=8.0|05=8.3|06=5.1|07=9.9|08=5.6|09=8.8|10=7.5";
			Escribir "---------------------------------------------------------------------";
			Definir  calif como cadena;
			Definir contador como entero;
			contador<-0;
			calif <- "01=9.1|02=5.4|03=9.3|04=8.0|05=8.3|06=5.1|07=9.9|08=5.6|09=8.8|10=7.5";
			Mientras contador < Longitud(calif)  Hacer
				Si Subcadena(calif, contador, contador) = "|" Entonces
					Escribir "";
				SiNo
					Escribir Sin Saltar Subcadena(calif, contador, contador);
				FinSi
				contador<-contador+1;
			FinMientras
			Escribir " ";
			Esperar Tecla;
		3:
			Escribir "Dado un número se mostrarán las lechugas (&)";
			Escribir "Y las zanahorias (*), las cuales estarán";
			Escribir "Separadas en una linea de 10";
			Escribir "-------------------------------------------";
			Definir c, cantidad Como Entero;
			Escribir "Ingrese la cantidad que desea plantar";
			Leer cantidad;
			c<-1;
			Mientras c<= cantidad Hacer
				si c mod 2 = 0 Entonces
					Escribir Sin Saltar " &";
				SiNo
					Escribir Sin Saltar " *";
				FinSi
				Si c mod 10 = 0 Entonces
					Escribir " ";
				FinSi
				c<-c+1;
			FinMientras
			Escribir " ";
			Esperar Tecla;
		4:
			Escribir "Inicia una cuenta regresiva hasta llegar a 0";
			Escribir "--------------------------------------------";
			Definir cuenta, cont Como Entero;;
			Escribir "Ingresa el número de donde quiera empezar";
			Leer cuenta;
			cont<-0;
			Mientras cuenta > cont Hacer
				Borrar Pantalla;
				Escribir "Cuentra regresiva ", cuenta;
				Esperar 1 segundo;
				cuenta<- cuenta-1;
			FinMientras
			Esperar Tecla;
		5:
			Escribir "Se da un aproximación de cuentas veces sale el boleto";
			Escribir "que se eligió";
			Escribir "----------------------------------------------------";
			definir boleto, val ,i Como Entero;
			escribir Sin Saltar "Ingresa el número que consideras que ganará ";
			Leer val;
			i<-1;
			boleto<-azar (101);
			mientras val <> boleto Hacer
				boleto <-azar(101);
				i<-i+1;
			FinMientras
			si i<=100 Entonces
				Escribir "En ",i," intentos se sacará el número ",val; 
			SiNo
				escribir "Se hicieron mas de 100 intentos y no salio :(";
			FinSi
			Esperar Tecla;
		6:
			Escribir "Valida el correo ingresado";
			Escribir "--------------------------";
			Definir correo como texto;
			Definir ar, pu, lon, c Como Entero;
			ar<-0;
			pu<-0;
			c<-1;
			Escribir Sin Saltar "Ingresa tu correo gmail (tiene que ser gmail obligatoriamente): ";
			Leer correo;
			lon<-Longitud(correo);
			Mientras  c<= Lon-1 Hacer
				Si Subcadena(correo,c,c)="@" Entonces
					ar<-ar+1;
					si Subcadena(correo,c+1,c+1)="." Entonces
						ar<-par+1;
					FinSi
				FinSi
				si Subcadena(correo,c,c)="." Entonces
					pu<-pu+1;
				FinSi
				c<-c+1;
			FinMientras
			Si ar=0 o ar>1 o pu=0 Entonces
				Escribir "Correo electronico incorrecto";
			SiNo
				Escribir "Correo electronico correcto";
			FinSi
			Esperar Tecla;
		7:
			Escribir "Te dice si los dos numeros escritos cumplen";
			Escribir "Con los requisitos o todavía no";
			Escribir "-------------------------------------------";
			Definir a, b, n, c, enter Como Entero;
			c<-1;
			a<-0;
			b<-0;
			Mientras c<=2 Hacer
				Escribir "Ingresa un número";
				Leer n;
				si c=1 Entonces
					a<-n;
				SiNo
					b<-n;
				FinSi
				c<-c+1;
			FinMientras
			si a<>b o (a mod 2 =1 y b mod 2 = 0) o (b mod 2 = 1 y a mod 2=0) o (a>1000 y b >1000 ) Entonces
				Escribir "YA";
			SiNo
				Escribir "Todavía no";
			FinSi
			Esperar Tecla;
	FinSegun
FinSubProceso
Proceso Menu_de_mientras
	Limpiar Pantalla;
	definir c Como Entero;
	Repetir 
		Limpiar Pantalla;
		escribir menu;
		c<-menu;
	Hasta Que c=8
	Escribir "Nos vemos";
FinProceso