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

	main6 PROC
	
		;L�gica del Programa
		
		mov eax, 10
		call waitmsg
		call crlf
		call writedec
		
		exit	
	
	main6 ENDP
	
	END main6
