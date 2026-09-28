.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
str1 DB "X > Y$"
str2 DB "X < Y$"
str3 DB "X == Y$"
even DB "The number is even$"
odd DB "The number is odd$"
newLine DB 0Ah, 0Dh, "$"

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
;;Take two input and check if first input is greater or lesser or equal
;;X input
;MOV AH, 1
;INT 21H
;SUB AL, 30H
;
;MOV BL, AL
;
;;Y input
;MOV AH, 1
;INT 21H
;SUB AL, 30H
;
;;BRANCHING
;CMP BL, AL
;JG GREATER
;JL LESSER
;JE EQUAL
;
;;Output
;GREATER:
;    LEA DX, str1
;    MOV AH, 9
;    INT 21H
;    JMP EXIT
;LESSER:
;    LEA DX, str2
;    MOV AH, 9
;    INT 21H
;    JMP EXIT
;EQUAL:
;    LEA DX, str3
;    MOV AH, 9
;    INT 21H
;    JMP EXIT


;;Take one input from user check if it is even or odd
;    MOV AH, 1
;    INT 21H
;    SUB AL, 030h
;    MOV BL, AL
;    
;    MOV DL, 0Ah
;    MOV AH, 2
;    INT 21H
;    
;    MOV DL, 0Dh
;    MOV AH, 2
;    INT 21H
;    
;    MOV AX, 0            
;    MOV AL, BL
;    MOV BL, 2
;    DIV BL
;    
;    CMP AH, 1
;    JE oddNumber
;    JNE evenNumber
;
;oddNumber:
;    LEA DX, odd
;    MOV AH, 9
;    INT 21H
;    JMP EXIT
;
;evenNumber:
;    LEA DX, even
;    MOV AH, 9
;    INT 21H
;    JMP EXIT                   

;Write a program to print 0 to 4 (Explicit Loop)
;    MOV DL, 030h  
;start:
;    CMP DL, 035H
;    JE EXIT
;    
;    MOV AH, 2
;    INT 21H
;    
;    
;    INC DL
;    JMP start

;Write a program to print 0 to 4 (Implicit Loop)
;    MOV DL, 030h
;    MOV AH, 2
;    MOV CX, 5
;start:
;    INT 21H
;    
;    INC DL
;
;LOOP start

;take input from the user and print them until a space is pressed.
;start:
;    MOV AH, 1
;    INT 21H
;    MOV BL, AL
;    
;    MOV DL, BL
;    MOV AH, 2
;    INT 21H    
;    
;    CMP BL, ' '
;    JNE start
    
; 2+4+...+78 (Implicit Loop)
;    MOV AX, 2
;    MOV BX, 2
;    MOV CX, 39
;start:
;    ADD BX, BX
;    ADD BX, 2
;
;LOOP start
    
; 2+4+...+78 (Explicit Loop)        
;    MOV AX, 2
;    MOV BX, 2
;    MOV CX, 38
;start:
;    CMP CX, 0
;    JLE EXIT
;    
;    ADD AX, 2
;    ADD BX, AX
;    
;    DEC CX
;    JMP start         

;Print a to e using loop in newLine
;    MOV CX, 5
;    MOV BL, 'a'
;start:
;    MOV AH, 2
;    MOV DL, BL
;    INT 21H
;
;    MOV AH, 9
;    LEA DX, newLine
;    INT 21H
;
;    INC BL
;LOOP start       

            
;exit to DOS
EXIT:               
    MOV AX,4C00H
    INT 21H
    
    MAIN ENDP
        END MAIN
