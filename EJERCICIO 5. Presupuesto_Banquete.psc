
	SubProceso  Calcular_Presupuesto(personas)
		Definir costoPlatillo, subtotal, total Como Real
		
		
		Si personas > 200 Entonces
			costoPlatillo = 10
		SiNo
			Si personas > 100 Entonces
				costoPlatillo = 15
			SiNo
				costoPlatillo = 20
			FinSi
		FinSi
		
		
		subtotal = personas * costoPlatillo
		total = subtotal + (subtotal * 0.15)  
		
		Escribir "Número de personas: ", personas
		Escribir "Costo por platillo: $", costoPlatillo
		Escribir "Subtotal: $", subtotal
		Escribir "Total con IVA (15%): $", total
FinSubProceso


Algoritmo Presupuesto_Banquete
	Definir numPersonas Como Entero
	
	Escribir "Ingrese la cantidad de personas para el evento: "
	Leer numPersonas
	
	Calcular_Presupuesto(numPersonas)
FinAlgoritmo 
