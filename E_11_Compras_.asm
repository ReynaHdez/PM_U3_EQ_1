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
.code

	mainE11 PROC
	
		;Lógica del Programa
		println "Cuanto dinero desea gastar: "
		call readint
		call crlf

		cmp eax, 50000
		jge paqueteA

		cmp eax, 20000
		jge paqueteB

		cmp eax, 10000
		jge paqueteC

		cmp eax, 10000
		jl paqueteD

		paqueteA:
			println "Se puede comprar el paquete A:"
			println "una television, un modular, tres pares de zapatos, cinco camisas y cinco pantalones"
			jmp continuar

		paqueteB:
			println "Se puede comprar el paquete B:"
			println "Una grabadora, tres pares de zapatos, cinco camisas y cinco pantalones"
			jmp continuar

		paqueteC:
			println "Se puede comprar el paquete C:"
			println "Dos pares de zapatos, tres camisas y tres pantalones"
			jmp continuar

		paqueteD:
			println "Se puede comprar el paquete D:"
			println "Un par de zapatos, dos camisas y dos pantalones"
			jmp continuar

		continuar:
		exit	
	
	mainE11 ENDP
	
	END mainE11
