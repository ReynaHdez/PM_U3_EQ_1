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
ms1_horas db "Cuantas horas trabajo :",0
ms2_sueldo db "El sueldo es : ",0
sueldo_horas dword 100

.code

	mainE14 PROC
	
		;Lógica del Programa

		mov ecx, 6
		mov ebx, 0

		sueldo:
		mov edx, offset ms1_horas
		call writestring
		call crlf
		call readint

		add ebx, eax
		
		loop sueldo

		mov eax, ebx
		mul sueldo_horas
		mov edx, offset ms2_sueldo
		call writestring
		call crlf
		call writedec
		
		exit	
	
	mainE14 ENDP
	
	END mainE14