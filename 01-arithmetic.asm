; Name: Adrian Alegre Diaz
; Student Number: 214040147 

; The program reads two ASCII digits, converts them to a binary-coded decimal (BCD), combines them into a single byte, and then exits. 

.MODEL SMALL
.STACK 
.DATA
.CODE 
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 01h
    INT 21h
    SUB AL, 30H; Convert the ASCII code to integer. 
    MOV CH, AL; Read high digit e.g. 8
   
    MOV AH, 01h
    INT 21h 
    SUB AL, 30h 
    MOV CL, AL; Read low digit e.g. 3
    
    MOV AL, 10000B; Use MUL by 10000B to shift left by 4 bits. 
    MUL CH; Shift AL 4 bits to the left. 
    XOR AH, AH; Clear AH
    OR AL, CL; Result in AL c 83. 
    
    MOV AX, 4C00H
    INT 21h
    
 END 