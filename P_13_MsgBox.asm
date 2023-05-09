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
titulo db "Este es el titulo ", 0
contenido db "Contenido del mensaje ", 0

.code

	main13 PROC
	
		;Lógica del Programa
		mov edx, offset contenido
		mov ebx, offset titulo
		call msgBox

		
		exit	
	
	main13 ENDP
	
	END main13