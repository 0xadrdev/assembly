; Name: Adrian Alegre Diaz
; Student Number: 214040147     

; This code calculates the sum of integers from 1 to 9 and stores the result in the variable SUM.


.MODEL SMALL

.STACK

.DATA


.CODE
MAIN PROC
MOV CX, 1
MOV AX, 0

LOOP1:
ADD AX, CX
INC CX
CMP CX, 10
JBE LOOP1
MOV SUM, AX
MOV AH, 4CH
INT 21H


SUM DW ?

MAIN ENDP
END MAIN
                                        