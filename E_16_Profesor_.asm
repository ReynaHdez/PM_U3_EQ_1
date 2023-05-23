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
salario_inicial dword 1500
anio1 dword 150
anio2 dword 165
anio3 dword 181
anio4 dword 199
anio5 dword 219
anio6 dword 241
salario_anual1 dword 0
salario_anual2 dword 0
salario_anual3 dword 0
salario_anual4 dword 0
salario_anual5 dword 0
salario_anual6 dword 0


.code

	mainE16 PROC
	
		;Lógica del Programa

		mov eax, salario_inicial ; Cargar el salario inicial

        ; Calculo del salario anual
        add eax, anio1 
        mov salario_anual1, eax

        add eax, anio2 
        mov salario_anual2, eax

        add eax, anio3
        mov salario_anual3, eax

        add eax, anio4 
        mov salario_anual4, eax

        add eax, anio5 
        mov salario_anual5, eax

        add eax, anio6 
        mov salario_anual6, eax

        ;Resultados
        println "El salario del primer anio es:"
        mov eax, salario_anual1
        call WriteDec
        call Crlf

        println "El salario del segundo anio es:"
        mov eax, salario_anual2
        call WriteDec
        call Crlf

        println "El salario del tercer anio es:"
        mov eax, salario_anual3
        call WriteDec
        call Crlf

        println "El salario del cuarto anio es:"
        mov eax, salario_anual4
        call WriteDec
        call Crlf

        println "El salario del quinto anio es:"
        mov eax, salario_anual5
        call WriteDec
        call Crlf

        println "El salario del sexto anio es:"
        mov eax, salario_anual6
        call WriteDec
        call Crlf

        ; Calculo del salario total después de 6 años
        mov eax, salario_inicial 
        add eax, anio1
        add eax, anio2
        add eax, anio3
        add eax, anio4
        add eax, anio5
        add eax, anio6

        ; Salario total después de 6 años
        println "El salario total es: "
        call WriteDec
        call Crlf

		exit	
	
	mainE16 ENDP
	
	END mainE16
