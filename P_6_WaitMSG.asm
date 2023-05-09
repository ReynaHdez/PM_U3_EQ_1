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

.data
; Área de Declaración de Variables

.code

	main6 PROC
	
		;Lógica del Programa
		
		mov eax, 10
		call waitmsg
		call crlf
		call writedec
		
		exit	
	
	main6 ENDP
	
	END main6
