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
titulo db "Este es el titulo ", 0
contenido db "Primero linea ", 0dh, 0ah 
 db "Segundo linea", 0

.code

	main14 PROC
	
		;L�gica del Programa
		mov edx, offset contenido
		mov ebx, offset titulo
		call msgBox

		
		exit	
	
	main14 ENDP
	
	END main14