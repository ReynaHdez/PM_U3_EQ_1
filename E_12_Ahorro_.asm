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
msj1_ahorrar db "Cuando desea ahorrar?",0
msj2_ahorrar db "Su total ahorado es de: ",0
.code

	mainE12 PROC
	
		;L�gica del Programa
		mov ebx, 0
		mov ecx, 12

			ahorro:
			mov edx, offset msj1_ahorrar
			call writestring
			call crlf

			call readint
			mov ebx, eax
			add ebx, eax
			loop ahorro

		mov edx, offset msj2_ahorrar
		call writestring
		call crlf
		mov eax, ebx
		call writedec

		exit	
	
	mainE12 ENDP
	
	END mainE12