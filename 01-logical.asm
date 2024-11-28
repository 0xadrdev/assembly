; Name: Adrian Alegre Diaz
; Student Number: 214040147

.MODEL SMALL
.STACK         
.DATA
.CODE 
    MOV AX, @DATA 
    MOV DS, AX
    
    CALL READC 
    MOV BL, AL 
    CALL READC 
           
    XOR AH, AH
    
    OR BL, AL
    
    MOV AX, 4C00h
    INT 21h
    
    READC PROC NEAR
        
         MOV AH, 01h
         INT 21h
         SUB AL, 30h 
         RET
    READC ENDP
    
END 

        
    