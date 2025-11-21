SubProceso Contar_Letra(frase, letra)
	Definir i, contador Como Entero
	contador = 0
	
	
	frase = Mayusculas(frase)
	letra = Mayusculas(letra)
	
	Para i = 1 Hasta Longitud(frase) Hacer
		Si SubCadena(frase, i, 1) = letra Entonces
			contador = contador + 1
		FinSi
	FinPara
	
	Escribir "La letra", letra, "aparece ", contador, " veces en la frase."
FinSubProceso


Algoritmo BuscarLetraEnFrase
	Definir frase, letra, op Como Cadena
	
	Escribir "Ingrese una frase:"
	Leer frase
	
	Repetir
		
		Repetir
			Escribir "Ingrese una letra a buscar:"
			Leer letra
			
			Si Longitud(letra) <> 1 Entonces
				Escribir "Error: Debe ingresar solo UNA letra."
			FinSi
		Hasta Que Longitud(letra) = 1
		
		
		Contar_Letra(frase, letra)
		
		Escribir "¿Desea buscar otra letra en la misma frase? (S/N):"
		Leer opcion
		op = Mayusculas(op)
	Hasta Que op <> "S"
	
	Escribir "Programa finalizado."
FinAlgoritmo
