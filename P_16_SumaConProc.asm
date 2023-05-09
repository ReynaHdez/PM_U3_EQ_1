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
titulo db "Advertencia ", 0
contenido db "Deseas visualizar el resultado de la suma ", 0


.code

	main16 PROC
	
		;Lógica del Programa
		println "Ingresa el valor de A:" 
		call readint ;eax
		println "Ingresa el valor de B:" 
		mov ecx, eax

		call readint ;eax
		; a = ecx   b = eax

		mov edx, offset contenido
		mov ebx, offset titulo
		add ecx, eax ;se guarda en el ecx
		call msgBoxAsk 
		;+6 = si  +7= no
		
		cmp eax, 6 ;eax es respuesta de usuario, 6 es respuesta si

		jnz salir
		mov eax, ecx
		call crlf
		call writedec
		salir: 
		
		exit	
	
	main16 ENDP
	
	END main16