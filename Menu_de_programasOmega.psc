SubProceso opcion<-menu 
	Definir opcion Como Entero;
	Escribir "----------------------------------------------------";
	Escribir "[1] N veces -Hellow world-";
	Escribir "[2] La parranda 2";
	Escribir "[3] La parranda";
	Escribir "[4] Tortillas horneadas";
	Escribir "[5] Extraescolares";
	Escribir "[6] Las sumas reducidas";
	Escribir "[7] Selfies";
	Escribir "[8] Creciente, decreciente o nulo";
	Escribir "[9] Velovidad m�xima";
	Escribir "[10] N�mero palindromo";
	Escribir "[11] Menor Mayor";
	Escribir "[13] Salir, debe ingresar 2 veces el numero";
	Escribir "---------------------------------------------------";
	Escribir "�Cu�l opci�n requiere?";
	Leer opcion;
	Limpiar Pantalla;
	Segun opcion Hacer
		1:
			Escribir "Repite el saludo al mundo N veces";
			Escribir "---------------------------------";
			Definir Nu,m,xx como entero;
			Escribir "Ingresa un numero";
			leer Nu;
			si Nu>= 1 Y Nu<1000 Entonces
				Para m<- 1 Hasta Nu Con Paso 1 Hacer
					Escribir sin saltar m, ".- ";
					Para  xx <- 1 Hasta m Con Paso 1 Hacer 
						Escribir sin saltar xx,  " Hello world "  ;
						
					FinPara
					Escribir " ";
				FinPara
			FinSi
			Esperar Tecla;
		2:
			Escribir "Si los tragos es un n�mero impar, ellos no beber�n";
			Escribir "--------------------------------------------------";
			Definir tragos Como Entero;
			Escribir "Escribe el n�mero de tragos que tienes";
			Leer tragos;
			si tragos mod 2 = 0 Entonces 
				Escribir "Ellos beber�n ", tragos/2, " ya que son ", tragos, " tragos";
			SiNo
				Escribir "El n�mero de tragos es impar, por lo tanto no beber�n";
			FinSi
			Esperar Tecla;
		3:
			Escribir "Se espera un n�mero par de tragos para decir";
			Escribir "Cuanto beber� cada uno de los dos amigos";
			Escribir "--------------------------------------------"; 
			Definir tragos Como Entero;
			Repetir
				Escribir "Ingresa el n�mero de tragos (el n�mero tiene que ser par)";
				Leer tragos;
			Hasta Que tragos mod 2 = 0;
			Escribir "Ellos beber�n ", tragos/2;
			Esperar Tecla;
		4:
			Escribir "Se da a conocer cuantos gramos de ma�z";
			Escribir "Se necesitan para las tortillas";
			Escribir "--------------------------------------";
			definir a,b,c,d,ac,bd, suma Como Entero;
			c<-5;
			d<-3;
			escribir " ingresa el valor de a";
			leer a;
			Escribir "Ingresa el valor de b";
			leer b;
			ac<-a+c;
			bd<-b+d;
			suma<-ac*bd;
			escribir " Se necesitar�n ",suma," gramos de ma�z para hacer su tortilla";
			Esperar Tecla;
		5:
			Escribir "Se dice si un alumno cumpli� o no con sus horas";
			Escribir "-----------------------------------------------";
			Definir horas Como Entero;
			Escribir "Agrega las horas que tienes";
			Leer horas;
			Si horas = 480 Entonces
				Escribir "Cumpli� al 100% sus creditos";
			SiNo
				Escribir "Debes, ",480-h, " horas";
			FinSi
			Esperar Tecla;
		6:
			Escribir "El usuario dar� a conocer cuantos articulos compro";
			Escribir "As� mismo dir� el precio de estos articulos";
			Escribir "Y se le dar� un descuento dado la suma reducida";
			Escribir "-----------------------------------------------";
			Definir cantidadArticulos, i, precio, precios Como Entero;
			Dimension precios(100000);
			Definir descuentoTotal, sumaReducida Como Real;
			Escribir "Ingrese la cantidad de art�culos:";
			Leer cantidadArticulos;
			descuentoTotal <- 0;
			Para i <- 1 Hasta cantidadArticulos Hacer
				Escribir "Ingrese el precio del art�culo ", i, ":";
				Leer precios[i];
				Si precios[i] < 10 Entonces
					sumaReducida <- precios[i] - 1;
				Sino
					sumaReducida <- 1;
					Mientras precios[i] > 0 Hacer
						sumaReducida <- sumaReducida * (precios[i] % 10);
						precios[i] <- trunc (precios[i] / 10);
					Fin Mientras
				Fin Si
				descuentoTotal <- descuentoTotal + sumaReducida;
			Fin Para
			Escribir "El descuento total es: ", descuentoTotal;
			Esperar Tecla;
		7:
			Escribir "Se dar� a conocer el valor de la altura de un triangulo dado";
			Escribir "------------------------------------------------------------";
			definir lado1,lado2,lado3,s,h,area Como Real;
			Escribir "Ingresa las longitudes de los lados ";
			leer lado1,lado2,lado3;
			si (lado1+lado2)>lado3 y (lado2+lado3)>lado1 y (lado1+lado3)>lado2 o (lado1=lado2 y lado2=lado3) y lado1>0 y lado2>0 y lado3>0 Entonces
				s<-(lado1+lado2+lado3)/2;
				area<-raiz(s*(s-lado1)*(s-lado2)*(s-lado3));
				h<-(2 * area)/lado1;
				Escribir "Su mejor altura es: ",h;
			SiNo
				Escribir "ERROR";
			FinSi
			Esperar Tecla;
		8:
			Escribir "Se dice si los n�meros ingresados van";
			Escribir "De forma creciente, decreciente o no hay orden";
			Escribir "----------------------------------------------";
			Definir numero1, numero2, numero3 Como Entero;
			Escribir "Ingresa los 3 n�meros";
			Leer numero1, numero2, numero3;
			Si numero1 > numero2 y numero2 > numero3 Entonces
				Escribir "Decreciente";
			SiNo
				si numero1<numero2 y numero2<numero3 Entonces
					Escribir "Creciente";
				SiNo
					Escribir "Sin orden";
				FinSi
			FinSi
			Esperar Tecla;
		9:
			Escribir "Se da un numero de distancias y el tiempo que se hizo en estas";
			Escribir "Para despu�s de ah� obtener la velocidad maxima registrada";
			Escribir "--------------------------------------------------------------";
			Definir vel, kil, hor, num, i, velmax Como Entero;
			Escribir "Ingresa cuantas comparaciones tendr�s";
			Leer num;
			velmax<-0;
			Para i<-1 Hasta num Hacer
				Escribir "Ingresa los kilometros";
				Leer kil;
				Escribir "Ingresa las horas";
				Leer hor;
				vel<-kil/hor;
				Si vel>velmax Entonces
					velmax<-vel;
				FinSi
			FinPara
			Escribir "La velocidad m�s entre esos valores es, ", velmax, "km/h";
			Esperar Tecla;
		10:
			Escribir "Del n�mero ingresado se dice si es un palindromo";
			Escribir "(Se le igual tanto al derecho como al reves";
			Escribir "O NO";
			Escribir "------------------------------------------------";
			Definir num, numInvertido, digito, numeroOriginal Como Entero;
			Escribir "Ingrese un n�mero: ";
			Leer num;
			numeroOriginal <- num;
			numInvertido <- 0;
			Mientras num > 0 Hacer
				digito <- num mod 10; 
				numInvertido <- numInvertido * 10 + digito;
				num <-trunc (num/10);
			Fin Mientras
			Si numeroOriginal = numInvertido Entonces
				Escribir "Verdadero";
			Sino
				Escribir "Falso";
			Fin Si	
			Esperar Tecla;
		11:
			Escribir "Se pedir� cuantos n�meros se ingresar�n";
			Escribir "Se dar� a conocer el valor mas bajo y m�s alto";
			Escribir "----------------------------------------------";
			Definir i, numa, cantinum, menor, mayor Como Entero;
			Escribir "Ingresa cuantos numeros ingresar�s";
			Leer cantinum;
			menor<-0;
			mayor<-0;
			Escribir Sin Saltar "Ingresa la calificaci�n";
			Para i<-1 Hasta  cantinum Hacer
				Leer numa;
				si numa < menor Entonces
					menor<-numa;
				SiNo
					mayor<-numa;
				FinSi
			FinPara
			Escribir "El n�mero m�s alto es ", mayor;
			Escribir "El n�mero m�s bajo es ", menor;
			Esperar Tecla;
	FinSegun
FinSubProceso
Proceso Menu_de_programasOmega
	Limpiar Pantalla;
	definir c Como Entero;
	Repetir 
		Limpiar Pantalla;
		escribir menu;
		c<-menu;
	Hasta Que c=13 
	Escribir "Nos vemos";
FinProceso