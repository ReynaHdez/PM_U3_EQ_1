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
anios dword 0
sueldo dword 0
bono dword 0
.code

	mainE7 PROC
	
		;Lógica del Programa
		println "Ingrese su antiguedad (anios): "
		call readint
		mov anios, eax
		
		println "Ingrese su sueldo: "
		call readint
		mov sueldo, eax

		cmp anios, 2
		jl porsueldo

		cmp anios, 5
		jl porantiguedad

		cmp anios, 5
		jge porantiguedad2

		porantiguedad:
			println "Se le asigna un bono de 20 porciento por antiguedad "
			jmp continuar

		porantiguedad2:
			println "Se le asigna un bono de 40 porciento por antiguedad"
			jmp continuar

		porsueldo:
			cmp sueldo, 1000
			jl bono1

			mov bono, 3500
			jg bono2

		    mov bono, 3500
		    jmp bono2

		bono1:
			println "Se le asigna un bono de 20 porciento por sueldo"
			jmp continuar
			
		bono2:
			println "Se le asigna un bono de 10 porciento por sueldo"
			jmp continuar
			

		continuar:

		exit	
	
	mainE7 ENDP
	
	END mainE7
