.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
task1 DB "Please insert a character: $"
task2a DB "Please enter the first number: $"
task2b DB "Please enter the second number: $"
task2c DB "Your answer is: $"   
task3 DB "Please insert a character: $"
task4 DB "Please insert an uppercase character: $"
task5a DB "?$"
task5b DB "The sum of the numbers are: $"
task6 DB "ENTER THREE INITIALS: $"
task7a DB "ENTER A HEX DIGIT: $"
task7b DB "IN DECIMAL IT IS $"
task8 DB "**********", 0Ah, 0Dh
      DB "**********", 0Ah, 0Dh
      DB "**********", 0Ah, 0Dh
      DB "**********", 0Ah, 0Dh
      DB "**********", 0Ah, 0Dh
      DB "**********", 0Ah, 0Dh
      DB "**********", 0Ah, 0Dh
      DB "**********", 0Ah, 0Dh
      DB "**********", 0Ah, 0Dh
      DB "**********$"
task9a DB "Enter the first number: $"
task9b DB "Enter the second number: $"


.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;Task 1
;LEA DX, task1
;MOV AH, 9
;INT 21H
;
;MOV AH, 1
;INT 21H
;
;MOV DL, AL
;MOV AH, 2
;INT 21H

; Task 2
;LEA DX, task2a
;MOV AH, 9
;INT 21H
;
;MOV AH, 1
;INT 21H
;SUB AL, 030h
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
;LEA DX, task2b
;MOV AH, 9
;INT 21H
;
;MOV AH, 1
;INT 21H
;SUB AL, 030h
;
;ADD BL, AL 
;
;MOV DL, 0Ah
;MOV AH, 2
;INT 21H
;
;MOV DL, 0Dh
;MOV AH, 2
;INT 21H
;
;LEA DX, task2c
;MOV AH, 9
;INT 21H
;
;
;MOV DL, BL
;ADD DL, 030h
;MOV AH, 2
;INT 21H

;Task 3
;LEA DX, task3
;MOV AH, 9
;INT 21H
;
;MOV AH, 1
;INT 21H
;
;MOV DL, AL
;MOV AH, 2
;INT 21H

;Task 4
;LEA DX, task4
;MOV AH, 9
;INT 21H
;
;MOV AH, 1
;INT 21H
;
;ADD AL, 020H
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

;Task 5
;LEA DX, task5a
;MOV AH, 9
;INT 21H
;
;MOV AH, 1
;INT 21H
;SUB AL, 030H
;MOV BL, AL
;
;MOV AH, 1
;INT 21H
;SUB AL, 030H
;
;ADD BL, AL
;
;MOV DL, 0Ah
;MOV AH, 2
;INT 21H
;
;MOV DL, 0Dh
;MOV AH, 2
;INT 21H
;
;LEA DX, task5b
;MOV AH, 9
;INT 21H   
;
;MOV DL, BL
;ADD DL, 030H
;MOV AH, 2
;INT 21H

;Task 6
;LEA DX, task6
;MOV AH, 9
;INT 21H
;
;MOV AH, 1
;INT 21H
;MOV BL, AL
;
;MOV AH, 1
;INT 21H
;MOV CL, AL
;
;MOV AH, 1
;INT 21H
;MOV BH, AL
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
;
;MOV DL, 0Ah
;MOV AH, 2
;INT 21H
;
;MOV DL, 0Dh
;MOV AH, 2
;INT 21H
;
;MOV DL, CL
;MOV AH, 2
;INT 21H
;
;MOV DL, 0Ah
;MOV AH, 2
;INT 21H
;
;MOV DL, 0Dh
;MOV AH, 2
;INT 21H
;
;MOV DL, BH
;MOV AH, 2
;INT 21H

;Task 7
;LEA DX, task7a
;MOV AH, 9
;INT 21H
;
;MOV AH, 1
;INT 21H
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
;LEA DX, task7b
;MOV AH, 9
;INT 21H
;
;MOV DL, '1'
;MOV AH, 2
;INT 21H
;
;SUB BL, 011H
;
;MOV DL, BL
;MOV AH, 2
;INT 21H

;Task 8
;LEA DX, task8
;MOV AH, 9
;INT 21H 

;Task 9
;LEA DX, task9a
;MOV AH, 9
;INT 21H
;
;MOV AH, 1
;INT 21H
;SUB AL, 030H
;MOV BL, AL
;
;MOV AL, 10
;MUL BL
;
;MOV BL, AL
;
;MOV AH, 1
;INT 21H
;SUB AL, 030H
;ADD BL, AL
;
;MOV DL, 0Ah
;MOV AH, 2
;INT 21H
;
;MOV DL, 0Dh
;MOV AH, 2
;INT 21H
;
;LEA DX, task9b
;MOV AH, 9
;INT 21H
;
;MOV AH, 1
;INT 21H
;SUB AL, 030H
;MOV CL, AL
;
;MOV AL, 10
;MUL CL
;
;MOV CL, AL
;
;MOV AH, 1
;INT 21H
;SUB AL, 030H
;
;ADD CL, AL
;
;ADD CL, BL
;
;MOV DL, 0Ah
;MOV AH, 2
;INT 21H
;
;MOV DL, 0Dh
;MOV AH, 2
;INT 21H
;
;
;
;MOV AX, 0
;
;MOV AL, CL
;MOV BL, 10
;
;DIV BL
;
;MOV BL, AL
;MOV BH, AH
;
;MOV DL, BL
;ADD DL, 030H
;MOV AH, 2
;INT 21H
;
;MOV DL, BH
;ADD DL, 030H
;MOV AH, 2
;INT 21H

;Task 10
;MOV AL, 080h
;MOV BL, 080h
;
;ADD AL, BL


;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
