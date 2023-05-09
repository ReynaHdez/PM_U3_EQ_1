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

	main4 PROC
	
		;Lógica del Programa
		mov ecx, 100

		ciclo:
			mov eax, 40
			call randomRange		;rnd (0, 39)
			call writeDec
			call crlf
		loop ciclo
		
		exit	
	
	main4 ENDP
	
	END main4
