; Name: Adrian Alegre Diaz
; Student Number: 214040147

; This program prompts the user to enter a character, displays the entered character, and then terminates.

.MODEL SMALL 
.STACK 
.DATA
    msg1 DB "Enter the char: ", "$"
    msg2 DB 0ah, 0dh, "The char you entered is: ", "$"
    
.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 09h
    MOV DX, OFFSET msg1
    INT 21h 
    
    MOV AH, 01h
    INT 21h 
    MOV BL, AL
    
    MOV AH, 09h
    MOV DX, OFFSET msg2 
    INT 21h 
    
    MOV AH, 02h 
    MOV DL, BL
    INT 21h 
    
    MOV AH, 4Ch 
    INT 21h
END MAIN
END    