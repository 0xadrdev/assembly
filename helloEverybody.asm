; Name: Adrian Alegre Diaz
; Student Number: 214040147   

; Prints the message on the screen. 

.MODEL SMALL
.STACK 
.DATA 

MESSAGE DB "HELLO EVERYBODY! I AM LEARNING ASSEMBLY LANGUAGE!", "$"


.CODE 

MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 09
    LEA DX, MESSAGE
    INT 21H
    
    MOV AX, 4C00H
    INT 21H
    
MAIN ENDP
END MAIN

