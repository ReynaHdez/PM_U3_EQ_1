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
nombre byte 20 dup('A')

.code

	main11 PROC
	
		;Lógica del Programa
		mov edx, offset nombre
		
		mov ecx, sizeof nombre
		call readstring		;"Reyna" + NULL
		call writestring	
		
		exit	
	
	main11 ENDP
	
	END main11
