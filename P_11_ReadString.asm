TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Hernandez Santos Reyna Margarita
;         Salas Alardin Luis Fernando

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  
INCLUDE Macros.inc

.data
; �rea de Declaraci�n de Variables
nombre byte 20 dup('A')

.code

	main11 PROC
	
		;L�gica del Programa
		mov edx, offset nombre
		
		mov ecx, sizeof nombre
		call readstring		;"Reyna" + NULL
		call writestring	
		
		exit	
	
	main11 ENDP
	
	END main11
