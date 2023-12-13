SubProceso opcion<-menu 
	Definir opcion Como Entero;
	Escribir "----------------------------------------------------";
	Escribir "Condicionales simples del 1-6";
	Escribir "----------------------------------------------------";
	Escribir "Condiconales dobles, del 7 al 14";
	Escribir "----------------------------------------------------";
	Escribir "Condiconales multiples del 15 al 19, 20 para salir";
	Escribir "----------------------------------------------------";
	Escribir "[1] Valor absoluto";
	Escribir "[2] Venta de llantas";
	Escribir "[3] Super Market";
	Escribir "[4] Ecuación Cuadratica";
	Escribir "[5] Pago de colegiatura";
	Escribir "[6] Compra de casa";
	Escribir "[7] Aprobado o reprobado";
	Escribir "[8] Precio producto de almacen";
	Escribir "[9] Salario semanal con horas extras";
	Escribir "[10] Inicia con vocal o consonante";
	Escribir "[11] Descuento por clave";
	Escribir "[12] Compra de camisas";
	Escribir "[13] Refacciones";
	Escribir "[14] Inicia con mayuscula o minuscula";
	Escribir "[15] Sueldo de trabajador";
	Escribir "[16] Hospital en crisis";
	Escribir "[17] Descripción de día de la semana";
	Escribir "[18] Descripción del mes";
	Escribir "[19] Números romanos";
	Escribir "[20] Salir";
	Escribir "---------------------------------------------------";
	Escribir "¿Cuál opción requiere?";
	Leer opcion;
	Limpiar Pantalla;
	Segun opcion Hacer
		1:
			Escribir "Da el valor absoluto de un número";
			Escribir "---------------------------------";
			Definir num Como Real;
			Escribir "Ingresa el número";
			Leer num;
			Si num > 0 Entonces
				Escribir "Su valor absoluto es: ", num;
			SiNo
				Escribir "Su valor absoluto es: ", -1*num;
			FinSi
			Esperar Tecla;
		2:
			Escribir "Da o no un descuento dependiendo de las llantas compradas";
			Escribir "---------------------------------------------------------";
			Definir llantas Como Entero;
			Escribir "Ingresa el número de llantas que desea comprar";
			Leer llantas;
			Si llantas >= 1 y llantas <= 50 Entonces
				Si llantas >= 1 y llantas <= 5 Entonces
					Escribir "El número de llantas que desea comprar es: ", llantas;
					Escribir "El precio a pagar es: $", llantas*800;
				SiNo
					Escribir "El número total de llantas es: ", llantas;
					Escribir "El precio a pagar es: $", llantas*700;
				FinSi
			SiNo
				Escribir "Valor de llantas no valido";
			FinSi
			Esperar Tecla;
		3:
			Escribir "De un monto se da un número al azar que tendrá descuento";
			Escribir "--------------------------------------------------------";
			Definir num como entero;
			Definir monto como real;
			num<- azar(100);
			Escribir "Ingrese el monto de compra ";
			leer monto;
			si monto >0 Entonces
				Escribir "El numero generado al azar es ",num;
				si num<74 Entonces
					Escribir "El monto a pagar por 15% de descuento es $",monto-(monto*.15);
				SiNo
					Escribir "El monto a pagar por 20% de descuento es $",monto-(monto*.20);
				FinSi
			FinSi
			Esperar Tecla;
		4:
			Escribir "Se juega con la ecuación general, ";
			Escribir "Para lo cual si la raíz es negativa no se hace nada";
			Escribir "Así también si la divisón es entre 0";
			Escribir "----------------------------------------------------";
			Definir a, b, c, d Como Real;
			Escribir "Ingresa los valor de tu ecuación cuadratica";
			Escribir "Valor de a";
			Leer a;
			Escribir "Valor de b";
			Leer b;
			Escribir "Valor de c";
			Leer c;
			Si a = 0 Entonces
				Escribir "Divisón entre cero";
			SiNo
				d<- (b^2-4*a*c);
				Si d>=0 Entonces
					Escribir "Los resultados de tu ecuación cuadratica son:";
					Escribir "X1: ", (-b-raiz(d))/(2*a);
					Escribir "X2: ", (-b+raiz(d))/(2*a);
				SiNo
					Escribir "Raíz cuadrada negativa";
				FinSi
			FinSi
			Esperar Tecla;
		5:
			Escribir "Se definirá cuanto pagarán dependiendo del";
			Escribir "promedio del alumno";
			Escribir "------------------------------------------";
			Definir prom Como Real;
			Definir monto,porce Como real;
			Escribir "Ingrese el promedio del alumno";
			Leer prom;
			Escribir "Ingrese el monto de la colegiatura";
			Leer monto;
			porce<-monto;
			si prom<=0 o prom>10 Entonces
				Escribir "El promedio no está entre 0 y 10 ";
			SiNo
				si prom>=9 y prom<=10 Entonces
					monto<-monto*0.30;
				SiNo
					si prom<9 Entonces
						monto<-monto*0.10;
					FinSi
				FinSi
				Escribir "Descuento por 30% es de: ",monto;
				Escribir "El monto total a pagar es de: ",porce-monto;	
			finsi
			Esperar Tecla;
		6:
			Escribir "Dado el salario de una persona, se dice ";
			Escribir "Si puede o no comprar una casa";
			Escribir "-----------------------------------------";
			Definir salario,costo Como Real;
			Escribir Sin Saltar "Ingresa tu salario mensual";
			leer salario;
			Escribir Sin Saltar "Ingresa costo de la casa";
			Leer costo;
			
			si salario>=8000 Entonces
				Escribir "El enganche es de $",costo*.15;
				costo<-costo*.85;
				Escribir "Los pagos a realizar son de $",costo/60," mensuales a 5 años";
			SiNo
				si salario>=4000 Entonces
					Escribir"El enganche es de $",costo*.25;
					costo<-costo*.75;
					Escribir "Los pagos a realizar son de $",costo/120," mensuales a 10 años";
				SiNo
					Escribir "El ingreso no es suficiente para adquirir una casa";
				FinSi
			FinSi
	
			Esperar Tecla;
		7:
			Escribir "Se darán las calificaciones de cada unidad";
			Escribir "Si tiene arriba de 6 estará aprobado";
			Escribir "------------------------------------------";
			Definir unidad1,unidad2,unidad3, promuni como real;
			Escribir Sin Saltar"Ingrese la calificación de la Unidad 1 ";
			Leer unidad1;
			Escribir Sin Saltar "Ingrese la calificación de la Unidad 2 ";
			Leer unidad2;
			Escribir Sin Saltar"Ingrese la calificación de la Unidad 3 ";
			Leer unidad3;
			promuni<-(unidad1+unidad2+unidad3)/3;
			Si (unidad1>=0 y unidad2>=0 y unidad3>=0) y (unidad1<=10 y unidad2<=10 y unidad3<=10) Entonces
				si promuni>=6 Entonces
					Escribir "Has aprobado ",(unidad1+unidad2+unidad3)/3;
				SiNo
					Escribir "Haz reprobado ",(unidad1+unidad2+unidad3)/3;
				FinSi
			SiNo
				Escribir "El dato es inválido";
			FinSi
			Esperar Tecla;
		8:
			Escribir "Se dará un descuento dependiendo de cuanto compró";
			Escribir "-------------------------------------------------";
			Definir monto Como Real;
			Escribir Sin Saltar "Ingresa el monto de compra $";
			leer monto;
			si monto>0 Entonces
				si monto>1000 Entonces
					Escribir "FELICIDADES!!!, con descuento del 20% su total a pagar es de $",monto*.80;
				SiNo
					Escribir "No hay descuento!!!";
					Escribir "Total a pagar es $",monto;
				FinSi
			SiNo
				Escribir "El monto de compra $",monto," es inválido";
			FinSi
			Esperar Tecla;
		9:
			Escribir "Dadas las horas extras se le dará un pago extra";
			Escribir "-----------------------------------------------";
			Definir horas,pago,pago2,extras Como Real;
			Escribir "Ingrese cuantas horas trabajo";
			Leer horas;
			
			si horas<=40 Entonces
				Escribir "No hubo horas extra";
				pago<-horas*16;
				Escribir "El total a pagar  es: ",pago;
			SiNo
				si horas>40 Entonces
					extras<-horas-40;
					pago2<-extras*32;
					pago<-40*16;
					Escribir "Se trabajaron: ",horas;
					Escribir "Por ",extras, " extras el pago: ",pago2;
					Escribir "Mas pago de 40 horas: ",pago;
					Escribir "El total a pagar  es: ",pago+pago2;
				finsi
			finsi
			Esperar Tecla;
		10:
			Escribir "Da a conocer si un nombre empieza por vocal o consonante";
			Escribir "--------------------------------------------------------";
			Definir nombre como cadena;
			Escribir Sin Saltar "Ingresar nombre";
			Leer nombre;
			
			si Longitud(nombre)>=3 y Longitud(nombre)<=30 Entonces
				nombre<-minusculas(nombre);
				si Subcadena(nombre,0,0)= "a" o Subcadena(nombre,0,0)= "e" o Subcadena(nombre,0,0)= "i" o Subcadena(nombre,0,0)= "o" o Subcadena(nombre,0,0)= "u" Entonces
					Escribir "El nombre ***",nombre,"*** inicia con vocal";
				SiNo
					Escribir "El nombre ***",nombre,"*** inicia con consonante";
					
				FinSi
			SiNo
				Escribir "La longitud del nombre ",nombre," no es la correcta";
			FinSi
			Esperar Tecla;
		11:
			Escribir "Se pide la clave del producto para dar un descuento";
			Escribir "Clave 1: 9%, Clave 2: 8%, Clave 3: 7%";
			Escribir "---------------------------------------------------";
			Definir clave, precio Como Real;
			Definir nomb  Como Caracter;
			Escribir "Ingresa el nombre del producto";
			Leer nomb;
			Escribir "Ingresa la clave del producto";
			Leer clave;
			Escribir "Ingresa el precio del producto";
			Leer precio;
			Si clave=1 Entonces
				Escribir "El precio con descuento del producto ", nomb, " es $", precio*0.9;
			SiNo
				si clave=2 entonces
					Escribir "El precio con descuento del producto ", nomb, " es $", precio*0.8;
				SiNo
					Si clave=3 Entonces
						Escribir "El precio con descuento del producto ", nomb, " es $", precio*0.7;
					SiNo
						Escribir "Clave no valida, el valor se mantiene";
						Escribir "Valor del producto ", nomb, " es $", precio;
					FinSi
				FinSi
			FinSi
			Esperar Tecla;
		12:
			Escribir "Promoción de tiendas en las camisas";
			Escribir "-----------------------------------";
			Definir cam,pre,descuento Como Entero;
			Escribir "Ingrese cuantas camisas desea comprar";
			Leer cam;
			Escribir "Precio de la camisa";
			Leer pre;
			si cam=0 Entonces
				Escribir "Se ingreso un dato inválido";
			sino
				si cam>=3 Entonces
					descuento<-pre*cam*0.20;
					Escribir "Por la compra de ", cam, " camisas: ";
					Escribir "Descuento por  compra: ",descuento;
					Escribir "Total a pagar es de: ", pre*cam-descuento;
				SiNo
					si cam<3 Entonces
						descuento<-pre*cam*0.10;
						Escribir "Por la compra de ", cam, " camisas: ";
						Escribir "Descuento por  compra: ",descuento;
						Escribir "Total a pagar es de: ", pre*cam-descuento;
						
					FinSi
				FinSi
			finsi
			Esperar Tecla;
		13:
			Escribir "Dependiendo de la compra se da un credito";
			Escribir "-----------------------------------------";
			Definir piezas Como Entero;
			Definir costo,monto,credito Como Real;
			Escribir Sin Saltar"Costo de la pieza $";
			Leer costo;
			Escribir Sin Saltar "Numero de piezas a comprar ";
			leer piezas;
			monto<-costo*piezas;
			Si monto>500000 Entonces
				Escribir "Total de la compra: ",monto;
				Escribir "Cantidad Invertida: ",monto*.55;
				Escribir "Prestamo: ",monto*.30;
				credito<-monto*.15;
				Escribir "Credito: ",credito;
				Escribir "Interes: ",credito*.20;
			SiNo
				Escribir "Total de la compra: ",monto;
				Escribir "Cantidad Invertida: ",monto*.70;
				Escribir "Prestamo: 0";
				credito<-monto*.30;
				Escribir "Credito: ",credito;
				Escribir "Interes: ",credito*.20;
			FinSi
			Esperar Tecla;
		14:
			Escribir "Se dice si el texto inicia con minuscula o mayuscula";
			Escribir "----------------------------------------------------";
			definir nombre, nombremin,letra Como cadena;
			Escribir Sin Saltar "Ingresa un texto ";
			leer nombre;
			letra<-Subcadena(nombre,0,0);
			nombremin<-Minusculas(letra);
			Si letra=nombremin Entonces
				Escribir "El texto inicia con una minuscula";
			SiNo
				Escribir "El texto inicia con una mayuscula";
			FinSi
			Escribir "Texto: ",nombre;
			Esperar Tecla;
		15:
			Escribir "Se estima el incremento de sueldo dado los hijos y el tipo de trabajador";
			Escribir "Tipo 1: 10%, Tipo 2: 15%, Tipo 3: 20%, Tipo 4: 30%";
			Escribir "Más un 5% por cada hijo que tenga";
			Escribir "------------------------------------------------------------------------";
			definir sueldo Como Real;
			definir tipo, hijos Como Entero;
			Escribir Sin Saltar "Ingresa tu sueldo";
			Leer sueldo;
			Escribir Sin Saltar "Ingresa tu tipo de trabajador";
			Leer tipo;
			Escribir Sin Saltar "Ingresa tu número de hijos";
			Leer hijos;
			Segun tipo Hacer
				1:
					Escribir "Tu incremento es del 10%, por lo tanto tu sueldo es: $", sueldo*1.1+((sueldo*0.05)*hijos);
				2:
					Escribir "Tu incremento es del 15%, por lo tanto tu sueldo es: $", sueldo*1.15+((sueldo*0.05)*hijos);
				3:
					Escribir "Tu incremento es del 20%, por lo tanto tu sueldo es: $", sueldo*1.2+((sueldo*0.05)*hijos);
				4:  
					Escribir "Tu incremento es del 30%, por lo tanto tu sueldo es: $", sueldo*1.3+((sueldo*0.05)*hijos);
				De Otro Modo:
					Escribir "Tipo de trabajador no valido";
			FinSegun
			Esperar Tecla;
		16:
			Escribir "Un hospital quiere saber cuanto cobrará a un paciente";
			Escribir "Esto lo determina el tipo de enfermedad y los días";
			Escribir "Tipo 1: 1500 por día";
			Escribir "Tipo 2: 1700 por día";
			Escribir "Tipo 3: 1900 por día";
			Escribir "-----------------------------------------------------";
			Definir t,d Como Entero;
			Definir n Como Caracter;
			Escribir "Ingrese su nombre: ";
			Leer n;
			Escribir "Ingrese el tipo de enfermedad";
			Leer t;
			Escribir "Ingrese el numero de dias";
			Leer d;
			Segun t hacer
				1:
					Escribir "Nombre del paciente: ",n;
					Escribir "Dias hospitalizado: ",d;
					Escribir "Tipo de enfermedad: ",t;
					Escribir "Costo total a pagar $ ",d*1500;
				2:
					Escribir "Nombre del paciente: ",n;
					Escribir "Dias hospitalizado: ",d;
					Escribir "Tipo de enfermedad: ",t;
					Escribir "Costo total a pagar $ ",d*1700;
				3:
					Escribir "Nombre del paciente: ",n;
					Escribir "Dias hospitalizado: ",d;
					Escribir "Tipo de enfermedad: ",t;
					Escribir "Costo total a pagar $ ",d*1900;
				De Otro Modo:
					Escribir "Dato inválido";
			FinSegun
			Esperar Tecla;
		17:
			Escribir "Arroja una descripción para el día de semana que desees";
			Escribir "-------------------------------------------------------";
			Definir dia Como Entero;
			Escribir Sin Saltar "Ingresa el número del día [1 al 7]";
			Leer dia;
			Segun dia Hacer
				1:
					Escribir "DOMINGO DIA FELIZ Y DEL SOL";
				2:
					Escribir "LUNES DIA DE LA LUNA";
				3:
					Escribir "MARTES DIA DE MARTE";
				4:
					Escribir "MIERCOLES DIA DE MERCURIO";
				5:
					Escribir "JUEVES DIA DE JUPITER";
				6:
					Escribir "VIERNES DIA DE VENUS";
				7:
					Escribir "SABADO DIA DE SATURNO";
				De Otro Modo:
					Escribir "Día inválido";
			FinSegun
			Esperar Tecla;
		18:
			Escribir "Descripción al mes que desee";
			Escribir "----------------------------";
			Definir m Como Entero;
			Escribir "Pon el número del mes que deseas saber";
			Leer m;
			Segun m Hacer
				1:
					Escribir "Enero es el primer mes del año en el calendario gregoriano y tiene 31 días.";
				2:
					Escribir "Febrero es el segundo mes del año en el calendario gregoriano. Tiene 28 días y 29 en los años bisiestos.";
				3:
					Escribir "Marzo es el tercer mes del año en el calendario gregoriano y tiene 31 días.";
				4:
					Escribir "Abril es el cuarto mes del año y es uno de los cuatro meses que tienen 30 días.";
				5:
					Escribir "Mayo es el quinto mes del año en el calendario gregoriano y tiene 31 días.";
				6:
					Escribir "Junio es el sexto mes del año en el Calendario Gregoriano y tiene 30 días.";
				7:
					Escribir "Julio es el séptimo mes del año en el calendario gregoriano y tiene 31 días.";
				8:
					Escribir "Agosto es el octavo mes del año en el calendario gregoriano y tiene 31 días.";
				9:
					Escribir "Septiembre es el noveno mes del año en el calendario gregoriano y tiene 30 días.";
				10:
					Escribir "Octubre es el décimo mes del año en el calendario gregoriano y tiene 31 días.";
				11:
					Escribir "Noviembre es el undécimo y penúltimo mes del año en el calendario gregoriano y tiene 30 días.";
				12:
					Escribir "Diciembre es el duodécimo y último mes del año en el calendario gregoriano y tiene 31 días.";
				De Otro Modo:
					Escribir "Valor no valido";
	FinSegun
			Esperar Tecla;
		19:
			Escribir "Convierte de decimal a romano";
			Escribir "-----------------------------";
			Definir  u, d, c, xx  Como Entero;
			Escribir "Escribe un número";
			Leer xx;
			c<- trunc(xx/100) mod 10;
			d<- trunc(xx/10) mod 10;
			u<- trunc(xx/1) mod 10;
			Escribir "Espera un momento ";
			Definir i Como Entero;
			Para i<-1 Hasta 5 Hacer
				Escribir Sin Saltar ".";
				Esperar 1 Segundos;
			FinPara
			Escribir " ";
			Escribir "El número que ingresaste es: ", xx;
			Escribir Sin Saltar "El número en romanos es: ";
			Segun c Hacer
				1:
					Escribir Sin Saltar "C";
				2:
					Escribir Sin Saltar "CC";
				3:
					Escribir Sin Saltar "CCC";
				4:
					Escribir Sin Saltar "CD";
				5:
					Escribir Sin Saltar "D";
				6:
					Escribir Sin Saltar "DC";
				7:
					Escribir Sin Saltar "DCC";
				8:
					Escribir Sin Saltar "DCCC";
				9:
					Escribir Sin Saltar "CM";
			FinSegun
			Segun d Hacer
				1:
					Escribir Sin Saltar "X";
				2:
					Escribir Sin Saltar "XX";
				3:
					Escribir Sin Saltar "XXX";
				4:
					Escribir Sin Saltar "XL";
				5:
					Escribir Sin Saltar "L";
				6:
					Escribir Sin Saltar "LX";
				7:
					Escribir Sin Saltar "LXX";
				8:
					Escribir Sin Saltar "LXXX";
				9:
					Escribir Sin Saltar "XC";
			FinSegun
			Segun u Hacer
				1:
					Escribir Sin Saltar "I";
				2:
					Escribir Sin Saltar "II";
				3:
					Escribir Sin Saltar "III";
				4:
					Escribir Sin Saltar "IV";
				5:
					Escribir Sin Saltar "V";
				6:
					Escribir Sin Saltar "VI";
				7:
					Escribir Sin Saltar "VII";
				8:
					Escribir Sin Saltar "VIII";
				9:
					Escribir Sin Saltar "IX";
			FinSegun
			Escribir " ";
			Esperar Tecla;
			
	FinSegun
FinSubProceso
Proceso Menu_de_Condicionales
	Limpiar Pantalla;
	definir c Como Entero;
	Repetir
		Limpiar Pantalla;
		escribir menu;
		c<-menu;
	Hasta Que c=20 
	Escribir "Nos vemos";
FinProceso