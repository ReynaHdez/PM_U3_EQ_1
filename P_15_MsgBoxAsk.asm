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
contenido db "Primero linea ", 0dh, 0ah 
 db "Segundo linea", 0

.code

	main15 PROC
	
		;Lógica del Programa
		mov edx, offset contenido
		mov ebx, offset titulo
		call msgBox

		call msgBoxAsk
		println "El boton seleccionado es: "
		call writeint ;respuesta
		
		exit	
	
	main15 ENDP
	
	END main15