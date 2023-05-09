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
titulo db "El naufrago satisfecho ", 0
contenido db "Desea pagar con tarjeta ", 0dh, 0ah 
 db "Tiene un cargo extra del 10% sobre su compra", 0


.code

	mainE17 PROC
	
		;Lógica del Programa

		println "El naufrago satisfecho ofrecemos 3 tipos de hamburguesas"
		println "1. Sencilla: 20.00"
		println "2. Mediana: 25.00" 
		println "3. Grande: 30.00"

		println "Cuantas hamburguesas desea?"
		call readint	;guarda en eax

		push eax

		println "Que tipo de hamburguesa desea "
		call readint
		cmp eax, 2

		jg tipo3
		jl tipo1
		jmp tipo2


		tipo1:
			mov ecx, 20
			pop eax
			mul ecx
			jmp continuar

		tipo2:
			mov ecx, 25
			pop eax
			mul ecx
			jmp continuar

		tipo3:
			mov ecx, 30
			pop eax
			mul ecx
			jmp continuar

		continuar:
			mov edx, offset contenido
			mov ebx, offset titulo
			call msgBox
			push eax
			call msgBoxAsk
			println "El boton seleccionado es: "
			cmp eax, 6
			jg notarjeta
			call writeint
			pop eax
			add eax, 10 ;agrega el cargo
			mov ecx, ebx ;precio total sin cargo
			add ecx, eax
			jmp sintarjeta

		notarjeta:
			call crlf
			println "Su total es de: "
			pop eax
			call writedec
			jmp salir

		sintarjeta:
			call crlf
			println "Su total es de: "
			call writedec

		cargoextra:
			call crlf
			mov eax, 10
			mul ebx
			mov ecx, eax
			mov edx, offset contenido
			call writestring
			call writedec

		salir:
		exit	
	
	mainE17 ENDP
	
	END mainE17
