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

.code

	main10 PROC
	
		;L�gica del Programa
		println "Ingresa el valor de A"
		call readint
		println "Ingresa el valor de B"
		mov ebx, eax
		call readint
		add eax, ebx

		call waitmsg
		call crlf
		println "La suma es: "
		call writedec

		
		exit	
	
	main10 ENDP
	
	END main10
