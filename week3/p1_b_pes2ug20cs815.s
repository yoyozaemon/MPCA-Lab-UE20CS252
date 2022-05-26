.DATA
A: .WORD 9
B: .WORD 3
.TEXT
LDR R1,=A
LDR R2,=B
LDR R3,[R1]
LDR R4,[R2]
Loop:
Cmp R3,R4
Beq Exit
Blt Loop1
Sub R3,R3,R4
Bne Loop
Loop1:
Sub R3,R4,R3
B Loop
Exit:
Swi 0x11
