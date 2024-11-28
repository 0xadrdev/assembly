; Name: Adrian Alegre Diaz
; Student Number: 214040147  

; The program accesses and copies a value from the second row of a 3x3 matrix (Array3) to the third row using base-indexed addressing, then exits.

.MODEL SMALL
.STACK 
.DATA 
    Array3 DB 11,12,13,21,22,23,31,32,33
    RowSize EQU 3

.CODE
    MOV AX, @DATA 
    MOV DS, AX
    
    ; Based Indexed addressing mode. 
    MOV BX, OFFSET Array3; Address Array 3
    MOV SI, 1 * RowSize
    MOV DI, 2 * RowSize 
    MOV AL, [BX + SI + 1]
    MOV [BX + DI + 2], AL
    
    MOV AX, 4C00H
    INT 21H
    
END    