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

	main8 PROC
	
		;Lógica del Programa

		;loop trabaja con ECX
		;ciclo que va de ECX hasta 0

		mov ecx, 10

		ciclo:
			mov eax, 40
			call writedec
			call crlf
			loop ciclo

		
		exit	
	
	main8 ENDP
	
	END main8
