.DATA
A: .WORD 1,2,3,4
SUM: .WORD 0
.TEXT
MOV R2,#0 
LDR R1,=A
LDR R3,=SUM
MOV R5,#4
MOV R7,#0
LOOP: LDR R4,[R1],#4
ADD R7,R7,#1
ADD R2, R2, R4
CMP R7,#5
BNE LOOP
STR R2,[R3]
SWI 0X011
