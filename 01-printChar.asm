; Name: Adrian Alegre Diaz
; Student Number: 214040147   


                     .MODEL SMALL
.STACK
.DATA
.CODE
    MOV AX, @DATA
    MOV DS, AX    
    
    MOV AH, 2
    MOV DL, 41h
    INT 21H   
    
    MOV DL, 42h
    INT 21H  
    
    MOV DL, 43h
    INT 21H     
    
    MOV DL, 44h
    INT 21H    
    
    MOV DL, 45h
    INT 21H   
    
    MOV DL, 46h
    INT 21H    
    
    MOV DL, 47h
    INT 21H  
    
    MOV DL, 48h
    INT 21H   
    
    MOV DL, 49h
    INT 21H   
    
    MOV DL, 4Ah
    INT 21H  
    
    MOV DL, 4Bh
    INT 21H 
    
    MOV DL, 4Ch
    INT 21H   
    
    MOV DL, 4Dh
    INT 21H 
    
    MOV DL, 4Eh
    INT 21H  
    
    MOV DL, 4Fh
    INT 21H   
    
    MOV DL, 50h
    INT 21H  
    
    MOV DL, 51h
    INT 21H
    MOV DL, 52h
    INT 21H 
    
    MOV DL, 53h
    INT 21H
    MOV DL, 54h
    INT 21H   
    
    MOV DL, 55h
    INT 21H   
    
    MOV DL, 56h
    INT 21H 
    
    MOV DL, 57h
    INT 21H  
    
    MOV DL, 58h
    INT 21H   
    
    MOV DL, 59h
    INT 21H  
    
    MOV DL, 5Ah
    INT 21H  
    
    MOV AX, 4C00H
    INT 21H
END
