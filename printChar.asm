; Name: Adrian Alegre Diaz
; Student Number: 214040147     

; Prints the char "A" in the screen. 

.MODEL SMALL

.STACK

.DATA


.CODE
MAIN PROC
MOV DL, "A"
MOV AH, 2
INT 21H
MOV AH, 4CH
INT 21H

MAIN ENDP
END MAIN

