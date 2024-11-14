; Name: Adrian Alegre Diaz
; Student Number: 214040147 

.MODEL SMALL 
.STACK 
.DATA 

.CODE 
MAIN PROC 

    MOV AH, 99
    MOV AL, 1 
    CMP AH, AL
    
    JG JMP_GREATER
    JNG JMP_NGREATER
    
    JMP_GREATER:
        MOV AH, 02H
        MOV DL, 3EH
        INT 21H 
        JMP JMP_EXIT
        
    JMP_NGREATER:
        MOV AH, 02H
        MOV DL, 3CH
        INT 21H
        MOV DL, 3DH
        INT 21H 
        JMP JMP_EXIT
            
        
    JMP_EXIT:
        MOV AH, 4CH 
        INT 21H       

MAIN ENDP
END MAIN