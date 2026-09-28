.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;Take two inputs and show the added values
       
; Take first input
MOV AH, 1
INT 21h
SUB AL, 30h

MOV CL, AL

; New Line
MOV DL, 0Ah
MOV AH, 2
INT 21h

; Carriage Return
MOV DL, 0Dh
MOV AH, 2
INT 21h

; Take second input
MOV AH, 1
INT 21h
SUB AL, 30h

ADD CL, AL

; New Line
MOV DL, 0Ah
MOV AH, 2
INT 21h

; Carriage Return
MOV DL, 0Dh
MOV AH, 2
INT 21h

MOV DL, CL
ADD DL, 30h            
MOV AH, 2
INT 21h

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
