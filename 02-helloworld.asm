; Name: Adrian Alegre Diaz
; Student Number: 214040147 

; This code sequentially displays each character of the string "Hello, World!" on the screen, loading the memory address of the message.

.MODEL SMALL 

.STACK 

.DATA  

message DB "Hello, World!", 0


.CODE 
MAIN PROC
                  
    MOV AX, @DATA 
    MOV DS, AX
    MOV ES, AX
    
    MOV CX, 0
    
    MAIN_LOOP:
   
    MOV AX, OFFSET message
    MOV SI, AX
   
    add si,cx
    add cx, 1
    
    mov ah, 02h
    mov dl, [si]
    int 21h 
    
    cmp dl, 0
    jne main_loop
    
    mov ah,4ch
    int 21h 
   
     
MAIN ENDP
END MAIN        