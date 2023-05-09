TITLE NombrePrograma

;DESCRPICIÓN 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Hernandez Santos Reyna Margarita
;         Salas Alardin Luis Fernando

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICIÓN

INCLUDE Irvine32.inc  
INCLUDE Macros.inc

.data
; Área de Declaración de Variables
sumEdadesSalones_17 dword 0
sumTotalAlumnosSalones_17 dword 0

.code

	mainP17 PROC
	
		;Lógica del Programa

		mov ebx, 0		;acumulador para el promedio del salon

		println "Cuantos salones tiene la escuela: "
		call readint		;eax = total de salones de la escuela
		mov ecx, eax		;toma el valor de eax para usarlo en ecx

			ciclo1:

			println "Cuantos alumnos tiene el salon: "
			call readint	;eax = cuantos alumnos tiene el salon
			push ecx		;guarda en la pila el valor de la cantidad de salones
			mov ecx, eax	;cuantos alumnos tiene el salon... para el ciclo

			mov edx, ecx	;cuantos alumnos tiene el salon...
				ciclo2:

				println "Cual es la edad del alumno: "
				call readint	;eax = edad de uno de los alumnos
				add ebx, eax	;acumula la edad con el resto de las edad
				loop ciclo2

				;la suma de las edaddes del salon ...
				;Se necesita que eax, tenga a la suma,... (Esta en ebx)
				;Se necesita que edx, este en 0
				;En un registro o variable tener la cantidad de alumnos en salon

				mov eax, ebx	;se coloca en ebx, la suma de las edades acumuladas
				mov ebx, edx	;en ebx se colona el total de alumnos que tiene el salon...
				mov edx, 0		;en edx se coloca el cero para poder dividir

				;Para el acumulado de los datos de la escuela (todos los salones)
				add sumEdadesSalones_17, eax
				add sumTotalAlumnosSalones_17, ebx

				div ebx			;eax / ebx => sumAcumulada/totalAlunosSalon

			println "El promedio de edades del salon es: "

			call writedec
			call crlf

			mov ebx, 0	;reinicia el contador de la suma de las edades...
			pop ecx
			loop ciclo1

			mov edx, 0
			mov ebx, sumEdadesSalones_17
			mov eax, sumTotalAlumnosSalones_17

			div ebx

		println "El promedio de edad de la escuela es: "

		call writedec
		call crlf

		exit	
	
	mainP17 ENDP
	
	END mainP17
