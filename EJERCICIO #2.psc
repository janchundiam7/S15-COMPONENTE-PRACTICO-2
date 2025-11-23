Algoritmo PrecioVehiculo
    Definir p, pf Como Real
    Definir a Como Entero
    Escribir "Ingrese el precio de venta del vehículo:"
    Leer p
    Escribir "Ingrese el año de fabricación del vehículo:"
    Leer a
    Si a < 2010 Entonces
        pf <- p - (p * 0.10)
        Escribir "El vehículo tiene descuento del 10%."
        Escribir "Precio final: ", pf
    SiNo
        Escribir "El vehículo no tiene descuento."
        Escribir "Precio final: ", p
    FinSi
FinAlgoritmo
