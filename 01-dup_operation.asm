; Name: Adrian Alegre Diaz
; Student Number: 214040147 

; This program displays 5 asterisks (*) character on the screen and then terminates.

.MODEL SMALL 
.STACK       
.DATA
    MSG DB 5 DUP("*"), "$"
.CODE 
MAIN PROC
    MOV AX, @DATA 
    MOV DS, AX 
    
    MOV AH, 09h
    MOV DX, OFFSET MSG
    INT 21h
    
    MOV AH, 4Ch
    INT 21h
END MAIN   
END 

    