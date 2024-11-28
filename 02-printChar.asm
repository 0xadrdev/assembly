; Name: Adrian Alegre Diaz
; Student Number: 214040147   


; Prints the letters of the abecedary using a loop. 

.MODEL SMALL
.STACK
.DATA
.CODE       

MOV AX, @DATA
MOV DS, AX
MOV DL, 41h; Start in the letter A. 
MOV CX, 26 ; There are 26 letters.   

PRINT_LOOP:
    MOV AH, 2
    INT 21H
    INC DL ; Increment DL, for the next letter, 
LOOP PRINT_LOOP  

MOV AX, 4C00H
INT 21H
END
                                            