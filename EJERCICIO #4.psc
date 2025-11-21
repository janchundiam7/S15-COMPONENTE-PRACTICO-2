Algoritmo CalculoSueldoNeto
    
    // 1. Definición de variables
    Definir sueldo_mensual, sueldo_anual, impuesto, sueldo_neto_anual Como Real;
    Definir limite_impuesto Como Real;
    limite_impuesto <- 30000; // Constante para el límite del impuesto
    
    Escribir "--- Cálculo de Sueldo Neto Anual ---";
    
    // 2. Pedir sueldo mensual al usuario
    Escribir "Ingrese su sueldo mensual ($):";
    Leer sueldo_mensual;
    
    // 3. Determinar sueldo anual
    sueldo_anual <- sueldo_mensual * 12;
    
    // 4. Aplicar impuesto si supera el límite de $30,000
    Si sueldo_anual > limite_impuesto Entonces
        Definir excedente Como Real;
        Definir tasa_impuesto Como Real;
        tasa_impuesto <- 0.15; // 15%
        
        // Calcular el excedente
        excedente <- sueldo_anual - limite_impuesto;
        
        // Calcular el impuesto sobre el excedente
        impuesto <- excedente * tasa_impuesto;
        
        // Calcular el sueldo neto
        sueldo_neto_anual <- sueldo_anual - impuesto;
        
        Escribir "=============================================";
        Escribir "SUELDO ANUAL BRUTO: $", sueldo_anual;
        Escribir "El sueldo supera los $", limite_impuesto, " por lo que se aplica impuesto.";
        Escribir "Excedente sujeto a impuesto (15%): $", excedente;
        Escribir "Monto del Impuesto: $", impuesto;
        Escribir "SUELDO NETO ANUAL: $", sueldo_neto_anual;
        Escribir "=============================================";
        
    SiNo
        // Si no supera el límite, no hay impuesto
        impuesto <- 0;
        sueldo_neto_anual <- sueldo_anual;
        
        Escribir "=============================================";
        Escribir "SUELDO ANUAL BRUTO: $", sueldo_anual;
        Escribir "El sueldo anual no supera los $", limite_impuesto, ". NO se aplica impuesto.";
        Escribir "SUELDO NETO ANUAL: $", sueldo_neto_anual;
        Escribir "=============================================";
    FinSi
    
FinAlgoritmo