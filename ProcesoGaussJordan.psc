Algoritmo ProcesoGaussJordan
	Escribir "|==============================================================|";
	Escribir "|       Sistema Digital Matematico del Liceo Andres Bello      |";
	Escribir "|==============================================================|";
	Escribir "|            Version: Resolucion de Problemas v.2              |";
	Escribir "|==============================================================|";
	Escribir " _____                          ___               _             ";
	Escribir "|  __ \                        |_  |             | |            ";
	Escribir "| |  \/ __ _ _   _ ___  ___      | | ___  _ __ __| | __ _ _ __  ";
	Escribir "| | __ / _` | | | / __/  __|     | |/ _ \| `__/ _` |/ _` | `_  \ ";
	Escribir "| |_\ \ (_| | |_| \__ \__  \ /\__/ / (_) | | | (_| | (_| | | | |";
	Escribir " \____/\__,_|\__,_|___/___ / \____/ \___/|_|  \__,_|\__,_|_| |_|";
	Escribir "";
	Escribir "________________________________________________________________";
	Escribir "";
    Escribir Sin Saltar "Ingrese el número de ecuaciones (n):";
    Leer n;
	Escribir "________________________________________________________________";
    Dimension matriz[n,n+1];
    Dimension literales[n];
    Para i<-1 Hasta n Con Paso 1 Hacer
        Escribir Sin Saltar "Ingrese la literal de la variable ", i, ":";
        Leer literales[i];
    FinPara
	Escribir "________________________________________________________________";
    Para i<-1 Hasta n Con Paso 1 Hacer
        Para j<-1 Hasta n Con Paso 1 Hacer
            Escribir Sin Saltar "Ingrese el coeficiente de la variable ", literales[j], " de la ecuación ", i, ":";
            Leer  matriz[i,j];
        FinPara
        Escribir Sin Saltar "Ingrese la constante de la ecuación ", i, ":";
        Leer matriz[i,n+1];
		Escribir  "";
    FinPara
    Escribir "";
    Para i<-1 Hasta n Con Paso 1 Hacer
        Si matriz[i,i]=0 Entonces
            Escribir "Error: división entre cero.";
            Escribir "";
        FinSi
        Para k<-1 Hasta n Con Paso 1 Hacer
            Si k<>i Entonces
                termino <- matriz[k,i]/matriz[i,i];
                Para j<-1 Hasta n+1 Con Paso 1 Hacer
                    matriz[k,j] <- matriz[k,j]-termino*matriz[i,j];
                FinPara
            FinSi
        FinPara
    FinPara
	Escribir "________________________________________________________________";
	Escribir "";
    Escribir "Solución:";
    Escribir "";
    Para i<-1 Hasta n Con Paso 1 Hacer
        termino <- matriz[i,n+1]/matriz[i,i];
        Escribir literales[i], " = ", termino;
    FinPara
	Escribir "";
	Escribir "Gracias por usar nuestro sistema :)";
FinAlgoritmo