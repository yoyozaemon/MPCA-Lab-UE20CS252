.data

A: .HWORD 20,40,60,80,10,30,50,70,90,15
B: .HWORD 0,0,0,0,0,0,0,0,0,0

.text

LDR r0, =A 
LDR r1, =B 
MOV r2, #10
loop:
	LDRH r3, [r0]
	STRH r3, [r1] 
	SUB r2, r2, #2 
	ADD r0, r0, #3 
	ADD r1, r1, #3 
	CMP r2, #0
	BNE loop

.end
