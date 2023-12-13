SubProceso opcion<-menu
	Definir opcion Como Entero;
	Escribir "----------------------------------------------------";
	Escribir "[1] Saluda 10 veces";
	Escribir "[2] Planración de zanahorias";
	Escribir "[3] Figuras Geometricas";
	Escribir "[4] Series númericas";
	Escribir "[5] Conteo letras";
	Escribir "[6] Validación de número";
	Escribir "[7] Invertir nombre";
	Escribir "[8] Reloj";
	Escribir "[9] Simulación de calificaciones";
	Escribir "[10] Validar calificaciones";
	Escribir "[11] Validar correo";
	Escribir "[12] Salir";
	Escribir "---------------------------------------------------";
	Escribir "¿Cuál opción requiere?";
	Leer opcion;
	Limpiar Pantalla;
	Segun opcion Hacer
		1:
			Escribir "Se saluda 10 veces";
			Escribir "------------------";
			Definir contador Como Entero;
			Para contador<-1 Hasta 10 Con Paso 1 Hacer
				Escribir contador, " Hola a todos :)";
			FinPara
			Esperar Tecla;
		2:
			Escribir "Se da un número determinado de zanahorias para sembrar";
			Escribir "------------------------------------------------------";
			Definir z, c Como Entero;
			Escribir "Ingresar el número de zanahorias que desea plantar";
			Leer z;
			Si z >= 1 y z <= 1000 Entonces
				para c <- 1 Hasta z con paso 1 Hacer
					Escribir Sin Saltar "* ";
					Si c mod 10 = 0 Entonces
						Escribir "";
					FinSi
				FinPara
			SiNo
				Escribir "Cantidad no valida de zanahorias";
			FinSi
			Esperar Tecla;
		3:
			Escribir "Tres figuras que se pueden realizar";
			Escribir "1.- Caudrado";
			Escribir "2.- Rectangulo";
			Escribir "3.- Triángulo";
			Escribir "----------------------------------";
			definir op Como Entero;
			Escribir Sin Saltar "Ingresa la opción ";
			Leer op;
			Si op < 1 O op > 3 Entonces		
				Escribir "Opción Incorrecta";
			FinSi
			Si op = 1 Entonces
				definir lado, c,j Como Entero;
				definir linea como texto;
				Escribir "Ingresa el lado ";
				Leer lado;
				Para j <- 1 Hasta lado  Hacer
					linea <- "";
					Para c <- 1 Hasta lado Con Paso 1 Hacer
						linea <- Concatenar(linea,"* ");
					FinPara
					Escribir linea;		
				FinPara
			FinSi
			Si op = 2 Entonces 
				Definir base, altura Como Entero;
				definir c, j Como Entero;
				Escribir Sin Saltar "Ingresar base";
				Leer base;
				Escribir Sin Saltar "Ingresar altura";
				leer altura;
				Para c <- 1 Hasta base Con Paso 1 Hacer
					Para j<- 1 Hasta altura Con Paso 1 Hacer
						Escribir Sin Saltar "*";
					FinPara
					Escribir "";
				FinPara
			FinSi
			Si op = 3 Entonces
				Definir b, a, j, c Como Entero;
				Escribir sin saltar'Ingrese base y altura';
				Leer b;
				leer a;
				Para j<-1 Hasta b  hacer
					Para c<-1 Hasta (a - j) Con Paso 1 Hacer
						Escribir sin saltar'* ';
					FinPara
					Escribir '';
				FinPara
			FinSi
			Esperar Tecla;
		4:
			Definir c, s Como Entero;
			Escribir "**************************";
			Escribir "|      Series            |";
			Escribir "**************************";
			Escribir "| [1] Serie 1, de 5 a 500|";
			Escribir "| [2] Serie 2, de 500 a 5|";
			Escribir "| [3] Serie 3, Fibonacci |";
			Escribir "| [4] Serie 4, Factorial |";
			Escribir "**************************";
			Escribir Sin Saltar "Elija la opción deseada";
			Leer s;
			Si s>= 1 y s<= 4 Entonces
				Si s=1 Entonces
					Escribir "La opción seleccionada es: sere de 5 en 5 hasta 500";
					Para c<- 5 Hasta 500 Con Paso 5 Hacer
						Escribir Sin Saltar c, " ";
					FinPara
				FinSi
				Si s=2 Entonces
					Escribir "La opción seleciconada 2: de 500 hasta 5 restando 5";
					Para c<- 500 Hasta 5 con paso -5 Hacer
						Escribir Sin Saltar c, " ";
					FinPara
				FinSi
				Si s=3 Entonces
					Definir a, b, d, n Como Entero;
					Escribir "Elegiste la opción: Serie de Fibonacci";
					Escribir "Ingresa el número de terminos que desea saber";
					Leer n;
					a<-0;
					b<-1;
					para c<-1 Hasta n Hacer
						Escribir Sin Saltar a, " ";
						d<-a+b;
						a<-b;
						b<-d;
					FinPara
				FinSi
				Si s=4 Entonces
					Definir f, n Como Entero;
					f<-1;
					Escribir Sin Saltar "Elegiste la opción: Factorial de un número";
					Escribir Sin Saltar "Ingresa el valor de ese número";
					Leer n;
					Para c<-n Hasta 1 Con Paso -1 Hacer
						f<-f*c;
						Escribir Sin Saltar c, "*";
					FinPara
					Escribir "";
					Escribir "El factorial del numero es ", f;
				FinSi
			SiNo
				Escribir "Opción no reconocida";
			FinSi
			Esperar Tecla;
		5:
			Escribir "Se contará el número de caracteres que tiene el nombre";
			Escribir "------------------------------------------------------";
			definir espacios como cadena; 
			definir numeroextr, numespacios, numconsonantes, numvocales, a, b como entero;
			definir consonantes, vocales, nombre, extr como caracter;
			Escribir sin saltar " Ingresa el un nombre";
			Leer nombre;
			nombre <- Minusculas(nombre);
			vocales <- "aáeéiíoóuú";
			numvocales <- 0;
			para a <- 0 hasta Longitud(nombre) - 1 Hacer
				para b <- 0 hasta Longitud(vocales) - 1 Hacer
					si Subcadena(nombre,a,a) = Subcadena(vocales,b,b) Entonces
						numvocales <-numvocales + 1;
					FinSi
				FinPara
			FinPara
			Escribir " El nombre tiene " , numvocales , " vocales";
			
			consonantes<-"bcdfghjklmnpqrstvwxyz";
			numconsonantes <- 0;
			para a <-0 hasta Longitud(nombre) -1 Hacer
				para b <-0 hasta Longitud(consonantes) -1 Hacer
					si Subcadena(nombre,a,a) = Subcadena(consonantes,b,b) Entonces
						numconsonantes <- numconsonantes+1;
					FinSi
				FinPara
			FinPara
			Escribir " El nombre tiene " , numconsonantes , " consonantes";
			extr<-"!@#·$%&/()=?¿+`^´Ç*-_<>";
			numeroextr<-0;
			para a<- 0 hasta Longitud(nombre) -1 Hacer
				para b <- 0 hasta Longitud(extr) - 1 Hacer
					si Subcadena(nombre,a,a)=Subcadena(extr,b,b) Entonces
						numeroextr<-numeroextr +1;
					FinSi
				FinPara
			FinPara
			Escribir " El nombre tiene " , numeroextr , " caracteres extraños";
			espacios<-" ";
			numespacios<-0;
			para a<-0 hasta Longitud(nombre) - 1 Hacer
				para b<-0 hasta Longitud(espacios) -1 Hacer
					si Subcadena(nombre,a,a)=Subcadena(espacios,b,b) Entonces
						numespacios<-numespacios+1;
					FinSi
				FinPara
			FinPara
			Escribir " El nombre tiene " , numespacios , " Espacios en blanco";
			Esperar Tecla;
		6:
			Escribir "El número que ingrese se decidirá si es correcto o no";
			Escribir "-----------------------------------------------------";
			Definir num,numunico como caracter;
			definir c,largo como entero;
			definir val Como Logico;
			Escribir 'Ingrese número';
			Leer num;
			largo<-Longitud(num);
			val<-Verdadero;
			Para c<- 0 Hasta largo-1 Con Paso 1 Hacer
				numunico<- Subcadena(num,c,c);
				si numunico<>'0' y numunico<>'1' y numunico<>'2' y numunico<>'3' y numunico<>'4' y numunico<>'5' y numunico<>'6' y numunico<>'7' y numunico<>'8' y numunico<>'9' Entonces
					val<-falso; 
					
				FinSi
			FinPara
			si val=falso Entonces
				escribir "Numero no reconocido";
			sino 
				Escribir "Numero validado";
			FinSi
			Esperar Tecla;
		7:
			Escribir "Aquel texto que ingrese se invertirá";
			Escribir "------------------------------------";
			definir txt como cadena;
			definir tmp, rpta Como Caracter;
			definir k,cantidad,i como entero;
			k <-0;
			rpta<-' ';
			Escribir "Ingrese nombre a invertir";
			leer txt;
			cantidad<- Longitud(txt);
			Para i<-0 Hasta cantidad Con Paso 1 Hacer
				tmp<-Subcadena(txt,cantidad-k,cantidad-k);
				rpta<- Concatenar(rpta,tmp);
				k<- k +1;
			FinPara
			
			Escribir "El texto ingresao es ", txt, " el cual al reverso es: ",rpta;
			Esperar Tecla;
		8:
			Escribir "Se crea un reloj a base de una hora dada";
			Escribir "Recomiendo 23:59:57 para que termine rápido";
			Escribir "-------------------------------------------";
			Definir h,m,s, ch, cm, cs Como Entero;
			h<-0;
			m<-0;
			s<-0;
			Escribir "Ingrese la hora deseada";
			Leer h;
			Escribir "Ingresa los minutos deseados";
			Leer m;
			Escribir "Ingresa los segundos deseados";
			Leer s;
			Limpiar Pantalla;
			Para ch<-h Hasta 23 Con Paso 1 Hacer
				Para cm<-m Hasta 59 Con Paso 1 Hacer
					Para cs<-s Hasta 59 Con Paso 1 Hacer
						Escribir h,":",m,":",s;
						Esperar 1000 Milisegundos;
						Limpiar Pantalla;
						s<-s+1;
					FinPara
					m<-m+1;
					s<-0;
				FinPara
				h<-h+1;
				m<-0;
				s<-0;
			FinPara
			Escribir "El día termino";
			Esperar Tecla;
		9:
			Escribir "Se generan 20 calificaciones aleatorias";
			Escribir "Se obtiene la más alta, baja y promedio";
			Escribir "---------------------------------------";
			Definir identificador Como Entero;
			Definir alta, baja, promedio Como Entero;
			Definir calificacion Como Entero;
			alta<-0;
			baja<-10;
			promedio<-0;
			Escribir "Las calificaciones son";
			para identificador<-1 Hasta 20 con paso 1 Hacer
				calificacion<- azar(11);
				promedio<-promedio+calificacion;
				Escribir Sin Saltar calificacion, " ";
				si calificacion> alta Entonces
					alta<-calificacion;
				FinSi
				si calificacion<baja Entonces
					baja<-calificacion;
				FinSi
			FinPara
			Escribir " ";
			Escribir "La calificación más alta es: ", alta;
			Escribir "La calificación más baja es: ", baja;
			Escribir "El promedio es: ", promedio/20;
			Esperar Tecla;
		10:
			Escribir "Dada la siguiente secuencia de calificaciones";
			Escribir "01=9|02=5|03=9|04=8|05=8|06=5|07=9|08=5|09=9|10=5";
			Escribir "Se separará con su calve y calificación";
			Escribir "-------------------------------------------------";
			Definir  calif como cadena;
			Definir contador como entero;
			contador<-0;
			calif <- "01=9|02=5|03=9|04=8|05=8|06=5|07=9|08=5|09=9|10=5";
			Para  contador<-0 Hasta  Longitud(calif)  Hacer
				Si Subcadena(calif, contador, contador) = "|" Entonces
					Escribir "";
				SiNo
					Escribir Sin Saltar Subcadena(calif, contador, contador);
				FinSi
			FinPara
			Escribir " ";
			Esperar Tecla;
		11:
			Escribir "Se valida si el email ingresado es correcto";
			Escribir "_-----------------------------------------_";
			Definir correo como texto;
			Definir ar, pu, lon, c Como Entero;
			ar<-0;
			pu<-0;
			Escribir Sin Saltar "Ingresa tu correo gmail (tiene que ser gmail obligatoriamente): ";
			Leer correo;
			lon<-Longitud(correo);
			Para c<-0 Hasta Lon-1 Con Paso 1 Hacer
				Si Subcadena(correo,c,c)="@" Entonces
					ar<-ar+1;
					si Subcadena(correo,c+1,c+1)="." Entonces
						ar<-par+1;
					FinSi
				FinSi
				si Subcadena(correo,c,c)="." Entonces
					pu<-pu+1;
				FinSi
			FinPara
			Si ar=0 o ar>1 o pu=0 Entonces
				Escribir "Correo electronico incorrecto";
			SiNo
				Escribir "Correo electronico correcto";
			FinSi
	FinSegun
	Esperar Tecla
FinSubProceso
Proceso Menu_de_para
	Limpiar Pantalla;
	definir c Como Entero;
	Repetir 
		Limpiar Pantalla;
		escribir menu;
		c<-menu;
	Hasta Que c=12 
	Escribir "Nos vemos";
FinProceso