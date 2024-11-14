; Name: Adrian Alegre Diaz
; Student Number: 214040147     

; prints "Hello World" character by character to the screen by incrementing SI starting from -1. 

.MODEL SMALL 
.STACK 
.DATA 
    message DB "Hello World", 0
    
.CODE 
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    MOV ES, AX
    
    MOV SI, 0
    DEC SI 
    
    MAIN_LOOP:
    INC SI 
    MOV AH, 02H
    MOV DL, [SI]
    INT 21H 
    
    CMP DL, 0
    JNE MAIN_LOOP
    
    MOV AH, 4CH
    INT 21H 

MAIN ENDP
END MAIN