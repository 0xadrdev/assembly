; Name: Adrian Alegre Diaz
; Student Number: 214040147    

; This code compares AH and AL, prints = if they are equal, or != if they are not, then exits.

.MODEL SMALL 
.STACK 
.DATA 

.CODE 
MAIN PROC 

    MOV AH, 99
    MOV AL, 1 
    CMP AH, AL
    
    JZ JMP_EQUALS 
    JNZ JMP_NEQUALS
    
    JMP_EQUALS:
        MOV AH, 02h
        MOV DL, 3DH
        INT 21H
        INT 21H 
        JMP JMP_EXIT
        
    JMP_NEQUALS:
        MOV AH, 02H
        MOV DL, 21H
        INT 21H
        MOV DL, 3DH
        INT 21H
        JMP JMP_EXIT
        
    JMP_EXIT:
        MOV AH, 4CH 
        INT 21H       

MAIN ENDP
END MAIN