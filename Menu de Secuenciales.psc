SubProceso opcion <- menu 
	Definir opcion Como Entero;
	Escribir "Bienvenido a los programas";
	Escribir "________________________________________________";
	Escribir "[1] Cambio de divisa";
	Escribir "[2] Valor absoluto";
	Escribir "[3] Frecuencia cardiaca máxima";
	Escribir "[4] Incremento salarial";
	Escribir "[5] Doblar número y multiplicar por 25";
	Escribir "[6] Raíces de ecuación cuadrática";
	Escribir "[7] Presupuesto de hospital";
	Escribir "[8] Ganancia de artículo";
	Escribir "[9] Cálculo de hipotenusa";
	Escribir "[10] Índice de masa corporal";
	Escribir "[0] Salir";
	Escribir "________________________________________________";
	Escribir "";
	Escribir Sin Saltar "Elige tu programa a ejecutar";
	Leer opcion;
FinSubProceso

Proceso Menu_Secuenciales

	Definir opcion1 Como Entero;
	Repetir

		Limpiar Pantalla;
		opcion1<-menu ();
		
		Segun opcion1 Hacer
			1:
				Limpiar Pantalla;
				Escribir "Algoritmo divisas";
				definir pesos Como Real;
				definir mitad Como Real;
				definir dolar Como Real;
				definir euro Como Real;
				Escribir "Ingresa la cantidad de pesos";
				leer pesos;
				mitad<-pesos/2;
				dolar<-mitad/17.82;
				euro<-mitad/18.92;
				Escribir "Total de dólares que tienes: $$: ", dolar;
				Escribir "Total de Euros que tienes: $$$: ", euro;
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
			2:
				Limpiar Pantalla;
				Escribir "Algoritmo Valor absoluto";
				Definir number Como Real;
				Escribir "Ingresa número";
				Leer number;
				Si number>=0 Entonces
					Escribir "Valor absoluto ",number;
				SiNo
					Escribir "Valor absoluto ",(-1*number);
				FinSi	
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
			3:
				Limpiar Pantalla;
				Escribir "Algoritmo Frecuencia cardiaca";
				Definir latidos,edad como real;
				Escribir "INGRESA TU EDAD ";
				Leer edad;
				latidos<-220-edad;
				Escribir "TUS LATIDOS SON DE ",latidos , " LPM";
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
			4:
				Limpiar Pantalla;
				Escribir "Algoritmo Incremento salarial";
				Definir salario, incremento como real;
				Escribir "Ingresar salario actual";
				Leer Salario;
				Incremento <-Salario * 1.25;
				Escribir "El nuevo Salario es:$", Incremento; 
				Escribir "Vamos por unas cariñosas :3";
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
			5:
				Limpiar Pantalla;
				Escribir "Algoritmo Dobles y multiplicación de numeros";
				Definir dobles , multiplicador como real;
				Escribir "Ingrese el numero que desea procesar";
				leer dobles;
				multiplicador<- (Dobles*2)*25;
				Escribir "El resultado es: ", multiplicador;
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
			6:
				Limpiar Pantalla;
				Escribir "Algoritmo ecuación cuadratica";
				Escribir "Nota, su tercer valor debe ser negativo";
				Definir a,b,c Como real;
				Definir X1,X2 como real;
				Escribir "Ingresa valores a,b,c";
				Leer a,b,c;
				X1 <- (-b+raiz(b*b-4*a*c))/(2*a);
				X2 <- (-b-raiz(b*b-4*a*c))/(2*a);
				Escribir "X1=",X1;
				Escribir "X2=",X2;
				Escribir "Felicidades has obtenido un dato que jamas usarás en tu vida"; 
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;

			7:
				Limpiar Pantalla;
				Escribir "Algoritmo presupuesto hospital";
				Definir Presupuesto, Ginecologia, Pediatria, Traumatologia como real;
				Escribir "Ingresar Presupuesto";
				Leer Presupuesto;
				Ginecologia <- Presupuesto*0.40;
				Traumatologia <- Presupuesto*0.30;
				Pediatria <- Presupuesto*0.30;
				Escribir "presupuesto correspondiente a gine:",Ginecologia, "pesos";
				Escribir "presupuesto correspondiente a trauma:",Traumatologia,"pesos";
				Escribir "presupuesto correspondiente a pediatria:", Pediatria, "pesos";
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
			8:
				Limpiar Pantalla;
				Escribir "Algoritmo ganancia de articulo";
				definir precio,costo, costo_consumidor Como Real;
				escribir "Ingresa el precio de tu articulo al que se le inrementará el 30%";
				Leer precio;
				costo<-precio*0.30;
				costo_consumidor<-costo+precio;
				Escribir "EL PRECIODEL ARTICULO DE PROVEDOR ES DE: $",precio;
				Escribir "LA GANANCIA DEL PRODUCTO ES DE: $", costo;
				Escribir "EL PRECIO DEL PRODUCTO PARA CONSUMIDOR ES DE: $",costo_consumidor;
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
			9:
				Limpiar Pantalla;
				Escribir "Algoritmo Hipotenusa";
				Definir catetoa,catetob,hipotenusa como real;	
				Escribir "Ingresar cateto a";
				leer catetoa;
				Escribir "Ingresar cateto b";
				leer catetob;
				hipotenusa <- ((catetoa^2)+(catetob^2))^0.5;
				Escribir "La hipotenusa es ",hipotenusa;
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
			10:
				Limpiar Pantalla;
				Escribir "Algoritmo indice de masa corporal";
				Definir imc,masa,altura Como Real;
				Escribir "Ingresa masa en kilogramos";
				Leer masa;
				Escribir "Ingresa altura en metros";
				leer altura;
				imc<-masa/altura^2;
				Escribir "El índice de masa corporal es igual a: ",imc,"kg/m2";
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
		FinSegun
		Esperar 1 Segundos;
	Hasta Que opcion1=0
	Limpiar Pantalla;
	Escribir "Hasta la proxima men, descasa :3";
FinProceso

