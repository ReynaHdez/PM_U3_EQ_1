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
num_alumnos dword 0
costo_pasaje dword 0
total_costo dword 0

msj_num_alumnos db "Ingrese el numero de alumnos: ", 0
msj_costo_pasaje db "El costo del pasaje por alumno es: $", 0
msj_total_costo db "El total a pagar es: $", 0

.code

	mainE10 PROC
	
		;Lógica del Programa
        ;Ingrese al usuario que ingrese el número de alumnos
        mov edx, offset msj_num_alumnos
        call writestring
        call readint
        mov num_alumnos, eax
    
        ; Calcular el costo del pasaje por alumno
        cmp num_alumnos, 100
        ja mayor_que_100
    
        cmp num_alumnos, 50
        jge entre_50_y_100
    
        cmp num_alumnos, 20
        jge entre_20_y_49
    
        ; Si hay menos de 20 alumnos, el costo es de $70 por cada uno
        mov costo_pasaje, 70
        jmp calcular_total
    
        entre_20_y_49:
            ; Si hay entre 20 y 49 alumnos, el costo es de $40 por cada uno
            mov costo_pasaje, 40
            jmp calcular_total
    
        entre_50_y_100:
            ; Si hay entre 50 y 100 alumnos, el costo es de $35 por cada uno
            mov costo_pasaje, 35
            jmp calcular_total
    
        mayor_que_100:
            ; Si hay más de 100 alumnos, el costo es de $20 por cada uno
            mov costo_pasaje, 20
    
        calcular_total:
            ; Calcular el total a pagar
            mov eax, num_alumnos
            mul costo_pasaje
            mov total_costo, eax
        
            ; Mostrar el costo del pasaje por alumno y el total a pagar
            mov eax, costo_pasaje
            mov edx, offset msj_costo_pasaje
            call writestring
            call writedec
            call crlf
        
            mov eax, total_costo
            mov edx, offset msj_total_costo
            call writestring
            call writedec
            call crlf
		
		    exit	
	
	    mainE10 ENDP
	
	    END mainE10