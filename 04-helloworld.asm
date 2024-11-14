; Name: Adrian Alegre Diaz
; Student Number: 214040147        

; Print the message using the 21h interrupt. 

.MODEL SMALL 
.STACK 
.DATA                             
    message DB "Hello World !!", "$"
    
.CODE 
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    MOV ES, AX
       
    MAIN_LOOP:
    MOV AH, 09H 
    MOV DX, offset message 
    INT 21H 
    
    MOV AH, 4CH 
    INT 21H

MAIN ENDP
END MAIN