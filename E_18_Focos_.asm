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
count_verde dword 0
count_blanco dword 0
count_rojo dword 0

.code

	mainE18 PROC
	
		;Lógica del Programa
		println "Fabica de focos de colores"
		println "Que color desea registrar"
		println "1. Foco Verde - 2. Foco Blanco - 3. Foco Rojo - 0. SALIR "

		ciclo:
			call readint	;input en eax
			cmp eax, 2
			jl foco_verde
			je foco_blanco
			jg foco_rojo


			foco_verde:
				inc count_verde
				jmp ciclo

			foco_blanco:
				inc count_blanco
				jmp ciclo

			foco_rojo:
				inc count_rojo
				jmp ciclo

		salir:
			mov eax, count_verde
			println "Focos Verdes"
			call writedec
			call crlf

			mov eax, count_blanco
			println "Focos Blancos"
			call writedec
			call crlf

			mov eax, count_rojo
			println "Focos Rojos"
			call writedec
			call crlf

		exit	
	
	mainE18 ENDP
	
	END mainE18
