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
INCLUDE Macros.inc

.data
; Área de Declaración de Variables
cantidades DWORD 0
contnegativo DWORD 0
contpositivo DWORD 0
valor DWORD 0

.code

	mainE13 PROC
	
		;Lógica del Programa
	
	mov ecx, 0
	mov edx, cantidades
	mov ebx, 1

	ciclo:
		cmp ebx, edx
		jg fin
		call writestring

		mov valor, eax
		cmp valor, 0
		jg numpositivo

		inc contnegativo

		jmp iteracion

	numpositivo:
		inc contpositivo

	iteracion:
		inc ebx
		jmp ciclo

	fin:
		mov eax, contnegativo
		call writedec
		call Crlf
	
		mov eax, contpositivo
		call writedec
		call Crlf

		exit	
	
	mainE13 ENDP
	
	END mainE13
