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
nombre1 byte 34 dup('A')
nombre2 byte 29 dup('A')

.code

	mainE1 PROC
	
		;L�gica del Programa

		println "Ingrese el nombre del lider de equipo: "
		mov edx, offset nombre1
		mov ecx, sizeof nombre1
		call readstring		;Reyna

		println "Ingrese el nombre del segundo integrante: "
		mov edx, offset nombre2
		mov ecx, sizeof nombre2
		call readstring		;Luis
		call crlf

		println "Los Integrantes de equipos son..."
		call writestring
		
		exit	
	
	mainE1 ENDP
	
	END mainE1
