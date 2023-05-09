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
nombre1_12 byte 40 dup ('G')
nombre2_12 byte 40 dup ('A')

.code

	main12 PROC
	
		;Lógica del Programa

		println "Ingrese el nombre del primero integrante de equipo: "
		mov edx, offset nombre1_12
		mov ecx, sizeof nombre1_12
		call readstring
		call crlf

	    println "Ingrese el nombre del segundo integrante del equipo: "
		mov edx, offset nombre2_12 ;localidad de memoria donde se gusrdara la cadena leida
		mov ecx, sizeof nombre2_12 ;maxima cantidad de caracteres que contendra la cadena 
		call readstring
		call crlf

		println "Los integrantes del equipo son : "
		mov edx, offset nombre1_12
		call writestring
		call crlf

		mov edx, offset nombre2_12
		call writestring
		call crlf
		
		exit	
	
	main12 ENDP
	
	END main12
