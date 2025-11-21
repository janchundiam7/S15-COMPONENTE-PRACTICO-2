Algoritmo FleteBanano
    
    // 1. Definición de variables
    Definir tipo_caja, tamanio Como Caracter;
    Definir precio_inicial, precio_final Como Real;
    
    Escribir "--- Cálculo de Recibo a Productor de Banano ---";
    
    // 2. Pedir datos al usuario
    Escribir "Ingrese el tipo de caja (A o B):";
    Leer tipo_caja;
    Escribir "Ingrese el tamaño de la fruta (1 o 2):";
    Leer tamanio;
    
    // 3. Determinar precio inicial según el tipo de caja
    Si Mayusculas(tipo_caja) = "A" Entonces
        precio_inicial <- 2; // $2 si es Tipo A
    SiNo
        Si Mayusculas(tipo_caja) = "B" Entonces
            precio_inicial <- 3; // $3 si es Tipo B
        SiNo
            Escribir "ERROR: Tipo de caja no reconocido. Usaremos $0.";
            precio_inicial <- 0;
        FinSi
    FinSi
    
    // 4. Aplicar modificación al precio inicial según el tamaño
    precio_final <- precio_inicial; // Inicialmente el precio final es el precio base
    
    Si Mayusculas(tipo_caja) = "A" Entonces
        // Modificaciones para el Tipo A
        Si tamanio = "1" Entonces
            precio_final <- precio_final + 0.20; // + $0.20
            Escribir "Ajuste: Se añaden $0.20 por ser Tamaño 1.";
        SiNo
            Si tamanio = "2" Entonces
                precio_final <- precio_final + 0.40; // + $0.40
                Escribir "Ajuste: Se añaden $0.40 por ser Tamaño 2.";
            FinSi
        FinSi
    SiNo
        Si Mayusculas(tipo_caja) = "B" Entonces
            // Modificaciones para el Tipo B
            Si tamanio = "1" Entonces
                precio_final <- precio_final - 3; // - $3.00
                Escribir "Ajuste: Se rebajan $3.00 por ser Tamaño 1.";
            SiNo
                Si tamanio = "2" Entonces
                    precio_final <- precio_final - 6; // - $6.00
                    Escribir "Ajuste: Se rebajan $6.00 por ser Tamaño 2.";
                FinSi
            FinSi
        FinSi
    FinSi
    
    // 5. Mostrar resultado
    Escribir "=============================================";
    Escribir "Tipo de Caja Ingresado: ", tipo_caja;
    Escribir "Tamaño de Fruta Ingresado: ", tamanio;
    Escribir "Precio Inicial (Base) de la Caja: $", precio_inicial;
    Escribir "Precio Final que Recibirá el Productor: $", precio_final;
    Escribir "=============================================";
    
FinAlgoritmo