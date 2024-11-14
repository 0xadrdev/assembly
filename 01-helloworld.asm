; Name: Adrian Alegre Diaz
; Student Number: 214040147 

; Prints "Hello, World!" character per character. 

.MODEL SMALL 

.STACK 

.DATA 


.CODE 
MAIN PROC
    MOV AH, 02h;
    
    MOV DL, 48h
    INT 21h     
    
    MOV DL, 65h
    INT 21h    
    
    MOV DL, 6Ch
    INT 21h     
    
    MOV DL, 6Ch
    INT 21h    
    
    MOV DL, 6fh
    INT 21h        
    
    MOV DL, 2ch
    INT 21h          
    
    MOV DL, 20h
    INT 21h         
    
    MOV DL, 57h
    INT 21h        

    MOV DL, 6fh
    INT 21h         
    
    MOV DL, 72h
    INT 21h        
    
    MOV DL, 6ch
    INT 21h 
    
    MOV DL, 64h
    INT 21h
    
    MOV DL, 21h
    INT 21h
   
     
MAIN ENDP
END MAIN        