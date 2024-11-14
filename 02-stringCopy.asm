; Name: Adrian Alegre Diaz
; Student Number: 214040147        

; Copy a string from STRING1 to STRING2 and displays the copied string on the screen.

.MODEL SMALL

.STACK

.DATA

.CODE
MAIN PROC
MOV AX, @DATA
MOV DS, AX
MOV ES, AX

MOV CX, 12
LEA SI, STRING1
LEA DI, STRING2

BEGINLOOP:
MOV AL, [SI]
MOV [DI], AL
INC SI
INC DI
DEC CX
JNZ BEGINLOOP

MOV AH, 09H
LEA DX, STRING2
INT 21H

.EXIT

STRING1 DB "String Copy", "$"
STRING2 DB "?"

MAIN ENDP
END MAIN

