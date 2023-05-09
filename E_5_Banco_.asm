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
msj_tarjeta db "Que tipo de tarjeta tiene: ", 0
msj1_mensaje db "Su credito aumento un 20%", 0
msj2_mensaje db "Su credito aumento un 40%", 0
msj3_mensaje db "Su credito aumento un 60%", 0
msj4_mensaje db "Su credito aumento un 80%", 0

.code

	mainE5 PROC
	
		;Lógica del Programa
		mov edx, offset msj_tarjeta
		call writestring
		call readint


		cmp eax, 1
		je tipo1

		cmp eax, 2
		je tipo2

		cmp eax, 3
		je tipo3

		cmp eax, 4
		jge tipo4

		tipo1:
			mov edx, offset msj1_mensaje
			call writestring
			jmp continuar

		tipo2:
			mov edx, offset msj2_mensaje
			call writestring
			jmp continuar

		tipo3:
			mov edx, offset msj3_mensaje
			call writestring
			jmp continuar

		tipo4:
			mov edx, offset msj4_mensaje
			call writestring
			jmp continuar

		continuar:
			
		exit	
	
	mainE5 ENDP
	
	END mainE5
