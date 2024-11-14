; Name: Adrian Alegre Diaz
; Student Number: 214040147 

; Add two numbers and store the results in the third variable

.MODEL SMALL

.STACK 

.DATA
    FLDD DW 215 
    FLDE DW 125
    FLDF DW ?  
    
.CODE    

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX    ; For accessing to data variables. 
    MOV AX, FLDD
    ADD AX, FLDE
    MOV FLDF, AX
    MOV AX, 4C00H
    INT 21H
MAIN ENDP
END MAIN