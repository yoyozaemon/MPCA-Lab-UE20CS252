.data

A: .WORD 10,20,30,40,50,60,70,80,90,10
B: .WORD 0,0,0,0,0,0,0,0,0,0

.text

LDR r0, =A 
LDR r1, =B 
MOV r2, #10
loop:
	LDR r3, [r0]
	STR r3, [r1] 
	SUB r2, r2, #1 
	ADD r0, r0, #2 
	ADD r1, r1, #2 
	CMP r2, #0
	BNE loop

.end
