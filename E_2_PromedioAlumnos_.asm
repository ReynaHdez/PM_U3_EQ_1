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
;Obtener la edad promedio de un grupo de Alumnos, incluir la mayor cantidad de  procesos

titulo db "Advertencia ", 0
contenido db "Deseas visualizar el resultado de la suma ", 0
.code

	mainE2 PROC
	
		;Lógica del Programa
		println "Cuantos alumnos son: "
		call readint ;lo guarda en eax

		push eax
		mov ecx, eax

		mov ebx, 0
		edad:
			println "Ingrese su edad: "
			call readint
			add ebx, eax
			loop edad

		mov edx, 0
		pop eax
		xchg eax, ebx
		div ebx
		call writedec

		exit	
	
	mainE2 ENDP
	
	END mainE2
