.MODEL SMALL
 
.STACK 100H

.DATA

; declare variables here
even DB "The number is even$"
odd DB "The number is odd$" 
vowel DB "The alphabet is vowel$"
consonant DB "The alphabet is consonant$"
task9 DB "The number is divided by 5 and 11$"
task10a DB "User Input: $"
task10b DB "Maximum Number is: $"
task10c DB "Minimum Number is: $"
task11 DB "User Input: $"
day1 DB 'Saturday$'
day2 DB 'Sunday$'
day3 DB 'Monday$'
day4 DB 'Tuesday$'
day5 DB 'Wednesday$'
day6 DB 'Thursday$'
day7 DB 'Friday$'
msg28 DB '28 day$'
msg30 DB '30 day$'
msg31 DB '31 day$'

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

;Task-01
;    MOV AX, -1
;    CMP AX, 0
;    JL negativeNumber
;    JMP EXIT
;
;negativeNumber:
;    MOV AX, 5
;    JMP EXIT
    
;Task-02
;    MOV AL, 034h
;    MOV BL, 035h
;    
;    CMP AL, BL
;    JL alFirst
;    JG blFirst
;
;alFirst:
;    MOV AH, 2
;    MOV DL, AL
;    INT 21H
;    JMP EXIT
;
;blFirst:
;    MOV AH, 2
;    MOV DL, BL
;    INT 21H            
;    JMP EXIT

;Task-03
;    MOV AX, 0
;    
;    CMP AX, 0
;    JE containsZero
;    JG positiveNumber
;    JL negativeNumber
;
;containsZero:
;    MOV BX, 0
;    JMP EXIT
;positiveNumber:
;    MOV BX, 1
;    JMP EXIT
;negativeNumber:
;    MOV BX, -1
;    JMP EXIT                        
 
;Task-04
;    MOV AL, 1
;    
;    CMP AL, 1
;    JE displayO
;    CMP AL, 3
;    JE displayO
;    CMP AL, 2
;    JE displayE
;    CMP AL, 4
;    JE displayE
;    JMP EXIT
;displayO:
;    MOV DL, 'o'
;    MOV AH, 2   
;    INT 21H
;    JMP EXIT    
;displayE:
;    MOV DL, 'e'
;    MOV AH, 2   
;    INT 21H
;    JMP EXIT

;Task-05
;    MOV AH, 1
;    INT 21H
;    
;    
;    CMP AL, 041h
;    JGE checkUpper
;    JMP EXIT
;    
;checkUpper:
;    CMP AL, 05Ah
;    JLE displayCharacter
;    JMP EXIT
;
;displayCharacter:
;    MOV DL, AL
;    MOV AH, 2
;    INT 21H             

;Task-06
;    MOV AH, 1
;    INT 21H
;
;    CMP AL, 'y'
;    JE display_char
;    CMP AL, 'Y'
;    JE display_char
;    JMP EXIT
;
;display_char:
;    MOV DL, AL
;    MOV AH, 2
;    INT 21H

;Task-07
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

;Task-08
;    MOV AH, 1
;    INT 21H
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
;    CMP BL, "a"          
;    JE printVowel
;    CMP BL, "e"
;    JE printVowel
;    CMP BL, "i"
;    JE printVowel
;    CMP BL, "o"
;    JE printVowel
;    CMP BL, "u"
;    JE printVowel
;    JMP printConsonant
;
;printVowel:
;    LEA DX, vowel
;    MOV AH, 9
;    INT 21H 
;    JMP EXIT
;printConsonant:
;    LEA DX, consonant
;    MOV AH, 9
;    INT 21H
;    JMP EXIT        

;Task-09
    ;MOV AH, 1
;    INT 21H
;    SUB AL, 030h
;    
;    MOV BL, AL
;    MOV AL, 10
;    MUL BL
;    MOV BL, AL
;    
;    MOV AH, 1
;    INT 21H
;    SUB AL, 030h
;    
;    ADD BL, AL
;    
;    MOV AX, 0
;    MOV AL, BL
;    MOV CL, 5
;    DIV CL
;    
;    CMP AH, 0
;    JE dividedBy5
;    JMP EXIT
;
;dividedBy5:
;    MOV AX, 0
;    MOV AL, BL
;    MOV CL, 11
;    DIV CL
;    
;    CMP AH, 0
;    JE dividedBy11
;    JMP EXIT
;dividedBy11:
;    MOV DL, 0Ah
;    MOV AH, 2  
;    INT 21H
;    
;    MOV DL, 0Dh
;    MOV AH, 2
;    INT 21H
;        
;    LEA DX, task9
;    MOV AH, 9
;    INT 21H    
;    
;    JMP EXIT  

;Task-10  
;    LEA DX, task10a
;    MOV AH, 9
;    INT 21H
;    
;    MOV AH, 1
;    INT 21H
;    SUB AL, 30h
;    MOV BL, AL
;    
;    MOV AH, 1
;    INT 21H
;    SUB AL, 30h
;    MOV CL, AL
;    
;    MOV AH, 1
;    INT 21H
;    SUB AL, 30h
;    MOV CH, AL
;    
;    MOV BH, BL
;    
;    CMP CL, BH     
;    JLE checkMax3
;    MOV BH, CL
;
;checkMax3:
;    CMP CH, BH     
;    JLE findMin
;    MOV BH, CH
;
;findMin:
;    MOV DH, BL
;
;    CMP CL, DH     
;    JGE checkMin3
;    MOV DH, CL
;
;checkMin3:
;    CMP CH, DH     
;    JGE saveResults
;    MOV DH, CH
;
;saveResults:
;    MOV BL, DH     
;
;displayResults:
;    MOV DL, 0Ah
;    MOV AH, 2
;    INT 21H
;    MOV DL, 0Dh
;    MOV AH, 2
;    INT 21H
;
;    LEA DX, task10b
;    MOV AH, 9
;    INT 21H
;    
;    MOV DL, BH
;    ADD DL, 30h
;    MOV AH, 2
;    INT 21H
;
;    MOV DL, 0Ah
;    MOV AH, 2
;    INT 21H
;    MOV DL, 0Dh
;    MOV AH, 2
;    INT 21H
;
;    LEA DX, task10c
;    MOV AH, 9
;    INT 21H
;    
;    MOV DL, BL
;    ADD DL, 30h
;    MOV AH, 2
;    INT 21H           
    
