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

.data
; �rea de Declaraci�n de Variables

.code

	main3 PROC
	
		;L�gica del Programa
		mov eax, 10
		call randomRange		;0 - eax = eax
		call writeDec
		
		exit	
	
	main3 ENDP
	
	END main3
