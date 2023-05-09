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
  anios dword 0
  bono dword 0
  mensaje db "Ingresa los anios de antiguedad: ", 0
  mensaje_bono db "El bono correspondiente es de: ", 0

.code

	mainE9 PROC
	
		;Lógica del Programa
		  mov edx, offset mensaje
		  call WriteString
		  call ReadInt
		  mov anios, eax
		  call crlf

		  ; Calcular el bono
		  cmp anios, 1
		  je anio1
		  cmp anios, 2
		  je anio2
		  cmp anios, 3
		  je anio3
		  cmp anios, 4
		  je anio4
		  cmp anios, 5
		  je anio5
		  jmp mas_de_5

		anio1:
		  mov bono, 100
		  jmp fin

		anio2:
		  mov bono, 200
		  jmp fin

		anio3:
		  mov bono, 300
		  jmp fin

		anio4:
		  mov bono, 400
		  jmp fin

		anio5:
		  mov bono, 500
		  jmp fin

		mas_de_5:
		  mov bono, 1000

		fin:
		  ; Mostrar el bono correspondiente
		  mov edx, offset mensaje_bono
		  call WriteString
		  mov eax, bono
		  call WriteInt
		  call Crlf
		
		exit	
	
	mainE9 ENDP
	
	END mainE9