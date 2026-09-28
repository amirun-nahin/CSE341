.MODEL SMALL
 
.STACK 100H

.DATA
; declare variables here
sum DW ?
product DW ?
m DW 5
n DW 6
msg1 DB 0Dh, 0Ah, 'Enter a hex digit: $'
msg2 DB 0Dh, 0Ah, 'In decimal it is: $'
msg3 DB 0Dh, 0Ah, 'Do you want to do it again? (y/n): $'
msg4 DB 0Dh, 0Ah, 'Illegal character! $'
a DW 0
b DW 0

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;;Task-01
;    MOV DL, "*"
;    MOV CX, 80
;start:
;    MOV AH, 2
;    INT 21H
;    
;LOOP start            

;Task-02a
;    MOV AX, 0         
;    MOV BX, 1         
;
;sum_loop_a:
;    ADD AX, BX        
;    ADD BX, 3         
;    
;    CMP BX, 148       
;    JLE sum_loop_a    
    
;Task-02b
;    MOV AX, 0         
;    MOV BX, 100       
;
;sum_loop_b:
;    ADD AX, BX        
;    SUB BX, 5         
;    
;    CMP BX, 5        
;    JGE sum_loop_b   
;    
;    MOV sum, AX       

;Task-03
;    MOV CX, 5
;    MOV AH, 1
;start1:
;    INT 21H
;LOOP start1
;
;    MOV DL, "*"
;    MOV AH, 2
;
;    MOV CX, 5    
;start2:
;    INT 21H
;    
;LOOP start2    

;Task-04
;    MOV product, 0      
;    MOV AX, m           
;    MOV CX, n           
;
;multiply_loop:         
;    ADD product, AX                                                                                                                                                                
;LOOP multiply_loop

;Task-05
;    MOV CX, 128
;    MOV BL, 80h
;    MOV BH, 0
;
;print_char:
;    MOV AH, 2
;    MOV DL, BL
;    INT 21H
;
;    MOV DL, ' '
;    INT 21H
;
;    INC BH
;    CMP BH, 10
;    JNE next_char
;
;    MOV DL, 0Dh
;    INT 21H
;    MOV DL, 0Ah
;    INT 21H
;    MOV BH, 0
;
;next_char:
;    INC BL
;    LOOP print_char 

;Task-06

;START:
;    MOV AH, 9
;    LEA DX, msg1
;    INT 21H
;
;    MOV AH, 1
;    INT 21H
;    MOV BL, AL
;
;    CMP BL, '0'
;    JL ILLEGAL
;    CMP BL, '9'
;    JLE DIGIT
;
;    CMP BL, 'A'
;    JL ILLEGAL
;    CMP BL, 'F'
;    JG ILLEGAL
;
;HEX_LETTER:
;    MOV AH, 9
;    LEA DX, msg2
;    INT 21H
;
;    MOV AH, 2
;    MOV DL, '1'
;    INT 21H
;
;    SUB BL, 11H
;    MOV DL, BL
;    INT 21H
;    JMP REPEAT
;
;DIGIT:
;    MOV AH, 9
;    LEA DX, msg2
;    INT 21H
;
;    MOV AH, 2
;    MOV DL, BL
;    INT 21H
;    JMP REPEAT
;
;ILLEGAL:
;    MOV AH, 9
;    LEA DX, msg4
;    INT 21H
;
;REPEAT:
;    MOV AH, 9
;    LEA DX, msg3
;    INT 21H
;
;    MOV AH, 1
;    INT 21H
;
;    CMP AL, 'y'
;    JE START
;    CMP AL, 'Y'
;    JE START

;Task-08
;    MOV AX, 1
;    MOV BX, 1
;    
;    
;start1:
;    CMP AX, 101
;    JE EXIT
;        
;    CMP BX, 6
;    JE start2
;    
;    ADD a, AX
;    
;    INC AX
;    INC BX
;    JMP start1
;
;start2:
;    ADD b, AX
;    INC AX
;    
;    MOV BX, 1
;    JMP start1
    
;Task-09
;    mov ah, 1
;    int 21h
;    sub al, 030h
;    mov cl, al
;    
;    mov bh, 1 
;    mov bl, 1
;
;outerLoop:
;    cmp bh, cl
;    jg exit 
;    
;    inc bh
;    mov bl, 1
;    
;    mov dl, 0Ah
;    mov ah, 2
;    int 21h
;    
;    mov dl, 0Dh
;    mov ah, 2
;    int 21h
;    
;    jmp innerLoop
;
;innerLoop:
;    cmp bl, bh
;    je outerLoop
;    
;    mov dl, bl
;    add dl, 030h
;    mov ah, 2
;    int 21h
;            
;    inc bl    
;    jmp innerLoop        
    
    
;exit to DOS
EXIT:               
    MOV AX,4C00H
    INT 21H
    
    MAIN ENDP
        END MAIN
