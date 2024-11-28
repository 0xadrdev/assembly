; Name: Adrian Alegre Diaz
; Student Number: 214040147        

; Loads values from an array into registers using offsets and indexing, then exits.

.MODEL SMALL
.STACK 
.DATA 
    NUM DB 20,4,32,50,7,15,80,12,6,125

.CODE 
    MOV AX, @DATA
    MOV DS, AX
    
    MOV BH, NUM[0]; BH = 20
    MOV AL, NUM[3]; AL = 50
    MOV BX, 5
    MOV AH, NUM[BX]; AH = 15 
    
    MOV SI, 7
    MOV CL, NUM[SI + 2]; CL = 12
    MOV DL, NUM[BX - 3]; DL = 32
    MOV BX, 2
    MOV AL, NUM[SI + BX]; AL = 125
    
    MOV AX, 4C00H
    INT 21H
    
END 