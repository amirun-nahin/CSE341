.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
RESULT DW 0h

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;Task-01

;MOV DX, 000DAh
;
;MOV AX, 0451Ch
;
;MOV BX, 0F87h
;
;DIV BX
;
;SUB DX, 45
;
;MOV AX, DX
;
;MOV BX, 50
;
;MUL BX
;
;ADD AX, 62 


;Task-02
;MOV AX, 6
;MOV BX, 2
;
;ADD AX, BX
;SUB BX, AX
;NEG BX
;SUB AX, BX



 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
