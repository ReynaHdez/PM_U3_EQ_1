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

	main3 PROC
	
		;Lógica del Programa
		mov eax, 10
		call randomRange		;0 - eax = eax
		call writeDec
		
		exit	
	
	main3 ENDP
	
	END main3
