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

var_cita1 dword 200d
var_cita2 dword 150d
var_cita3 dword 100d
var_cita4 dword 50d

.code

	mainE4 PROC
	
		;Lógica del Programa
		println "Precios: Citas 1 - 3 = $200.00"
		println "Precios: Citas 4 - 5 = $150.00"
		println "Precios: Citas 6 - 8 = $100.00"
		println "Precios: Citas 9 - ... = $50.00"

		println "Cuantas citas agendara usted? "
		call readint	;guarda en eax
		push eax

		cmp eax, 3
		mul var_cita1
		jg cita2

		cita2:
			cmp eax, 4
			mul var_cita2
			jg cita3

		cita3:
			cmp eax, 6
			mul var_cita3
			jg cita4

		cita4:
			cmp eax, 8
			mul var_cita4
			jmp salir
		

		salir:
		call writedec
		exit	
	
	mainE4 ENDP
	
	END mainE4
