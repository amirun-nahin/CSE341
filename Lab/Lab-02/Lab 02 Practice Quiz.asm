.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
var1 DB "Course 1 marks: $"
var2 DB "Course 2 marks: $"
var3 DB "Course 3 marks: $"
strSum DB 0Ah, 0Dh, 0Ah, 0Dh, "Sum: $"
strAvg DB 0Ah, 0Dh, 0Ah, 0Dh, "Average: $" 

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;task-01
;MOV AH, 1
;INT 21H
;
;SUB AL, 020h
;MOV BL, AL
;
;MOV DL, 0Ah
;MOV AH, 2
;INT 21H
;
;MOV DL, 0Dh
;MOV AH, 2
;INT 21H
;
;MOV DL, BL
;MOV AH, 2
;INT 21H

;Task-02
LEA DX, var1
MOV AH, 9
INT 21H

MOV AH, 1
INT 21H
SUB AL, 30H
MOV BL, AL
MOV AL, 10
MUL BL
MOV BL, AL

MOV AH, 1
INT 21H
SUB AL, 30H      
ADD BL, AL

MOV DL, 0Ah
MOV AH, 2
INT 21H

MOV DL, 0Dh
MOV AH, 2
INT 21H

LEA DX, var2
MOV AH, 9
INT 21H

MOV AH, 1
INT 21H
SUB AL, 30H
MOV BH, AL
MOV AL, 10
MUL BH
MOV BH, AL

MOV AH, 1
INT 21H
SUB AL, 30H
ADD BH, AL

MOV DL, 0Ah
MOV AH, 2
INT 21H

MOV DL, 0Dh
MOV AH, 2
INT 21H

LEA DX, var3
MOV AH, 9
INT 21H

MOV AH, 1
INT 21H
SUB AL, 30H
MOV CL, AL
MOV AL, 10
MUL CL
MOV CL, AL

MOV AH, 1
INT 21H
SUB AL, 30H
ADD CL, AL

MOV AX, 0
MOV AL, BL

MOV DH, 0        
MOV DL, BH
ADD AX, DX

MOV DL, CL       
ADD AX, DX

MOV DI, AX

LEA DX, strSum
MOV AH, 9
INT 21H

MOV AX, DI
MOV BL, 10
DIV BL
MOV DH, AH

MOV AH, 0
DIV BL

MOV BH, AL
MOV BL, AH

MOV DL, BH
ADD DL, 30H
MOV AH, 2
INT 21H

MOV DL, BL       
ADD DL, 30H
MOV AH, 2
INT 21H

MOV DL, DH
ADD DL, 30H
MOV AH, 2
INT 21H

LEA DX, strAvg
MOV AH, 9
INT 21H

MOV AX, DI
MOV BL, 3
MOV AH, 0
DIV BL

MOV AH, 0
MOV BL, 10
DIV BL
MOV DH, AH

MOV AH, 0
DIV BL

MOV BH, AL
MOV BL, AH

MOV DL, BH
ADD DL, 30H
MOV AH, 2
INT 21H

MOV DL, BL
ADD DL, 30H
MOV AH, 2
INT 21H

MOV DL, DH
ADD DL, 30H
MOV AH, 2
INT 21H

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
