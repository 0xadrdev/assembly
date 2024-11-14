; Name: Adrian Alegre Diaz
; Student Number: 214040147   

; This assembly code copies the contents of STRING1 to STRING2 character by character.

.MODEL SMALL

.STACK

.DATA
STRING1 DB "String Copy !", "$"
STRING2 DB "?"

.CODE
MAIN PROC
MOV AX, @DATA
MOV DS, AX
MOV ES, AX

MOV CX, 13
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

.EXIT

MAIN ENDP
END MAIN

