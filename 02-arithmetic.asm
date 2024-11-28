; Name: Adrian Alegre Diaz   
; Student Number: 214040147  

; The program reads two ASCII digits, combines them into a binary-coded decimal (BCD), converts the result back to ASCII, and exits.

.MODEL SMALL
.STACK
.DATA 
.CODE 
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 01h
    INT 21h 
    SUB AL, 30h 
    MOV CH, AL; Read high digit e.g. 8
    
    MOV AH, 01h 
    INT 21h 
    SUB AL, 30h 
    MOV CL, AL; Read low digit e.g. 3
    
    MOV AL, 10000B
    MUL CH
    XOR AH, AH
    OR AL, CL 
    
    MOV AL, CL 
    MOV AH, 0
    MOV BL, 10000B
    DIV BL
    ADD AL, 30h
    
    MOV AX, 4C00h
    INT 21h 
    
END