; Task-11
    ;LEA DX, task11
;    MOV AH, 9
;    INT 21H           
;    
;    MOV AH, 1
;    INT 21H
;    SUB AL, 30h
;    MOV BL, AL
;    
;    MOV AH, 1
;    INT 21H
;    SUB AL, 30h
;    MOV CL, AL
;    
;    MOV AH, 1
;    INT 21H
;    SUB AL, 30h
;    MOV CH, AL
;    
;    MOV BH, 0
;    ADD BH, BL
;    ADD BH, CL
;    CMP BH, CH
;    JLE invalidTriangle
;    
;    MOV BH, 0
;    ADD BH, CL
;    ADD BH, CH
;    CMP BH, BL
;    JLE invalidTriangle
;    
;    MOV BH, 0
;    ADD BH, CH
;    ADD BH, BL
;    CMP BH, CL
;    JLE invalidTriangle
;    
;validTriangle:
;    MOV DL, 0Ah
;    MOV AH, 2
;    INT 21H
;    MOV DL, 0Dh
;    MOV AH, 2
;    INT 21H
;    
;    MOV DL, 'Y'
;    MOV AH, 2
;    INT 21H
;    JMP EXIT
;
;invalidTriangle:
;    MOV DL, 0Ah
;    MOV AH, 2
;    INT 21H
;    MOV DL, 0Dh
;    MOV AH, 2
;    INT 21H
;    
;    MOV DL, 'N'
;    MOV AH, 2
;    INT 21H
;    JMP EXIT

;Task-12
;    MOV AH, 1
;    INT 21H
;    SUB AL, 30h
;    MOV BL, AL
;    
;    MOV DL, 0Ah
;    MOV AH, 2
;    INT 21H
;    MOV DL, 0Dh
;    MOV AH, 2
;    INT 21H
;
;    CMP BL, 3
;    JLE print_i
;    
;    CMP BL, 6
;    JLE print_k
;    
;    CMP BL, 9
;    JLE print_l
;    
;    CMP BL, 10
;    JE print_m
;    
;    JMP EXIT
;
;print_i:
;    MOV DL, 'i'
;    JMP displayOutput
;
;print_k:
;    MOV DL, 'k'
;    JMP displayOutput
;
;print_l:
;    MOV DL, 'l'
;    JMP displayOutput
;
;print_m:
;    MOV DL, 'm'
;    JMP displayOutput
;
;displayOutput:
;    MOV AH, 2
;    INT 21H

;Task-13
;    MOV AH, 1
;    INT 21H
;    SUB AL, 30h
;    MOV BL, AL
;
;    MOV DL, 0Ah
;    MOV AH, 2
;    INT 21H
;    MOV DL, 0Dh
;    MOV AH, 2
;    INT 21H
;
;    CMP BL, 1
;    JE case_1
;    
;    CMP BL, 2
;    JE case_2
;    
;    CMP BL, 3
;    JE case_3
;    
;    CMP BL, 4
;    JE case_4
;    
;    CMP BL, 5
;    JE case_5
;    
;    CMP BL, 6
;    JE case_6
;    
;    CMP BL, 7
;    JE case_7
;    
;    JMP EXIT
;
;case_1:
;    LEA DX, day1
;    JMP print_day
;
;case_2:
;    LEA DX, day2
;    JMP print_day
;
;case_3:
;    LEA DX, day3
;    JMP print_day
;
;case_4:
;    LEA DX, day4
;    JMP print_day
;
;case_5:
;    LEA DX, day5
;    JMP print_day
;
;case_6:
;    LEA DX, day6
;    JMP print_day
;
;case_7:
;    LEA DX, day7
;    JMP print_day
;
;print_day:
;    MOV AH, 9
;    INT 21H
    
;Task-14
;    MOV AH, 1
;    INT 21H
;    SUB AL, 30h
;    MOV BL, AL
;
;    MOV DL, 0Ah
;    MOV AH, 2
;    INT 21H
;    MOV DL, 0Dh
;    MOV AH, 2
;    INT 21H
;
;    CMP BL, 2
;    JE case_28
;
;    CMP BL, 4
;    JE case_30
;    CMP BL, 6
;    JE case_30
;    CMP BL, 9
;    JE case_30
;    CMP BL, 11
;    JE case_30
;
;    CMP BL, 1
;    JE case_31
;    CMP BL, 3
;    JE case_31
;    CMP BL, 5
;    JE case_31
;    CMP BL, 7
;    JE case_31
;    CMP BL, 8
;    JE case_31
;    CMP BL, 10
;    JE case_31
;    CMP BL, 12
;    JE case_31
;
;    JMP EXIT
;
;case_28:
;    LEA DX, msg28
;    JMP print_msg
;
;case_30:
;    LEA DX, msg30
;    JMP print_msg
;
;case_31:
;    LEA DX, msg31
;    JMP print_msg
;
;print_msg:
;    MOV AH, 9
;    INT 21H          

;exit to DOS
EXIT:               
    MOV AX,4C00H
    INT 21H

MAIN ENDP
    END MAIN
