.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
a DW 10
b DW 20
c DW 0
d DW 5

.CODE
MAIN PROC    

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;Task-01
;MOV AX, a
;MOV BX, AX

;Task-02
;MOV AX, a
;MOV BX, b
;MOV CX, AX
;MOV AX, BX
;MOV BX, CX

;Task-03
;MOV AX, a
;MOV BX, b
;ADD AX, BX

;Task-04
;MOV AX, a
;MOV BX, b
;SUB AX, BX 

;Task-05
;MOV AX, a
;MOV BX, b
;ADD AX, BX
;SUB BX, AX
;NEG BX
;SUB AX, BX

;Task-06 (1)
;MOV AX, a
;MOV BX, b
;SUB BX, AX
;SUB AX, AX
;ADD AX, BX 

;Task-06 (2)
;MOV AX, a
;ADD AX, 1
;NEG AX

;Task-06 (3)
;MOV AX, a
;MOV BX, b
;MOV CX, c
;INC BX
;ADD AX, BX
;ADD CX, AX

;Task-06 (4)
;MOV AX, a
;MOV BX, b
;DEC AX
;SUB BX, AX
;MOV AX, c
;ADD AX, BX

;Task-07 (1)
;MOV AX, a
;MOV BX, b
;MUL BX

;Task-07 (2)
;MOV AX, b
;MOV BX, a
;DIV BX

;Task-07 (3)
;MOV AX, a ; X = 10
;MOV BX, b ; Y = 20
;MOV CX, d ; Z = 5
;MUL BX
;DIV CX

;Task-08 (1)
;MOV AX, 036DFh
;MOV BX, 0AFh
;MUL BX

;Task-08 (2)
;MOV AX, 0F4D5h
;MOV BX, 0C9A5h
;DIV BX

;Task-08 (3)
;MOV AX, 0CA92h
;MOV BX, 0BAF9h
;MUL BX

;Task-08 (4)
;MOV AX, 0C2A2h
;MOV BX, 0ABCDh
;MOV CX, 0BEDh
;MUL BX
;DIV CX

;Task-09   

;General Register to General Register
;MOV AX, BX
;MOV CX, DX

;Segment Register to General Register
;MOV AX, DS
;MOV BX, ES

;Memory Location to General Register
;MOV AX, a           
;MOV CX, [0100h]     

;Constant to General Register
;MOV AX, 15
;MOV BX, 0A2h

;General Register to Segment Register
;MOV DS, AX
;MOV ES, CX

;Memory Location to Segment Register
;MOV DS, a
;MOV ES, [0100h]

;General Register to Memory Location
;MOV a, AX
;MOV [0100h], CX

;Segment Register to Memory Location
;MOV a, DS
;MOV [0100h], ES

;Constant to Memory Location
;MOV a, 10           
;MOV b, 20h

;Task-10

;ADD
;General Register to General Register
;ADD AX, BX
;ADD CX, DX

;Memory Location to General Register
;ADD AX, a
;ADD BX, [0100h]

;Constant to General Register
;ADD AX, 5
;ADD CX, 0Fh

;General Register to Memory Location
;ADD a, AX
;ADD [0100h], BX

;Constant to Memory Location
;ADD a, 10
;ADD b, 5h

;SUB
;General Register to General Register
;SUB AX, BX
;SUB CX, DX

;Memory Location to General Register
;SUB AX, a
;SUB BX, [0100h]

;Constant to General Register
;SUB AX, 5
;SUB CX, 0Fh

;General Register to Memory Location
;SUB a, AX
;SUB [0100h], BX

;Constant to Memory Location
;SUB a, 10
;SUB b, 5h

;Task-11
;MOV AX, 1
;ADD AX, 2
;MOV BX, 3
;SUB BX, 1
;MUL BX
;MOV CX, 5
;DIV CX
;ADD AX, 3
;ADD AX, 2
;MOV CX, 0
;MOV CX, AX
;MOV AX, 2
;MOV BX, 1
;MUL BX
;SUB CX, AX

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
