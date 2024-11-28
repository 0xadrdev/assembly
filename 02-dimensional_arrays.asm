; Name: Adrian Alegre Diaz
; Student Number: 214040147  

; The program transfers specific values from Array1 to Array2 using direct and indexed addressing, then exits.

.MODEL SMALL
.STACK 
.DATA 
    Array1 DB 0,1,2,3,4,5,6,7,8,9
    Array2 DB 10 DUP(0)
    
.CODE 
    MOV AX, @DATA
    MOV DS, AX; Based addressing mode. 
    MOV BX, OFFSET Array1; Address Array1 
    MOV AL, [BX+4]; Load 5th element of Array1 into AL.
    
    ; Indexed addressing mode. 
    MOV DI, OFFSET Array2; Address Array2 
    MOV [DI + 6], AL; Save AL into 7th element of Array2
    MOV SI, 3
    MOV Array2[SI], AL; Save AL into 4th element of Array2 
    
    MOV AX, 4C00H
    INT 21H
    
END         