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

	main5 PROC
	
		;Lógica del Programa
		
		call randomize		;seed

		mov ecx, 100

		ciclo:
			mov eax, 40
			call randomrange		;rnd(0, 39)
			call writedec
			call crlf
		loop ciclo
		
		exit	
	
	main5 ENDP
	
	END main5
