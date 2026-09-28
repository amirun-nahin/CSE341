.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
temp DB "Hello World$"


.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;Take two digit inputs and show output

; Taking two inputs
MOV AH, 1
INT 21H
SUB AL, 30h
MOV BL, AL

MOV AL, 10
MUL BL
MOV BL, AL 

MOV AH, 1
INT 21h
SUB AL, 030h
ADD BL, AL

; New Line
MOV DL, 0Ah
MOV AH, 2
INT 21h

; Carriage Return
MOV AH, 2
MOV DL, 0Dh
INT 21h

; Showing outputs
MOV AX, 0
MOV AL, BL
MOV CL, 10

DIV CL ; 47/10 quotient in AL, remainder in AH


MOV BL, AL ; quotient moves to BL
MOV BH, AH ; remainder stores to CL

MOV AH, 2
ADD BL, 030h
MOV DL, BL
INT 21H

MOV AH, 2
ADD BH, 030h
MOV DL, BH
INT 21H


;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN


