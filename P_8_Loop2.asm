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

	main8 PROC
	
		;L�gica del Programa

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
