; Name: Adrian Alegre Diaz
; Student Number: 214040147 

; This program displays the text * followed by a newline, then ** followed by a newline, and then terminates.


.MODEL 
.STACK 
.DATA
    MSG DB 1 DUP("*"), 0Ah, 0Dh; 0Ah: New line, 0Dh: Carriage Return.
        DB 2 DUP("*"), 0Ah, 0Dh, "$"
.CODE 
MAIN PROC 
   MOV AX, @DATA
   MOV DS, AX
   
   MOV AH, 09h
   MOV DX, OFFSET MSG
   INT 21H 
   
   MOV AH, 4Ch
   INT 21h 
    
END MAIN
END