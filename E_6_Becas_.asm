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
edad dword 0
promedio dword 9
.code

	mainE6 PROC
	
		;Lógica del Programa
		println "Ingrese su edad :"
		call readint
		mov edad, eax
		
		println "Ingrese su promedio : "
		call readint
		mov promedio, eax

		cmp edad, 18
		jge alumnosmayores

		cmp edad, 18
		jl alumnosmenores

		alumnosmayores:
			cmp promedio, 9
			jge beca1

			cmp promedio, 7
			jge beca2

			cmp promedio, 6
			jge beca3

			cmp promedio, 6
			jmp mensaje

		beca1:
			println "La beca es de $2000"
			jmp continuar

		beca2:
			println "la beca es de $1000"
			jmp continuar

		beca3:
			println "la beca es de $500"
			jmp continuar

		mensaje:
			println "Se les invita a estudiar mas en el proximo ciclo escolar"
			jmp continuar

		alumnosmenores:
			cmp promedio, 9
			jge beca5

			cmp promedio, 8
			jge beca6

			cmp promedio, 6
			jge beca7

			cmp promedio, 6
			jl beca8

		beca5:
			println "la beca es de $3000"
			jmp continuar

		beca6:
			println "La beca es de $2000"
			jmp continuar

		beca7:
			println "La beca es de $100"
			jmp continuar

		beca8:
			println "Se les invita a estudiar mas en el proximo ciclo escolar"
			jmp continuar


		continuar:
		exit	
	
	mainE6 ENDP
	
	END mainE6
