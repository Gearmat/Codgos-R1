SubProceso opcion<-menu 
	Definir opcion Como Entero;
	Escribir "----------------------------------------------------";
	Escribir "[1] Mensaje encriptado";
	Escribir "[2] N veces -Hellow world-";
	Escribir "[3] La parranda 2";
	Escribir "[4] La parranda";
	Escribir "[5] Tortillas horneadas";
	Escribir "[6] Extraescolares";
	Escribir "[7] Las sumas reducidas";
	Escribir "[8] Selfies";
	Escribir "[9] Creciente, decreciente o nulo";
	Escribir "[10] Velovidad máxima";
	Escribir "[11] Número palindromo";
	Escribir "[12] Menor Mayor";
	Escribir "[13] Conectados galacticamente";
	Escribir "[14] Formulota";
	Escribir "[15] Ayudando a la ciencia";
	Escribir "[16] Salir";
	Escribir "---------------------------------------------------";
	Escribir "¿Cuál opción requiere?";
	Leer opcion;
	Limpiar Pantalla;
	Segun opcion Hacer
		1:
			Definir palabra1, palabra2, mensajeEncriptado Como Caracter;
			Definir longitudPalabras, i Como Entero;
			Escribir "Ingrese la primera palabra: ";
			Leer palabra1;
			Escribir "Ingrese la segunda palabra: ";
			Leer palabra2;
			Si Longitud(palabra1) <> Longitud(palabra2) Entonces
				Escribir "Error: Las palabras deben tener la misma longitud.";
			Sino
				mensajeEncriptado <- "";
				longitudPalabras <- Longitud(palabra1);
				Para i <- 0 Hasta longitudPalabras Hacer
					mensajeEncriptado <- Concatenar(mensajeEncriptado, SubCadena(palabra1, i, i));
					mensajeEncriptado<- Concatenar(mensajeEncriptado, SubCadena(palabra2, i, i));
				FinPara
				Escribir "Mensaje Encriptado: ", mensajeEncriptado;
			FinSi
			Esperar Tecla;
		2:
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
		3:
			Escribir "Si los tragos es un número impar, ellos no beberán";
			Escribir "--------------------------------------------------";
			Definir tragos Como Entero;
			Escribir "Escribe el número de tragos que tienes";
			Leer tragos;
			si tragos mod 2 = 0 Entonces 
				Escribir "Ellos beberán ", tragos/2, " ya que son ", tragos, " tragos";
			SiNo
				Escribir "El número de tragos es impar, por lo tanto no beberán";
			FinSi
			Esperar Tecla;
		4:
			Escribir "Se espera un número par de tragos para decir";
			Escribir "Cuanto beberá cada uno de los dos amigos";
			Escribir "--------------------------------------------"; 
			Definir tragos Como Entero;
			Repetir
				Escribir "Ingresa el número de tragos (el número tiene que ser par)";
				Leer tragos;
			Hasta Que tragos mod 2 = 0;
			Escribir "Ellos beberán ", tragos/2;
			Esperar Tecla;
		5:
			Escribir "Se da a conocer cuantos gramos de maíz";
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
			escribir " Se necesitarán ",suma," gramos de maíz para hacer su tortilla";
			Esperar Tecla;
		6:
			Escribir "Se dice si un alumno cumplió o no con sus horas";
			Escribir "-----------------------------------------------";
			Definir horas Como Entero;
			Escribir "Agrega las horas que tienes";
			Leer horas;
			Si horas = 480 Entonces
				Escribir "Cumplió al 100% sus creditos";
			SiNo
				Escribir "Debes, ",480-h, " horas";
			FinSi
			Esperar Tecla;
		7:
			Escribir "El usuario dará a conocer cuantos articulos compro";
			Escribir "Así mismo dirá el precio de estos articulos";
			Escribir "Y se le dará un descuento dado la suma reducida";
			Escribir "-----------------------------------------------";
			Definir cantidadArticulos, i, precio, precios Como Entero;
			Dimension precios(100000);
			Definir descuentoTotal, sumaReducida Como Real;
			Escribir "Ingrese la cantidad de artículos:";
			Leer cantidadArticulos;
			descuentoTotal <- 0;
			Para i <- 1 Hasta cantidadArticulos Hacer
				Escribir "Ingrese el precio del artículo ", i, ":";
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
		8:
			Escribir "Se dará a conocer el valor de la altura de un triangulo dado";
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
		9:
			Escribir "Se dice si los números ingresados van";
			Escribir "De forma creciente, decreciente o no hay orden";
			Escribir "----------------------------------------------";
			Definir numero1, numero2, numero3 Como Entero;
			Escribir "Ingresa los 3 números";
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
		10:
			Escribir "Se da un numero de distancias y el tiempo que se hizo en estas";
			Escribir "Para después de ahí obtener la velocidad maxima registrada";
			Escribir "--------------------------------------------------------------";
			Definir vel, kil, hor, num, i, velmax Como Entero;
			Escribir "Ingresa cuantas comparaciones tendrás";
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
			Escribir "La velocidad más entre esos valores es, ", velmax, "km/h";
			Esperar Tecla;
		11:
			Escribir "Del número ingresado se dice si es un palindromo";
			Escribir "(Se le igual tanto al derecho como al reves";
			Escribir "O NO";
			Escribir "------------------------------------------------";
			Definir num, numInvertido, digito, numeroOriginal Como Entero;
			Escribir "Ingrese un número: ";
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
		12:
			Escribir "Se pedirá cuantos números se ingresarán";
			Escribir "Se dará a conocer el valor mas bajo y más alto";
			Escribir "----------------------------------------------";
			Definir i, numa, cantinum, menor, mayor Como Entero;
			Escribir "Ingresa cuantos numeros ingresarás";
			Leer cantinum;
			menor<-0;
			mayor<-0;
			Escribir Sin Saltar "Ingresa la calificación";
			Para i<-1 Hasta  cantinum Hacer
				Leer numa;
				si numa < menor Entonces
					menor<-numa;
				SiNo
					mayor<-numa;
				FinSi
			FinPara
			Escribir "El número más alto es ", mayor;
			Escribir "El número más bajo es ", menor;
			Esperar Tecla;
		13:
			Definir num, suma, digito, num2, suma2, digito2 Como Entero;
			Escribir "Ingrese el primer número:";
			Leer num;
			Escribir "Ingresa el segundo número:";
			Leer num2;
			suma <- 0;
			suma2<-0;
			Mientras num > 0 Hacer
				digito <- num mod 10;
				suma <- suma + digito;
				num <- trunc (num/10);
			Fin Mientras
			Mientras num2 > 0 Hacer
				digito2 <- num2 mod 10;
				suma2 <- suma2 + digito2;
				num2 <- trunc (num2/10);
			FinMientras
			Escribir "La suma de los dígitos del primer número es: ", suma; 
			Escribir "La suma de los digitos del segundo número es: ", suma2;
			Si (suma-suma2<=15 y suma-suma2>=1) o (suma2-suma<=15 y suma2-suma>=1) Entonces
				Escribir "Están conectados galacticamente";
			SiNo
				Escribir "Ni se topan";
	        FinSi
			Esperar Tecla;
		14:
			Definir x, z, c Como Entero; 
			Definir xc, yc, zc, dx, dxy, f Como Real; 
			Escribir "Ingrese los valores de las 3 variables";
			Escribir "Ingresa el valor de X ";
			Leer x;
			Escribir "Ingresa el valor de Y ";
			Leer c;
			Escribir "Ingresa el valor de Z ";
			Leer z;
			xc<-x*x; 
			yc<-c*c; 
			zc<-z*z; 
			dx<-(x+c)/(2*x); 
			dxy<-((x*x*x)+(c*c*c))/((x*x)+(c*c));
			f<-(dx+dxy)/(xc+yc+zc); 
			Escribir " ";
			Escribir "La función de f(", x, ",", c, ",",z,")";
			Escribir "Es: ", f;
			Esperar Tecla;
		15:
			Definir g, gf, gk, f Como Real;
			Escribir "Agrega los grados de temperatura que tienes";
			Leer g;
			gf<- (g*(9/5))+32;
			gk<- g+273.15;
			f<- 5*(1.5*((gf/2)+(gk/4)));
			Escribir "La conversión de grados Celsius a Farenheit es:"; 
			Escribir gf, "°";
			Escribir "La conversión de grados Celsius a Kelvin es:";
			Escribir gk, "°";
			Escribir "El resultado de la operación matematica";
			Escribir f, "°";
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
	Hasta Que c=16 
	Escribir "Nos vemos";
FinProceso